//
//  NSDictionary+UrlEncoding.h
//  openSHPETest
//
//  Created by Don Mccaughey http://blog.ablepear.com/2008/12/urlencoding-category-for-nsdictionary.html
//  Modified by Fausto Carrera

#import <Foundation/Foundation.h>


@interface NSMutableDictionary (UrlEncoding)

-(NSString*) urlEncodedString;

@end