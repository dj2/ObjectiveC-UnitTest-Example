//
//  UnitTestingAppDelegate.h
//  UnitTesting
//
//  Created by dan sinclair on 09-10-26.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface UnitTestingAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
