//
//  ViewController.h
//  music
//
//  Created by Quang Phương on 12/29/15.
//  Copyright © 2015 Quang Phương. All rights reserved.
//
#import <WebKit/WebKit.h>
#import <Cocoa/Cocoa.h>

@interface WebViewController : NSViewController<NSApplicationDelegate,WebUIDelegate,WebFrameLoadDelegate,WebPolicyDelegate>
{
    WebView *webView;
}

@property (assign) IBOutlet NSWindow *mainWindow;
//@property (retain) IBOutlet WebView *webView;

- (void)startHTMLApp;

@end

