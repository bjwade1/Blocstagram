//
//  BLCLoginViewController.m
//  Blocstagram
//
//  Created by Brandon Wade on 8/19/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import "BLCLoginViewController.h"
#import "BLCDataSource.h"
#import "BLCMedia.h"
#import "BLCShare.h"

@interface BLCLoginViewController () <UIWebViewDelegate>

@property (nonatomic, strong) BLCMedia *media;

@property (nonatomic, weak) UIWebView *webView;

@end

@implementation BLCLoginViewController

NSString *const BLCLoginViewControllerDidGetAccessTokenNotification = @"BLCLoginViewControllerDidGetAccessTokenNotification";

- (NSString *) redirectURI {
    return @"http://www.bloc.io";
}

- (void) loadView {
    UIWebView *webView = [[UIWebView alloc] init];
    webView.delegate = self;
    
    self.webView = webView;
    self.view = webView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Login";

    // Do any additional setup after loading the view.
    
     NSString *urlString = [NSString stringWithFormat:@"https://instagram.com/oauth/authorize/?client_id=%@&scope=likes+comments+relationships&redirect_uri=%@&response_type=token", [BLCDataSource instagramClientID], [self redirectURI]];
    NSURL *url = [NSURL URLWithString:urlString];
    
    UIBarButtonItem *loginButton = [[UIBarButtonItem alloc] initWithTitle:@"Login" style:UIBarButtonItemStylePlain target:self action:@selector(canGoBack)];
    
    self.navigationItem.leftBarButtonItem = loginButton;
    
    if (url) {
        
         NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
    }
}

- (void) dealloc {
    
    [self clearInstagramCookies];
    
    self.webView.delegate = nil;
}

- (void) clearInstagramCookies {
    for(NSHTTPCookie *cookie in [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookies]) {
        NSRange domainRange = [cookie.domain rangeOfString:@"instagram.com"];
        if(domainRange.location != NSNotFound) {
            [[NSHTTPCookieStorage sharedHTTPCookieStorage] deleteCookie:cookie];
        }
    }
}

- (BOOL) webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
   
    NSString *urlString = request.URL.absoluteString;
    
    if ([urlString hasPrefix:[self redirectURI]]) {
        
        // This contains our auth token
        NSRange rangeOfAccessTokenParameter = [urlString rangeOfString:@"access_token="];
       
        NSUInteger indexOfTokenStarting = rangeOfAccessTokenParameter.location + rangeOfAccessTokenParameter.length;
        
        NSString *accessToken = [urlString substringFromIndex:indexOfTokenStarting];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:BLCLoginViewControllerDidGetAccessTokenNotification object:accessToken];
        
        return NO;
    }
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) canGoBack {
    
    NSString *urlString = [NSString stringWithFormat:@"https://instagram.com/oauth/authorize/?client_id=%@&redirect_uri=%@&response_type=token", [BLCDataSource instagramClientID], [self redirectURI]];
    NSURL *url = [NSURL URLWithString:urlString];
    
    if (url) {
        
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
    }
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
