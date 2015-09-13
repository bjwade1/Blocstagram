//
//  BLCLikeButton.h
//  Blocstagram
//
//  Created by Brandon Wade on 9/8/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, BLCLikeState){
    BLCLikeStateNotLiked            = 0,
    BLCLikeStateLiking              = 1,
    BLCLikeStateLiked               = 2,
    BLCLikeStateUnliking            = 3
};

@interface BLCLikeButton : UIButton

@property (nonatomic, assign) BLCLikeState likeButtonState; //Current state of like button. Set to 0

@end
