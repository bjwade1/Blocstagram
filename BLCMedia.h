//
//  BLCMedia.h
//  Blocstagram
//
//  Created by Brandon Wade on 8/6/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class BLCUser;

@interface BLCMedia : NSObject

@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) BLCUser *user;
@property (nonatomic, strong) NSURL *mediaURL;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *caption;
@property (nonatomic, strong) NSArray *comments;

- (instancetype) initWithDictionary:(NSDictionary *)mediaDictionary;

@end
