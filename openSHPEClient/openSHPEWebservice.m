//
//  openSHPEWebservice.m
//  openSHPEClient
//
//  Created by Fausto Carrera on 4/2/11.
//  Copyright 2011 SHPE Inc. All rights reserved.
//
#import "openSHPEWebservice.h"


@implementation openSHPEWebservice

@synthesize connection, delegate ,dataString, errorFound, errorCode;

#pragma mark -
#pragma mark Initializer
-(id)init{
    
    if ((self = [super init]))
	{
		
        dataString = [[NSString alloc] init];
        
        NSError *error = [[NSError alloc] init];
        [self setErrorCode:error];
        [error release];
        
        [self setErrorFound:FALSE];
        
	}
    
	return self;
    
}

#pragma mark -
/* Set the URL for the request user wishes to make */
-(void)setURL: (NSURL *)url{
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    connection = [NSURLConnection connectionWithRequest:request delegate:self];
    
}

#pragma mark -
#pragma mark Connection Initiator Methods
/* Send request asynchronously */
-(void)startAsynchronously{
    [connection start];
}

/* To be implemented in the future */
-(void)startSynchronously{
    
}

#pragma mark -
#pragma mark Server Response Methods

/* Server Responded */
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
	/* every response could mean a redirect */
	[receivedData release], receivedData = nil;
    
	/* need to record the received encoding */
	// http://stackoverflow.com/questions/1409537/nsdata-to-nsstring-converstion-problem
	CFStringEncoding cfEncoding = CFStringConvertIANACharSetNameToEncoding((CFStringRef)
                                                                           [response textEncodingName]);
	encoding = CFStringConvertEncodingToNSStringEncoding(cfEncoding);
    
    /* Check for HTTP Status Code - http://www.cocoadev.com/index.pl?NSHTTPURLResponse */
    if([response respondsToSelector:@selector(statusCode)]){
        int statusCode = [(NSHTTPURLResponse *)response statusCode];
        if(statusCode >= 400){
            [self setErrorFound:TRUE];
            [self setErrorCode:[NSError errorWithDomain:@"HTTP Status - " code:statusCode userInfo:nil]];
        }
    }
    
    
}

/* Server Responded with Data */
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
	if (!receivedData)
	{
		/* Haven't received data previously, create object and begin saving */
		receivedData = [[NSMutableData alloc] initWithData:data];
	}
	else
	{
		/* Append data to previously allocated object */
		[receivedData appendData:data];
	}
}

#pragma mark -
#pragma mark Connection Result Methods - Delegate Notifiers

/* Connection successful, inspect data for error */
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	dataString = [[[NSString alloc] initWithData:receivedData encoding:encoding] autorelease];
    
    if(errorFound){
        /* errorFound flag set, error found in HTTP Header, forward to error method */
        [self connection:connection didFailWithError:errorCode];
    }
    else{
        /* Notify Delegate Finished Request */
        [[self delegate] finished];
    }
}

/* Connection unsuccessful, either no connection or HTTP Header Error */
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    
    /* Notify Delegate Request Failed */
    [[self delegate] failedWithError:error];
}

/* Accept Self-Signed Certificates - Development Only */
-(BOOL)connection:(NSURLConnection *)connection
canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)protectionSpace
{
	return [protectionSpace.authenticationMethod
			isEqualToString:NSURLAuthenticationMethodServerTrust];
}

-(void)connection:(NSURLConnection *)connection
didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	if ([challenge.protectionSpace.authenticationMethod
		 isEqualToString:NSURLAuthenticationMethodServerTrust])
	{
        NSURLCredential *credential =
        [NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust];
        [challenge.sender useCredential:credential forAuthenticationChallenge:challenge];
	}
    
	[challenge.sender continueWithoutCredentialForAuthenticationChallenge:challenge];
}


#pragma mark -
#pragma mark Cleanup
-(void)dealloc
{
	[connection cancel];
	[connection release];
    
	[receivedData release];
    
    [dataString release];
    [errorCode release];
    
	[super dealloc];
}

@end
