//
//  openSHPEWebservice.h
//  openSHPEClient
//
//  Created by Fausto Carrera on 4/2/11.
//  Copyright 2011 SHPE Inc. All rights reserved.
//

//
//  openSHPEWebservice.h
//  openSHPETest
//
//  Created by Fausto Carrera on 4/1/11.
//  Copyright 2011 SHPE. All rights reserved.
//  Credit: http://www.cocoanetics.com/2010/12/nsurlconnection-with-self-signed-certificates/
//  Modified by: Fausto Carrera

#import <Foundation/Foundation.h>

@protocol openSHPEWebserviceDelegate;
@interface openSHPEWebservice : NSObject {
    
@private
    NSMutableData *receivedData;
	NSURLConnection *connection;
	NSStringEncoding encoding;
    NSString *dataString;
    NSError *errorCode;
    
    BOOL errorFound;
    
    id <openSHPEWebserviceDelegate> delegate;
}

@property(nonatomic, retain) NSURLConnection *connection;
@property(nonatomic, assign) id <openSHPEWebserviceDelegate> delegate;
@property(nonatomic, retain) NSString *dataString;
@property(readwrite, assign) BOOL errorFound;
@property(nonatomic, retain) NSError *errorCode;

-(id)init;

-(void)startAsynchronously;
-(void)startSynchronously;

-(void)setURL: (NSURL *)url;

@end

@protocol openSHPEWebserviceDelegate <NSObject>

@required 

-(void)finished;
-(void)failedWithError: (NSError *) error;

@end