//
//  BLCMediaFullScreenAnimator.h
//  Blocstagram
//
//  Created by Brandon Wade on 8/28/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BLCMediaFullScreenAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) BOOL presenting;

@property (nonatomic, weak) UIImageView *cellImageView;

@end
