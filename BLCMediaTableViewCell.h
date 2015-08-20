//
//  BLCMediaTableViewCell.h
//  Blocstagram
//
//  Created by Brandon Wade on 8/6/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BLCMedia;

@interface BLCMediaTableViewCell : UITableViewCell

@property (nonatomic, strong) BLCMedia *mediaItem;

+ (CGFloat) heightForMediaItem: (BLCMedia *)mediaItem width:(CGFloat)width;

@end
