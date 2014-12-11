//
//  WebViewController.m
//  WebViewDemo
//
//  Created by Satish Chauhan on 10/12/14.
//  Copyright (c) 2014 Vinsol. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <UIWebViewDelegate>

@property (nonatomic, strong) NSMutableURLRequest *request;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.webView setDelegate:self];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    self.title = self.urlToLoad;

    if (self.urlToLoad) {
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.urlToLoad]];
        [self.webView loadRequest:request];
    }
}

@end
