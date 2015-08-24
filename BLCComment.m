//
//  BLCComment.m
//  Blocstagram
//
//  Created by Brandon Wade on 8/6/15.
//  Copyright (c) 2015 Brandon Wade. All rights reserved.
//

#import "BLCComment.h"
#import "BLCUSer.h"

@implementation BLCComment

- (instancetype) initWithDictionary:(NSDictionary *)commentDictionary {
    
    self = [super init];
    
    if(self) {
        self.idNumber = commentDictionary[@"id"];
        self.text = commentDictionary[@"text"];
        self.from = [[BLCUser alloc] initWithDictionary:commentDictionary[@"from"]];
                                      
    }
    
    return self;
}

@end
