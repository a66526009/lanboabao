//
//  MusicHelper.h
//  AVPlayer
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 ZT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicHelper : NSObject

//声明一个数组用来存放数据；
@property (nonatomic,strong)NSMutableArray *dataArray;


//声明一个单列
+(MusicHelper *)sharedhelp;
//请求数据的方法;
-(void)requstData:(void(^)())result;





@end
