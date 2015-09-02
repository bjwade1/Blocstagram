//
//  BLCShare.m
//  Blocstagram
//
//  Created by Brandon Wade on 9/1/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import "BLCShare.h"

@interface BLCShare ()

@end


@implementation BLCShare

+ (void) share:(UIViewController *)view withCaption:(NSString *)caption withImage:(UIImage *)image {

    NSMutableArray *itemsToShare = [NSMutableArray array];

    if (caption.length > 0) {
        [itemsToShare addObject:caption];
    }

    if (image) {
        [itemsToShare addObject:image];
    }

    if (itemsToShare.count > 0) {
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare applicationActivities:nil];
        [view presentViewController:activityVC animated:YES completion:nil];
    }
}


@end
