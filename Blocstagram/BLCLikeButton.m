//
//  BLCLikeButton.m
//  Blocstagram
//
//  Created by Brandon Wade on 9/8/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import "BLCLikeButton.h"
#import "BLCCircleSpinner.h"

#define kLikedStateImage @"heart-full"
#define kUnlikedStateImage @"heart-empty"

@interface BLCLikeButton ()

@property (nonatomic, strong) BLCCircleSpinner *spinnerView;

@end

@implementation BLCLikeButton

- (instancetype) init {
    self = [super init];
    
    if (self) {
        self.spinnerView = [[BLCCircleSpinner alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [self addSubview: self.spinnerView];
        
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        self.contentEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10);
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
        
        self.likeButtonState = BLCLikeStateNotLiked;
    }
    
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    self.spinnerView.frame = self.imageView.frame;
}

- (void) setLikeButtonState:(BLCLikeState)likeState {
    _likeButtonState = likeState;
    
    NSString *imageName;
    
    switch (_likeButtonState) {
        case BLCLikeStateLiked:
        
        case BLCLikeStateUnliking:
            imageName = kLikedStateImage;
            break;
            
        case BLCLikeStateNotLiked:
            
        case BLCLikeStateLiking:
            imageName = kUnlikedStateImage;
            
    }
    
    switch (_likeButtonState) {
        
        case BLCLikeStateLiking:
        case BLCLikeStateUnliking:
            self.spinnerView.hidden = NO;
            self.userInteractionEnabled = NO;
            break;
            
        case BLCLikeStateLiked:
        case BLCLikeStateNotLiked:
            self.spinnerView.hidden = YES;
            self.userInteractionEnabled = YES;
    }
    
    UIImage *image = [UIImage imageNamed:imageName];
    [self setImage: [UIImage imageNamed:imageName] forState:UIControlStateNormal];
}

@end
