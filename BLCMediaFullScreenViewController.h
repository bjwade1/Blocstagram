//
//  BLCMediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Brandon Wade on 8/26/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BLCMedia;

@interface BLCMediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

-(instancetype) initWithMedia:(BLCMedia *)media;

-(void) centerScrollView;

@end
