//
//  UrlPromptController.m
//  SoundCleod
//
//  Created by Márton Salomváry on 2013/01/17.
//  Copyright (c) 2013 Márton Salomváry. All rights reserved.
//

#import "UrlPromptController.h"
#import "AppDelegate.h"

@implementation UrlPromptController

@synthesize mainWindow;
@synthesize urlPrompt;
@synthesize urlInput;
@synthesize urlError;
@synthesize navigateDelegate;

- (IBAction)promptForUrl:(id)sender
{
    if(urlPrompt == nil) {
        [NSBundle loadNibNamed:@"UrlPrompt" owner:self];
    }
    [NSApp beginSheet: [self urlPrompt]
       modalForWindow: [self mainWindow]
        modalDelegate: self
       didEndSelector: @selector(urlPromptDidEnd:returnCode:contextInfo:)
          contextInfo: nil];
    [urlInput becomeFirstResponder];
}

- (IBAction)closeUrlPrompt:(id)sender
{

    
    if([sender tag] == 1) {
        
    } else {
        [urlInput setStringValue:@""];
        [urlPrompt orderOut:self];
        [NSApp endSheet:urlPrompt returnCode:NSCancelButton];
    }
    
}

- (void)urlPromptDidEnd:(NSWindow *)sheet returnCode:(int)returnCode contextInfo:(void *)contextInfo
{
    if (returnCode == NSCancelButton) return;
}

@end
