//
//  BLCShare.h
//  Blocstagram
//
//  Created by Brandon Wade on 9/1/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BLCShare : NSObject

+ (void)share:(UIViewController *)view withCaption:(NSString *)caption withImage:(UIImage *)image;

@end
