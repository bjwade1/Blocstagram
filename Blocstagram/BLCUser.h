//
//  BLCUser.h
//  Blocstagram
//
//  Created by Brandon Wade on 8/5/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BLCUser : NSObject

@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSURL *profilePictureURL;
@property (nonatomic, strong) UIImage *profilePicture;

-(instancetype) initWithDictionary:(NSDictionary *)userDictionary;

@end
