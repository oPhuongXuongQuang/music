//
//  UrlPromptController.h
//  SoundCleod
//
//  Created by Márton Salomváry on 2013/01/17.
//  Copyright (c) 2013 Márton Salomváry. All rights reserved.
//
@import AppKit;
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"


@interface UrlPromptController : NSObject

@property (assign) IBOutlet NSWindow *mainWindow;
@property (unsafe_unretained) IBOutlet NSWindow *urlPrompt;
@property (weak) IBOutlet NSTextField *urlInput;
@property (weak) IBOutlet NSTextField *urlError;
@property (retain) id navigateDelegate;

- (IBAction)promptForUrl:(id)sender;
- (IBAction)closeUrlPrompt:(id)sender;
@end
