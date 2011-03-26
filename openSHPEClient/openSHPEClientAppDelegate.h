//
//  openSHPEClientAppDelegate.h
//  openSHPEClient
//
//  Created by Fausto Carrera on 3/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class openSHPEClientViewController;

@interface openSHPEClientAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet openSHPEClientViewController *viewController;

@end
