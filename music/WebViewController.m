//
//  ViewController.m
//  music
//
//  Created by Quang Phương on 12/29/15.
//  Copyright © 2015 Quang Phương. All rights reserved.
//

#import "WebViewController.h"

@implementation WebViewController

@synthesize mainWindow;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
//    [super viewDidLoad];

    // Do any additional setup after loading the view.
    webView = [[WebView alloc] initWithFrame:[mainWindow.contentView bounds] frameName:@"main" groupName:@"main"];
    webView.UIDelegate = self;
    webView.frameLoadDelegate = self;
    webView.policyDelegate = self;
    webView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
    [mainWindow.contentView addSubview:webView];
    [self startHTMLApp];
    [self viewDidLoad];
}

//- (void)setRepresentedObject:(id)representedObject {
//    [super setRepresentedObject:representedObject];
//
//    // Update the view, if already loaded.
//}

- (void)viewDidLoad {
    NSLog(@"%@",@"Here is ViewDidLoad!");
}

- (void)startHTMLApp {
    NSString *resourcesPath = [[NSBundle mainBundle] bundlePath];
    resourcesPath = [resourcesPath stringByAppendingPathComponent:[@"Contents/Resources/html/index" stringByAppendingPathExtension:@"html"]];
    NSLog(@"%@",resourcesPath);
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:resourcesPath]];
    
    [[webView mainFrame] loadRequest:request];
}

@end
