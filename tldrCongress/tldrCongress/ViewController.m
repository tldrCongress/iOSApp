//
//  ViewController.m
//  tldrCongress
//
//  Created by Steven Frost-Ruebling on 3/22/15.
//  Copyright (c) 2015 Carticipate, Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self loadWebPage];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}


- (void)loadWebPage {
    
    NSString *urlAddress = @"http://tldrCongress.org";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
