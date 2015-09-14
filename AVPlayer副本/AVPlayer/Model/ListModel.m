//
//  ListModel.m
//  AVPlayer
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 ZT. All rights reserved.
//

#import "ListModel.h"

@implementation ListModel

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqualToString:@"id"]) {
        self.ID=value;
    }else{
        NSLog(@"kvc错误");
    }
}




@end
