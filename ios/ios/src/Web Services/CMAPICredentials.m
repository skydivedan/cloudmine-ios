//
//  CMAPICredentials.m
//  cloudmine-ios
//
//  Copyright (c) 2011 CloudMine, LLC. All rights reserved.
//  See LICENSE file included with SDK for details.
//

#import "CMAPICredentials.h"

@implementation CMAPICredentials
@synthesize apiKey, appKey;

+ (id)sharedInstance {
    __strong static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

@end
