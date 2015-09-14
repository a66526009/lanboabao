//
//  MusicHelper.m
//  AVPlayer
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 ZT. All rights reserved.
//

#import "MusicHelper.h"
#import "ListModel.h"


@implementation MusicHelper

+(MusicHelper *)sharedhelp{
    static MusicHelper *play=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        play=[[MusicHelper alloc]init];
    });
    return play;
}

-(void)requstData:(void(^)())result{
    
//    在多线程中请求数据
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//      进入子线程进行数据请求;
      NSArray *array= [NSArray arrayWithContentsOfURL:[NSURL URLWithString:kListPlayUrl]];
//     取出数据
      for (NSDictionary *dic in array) {
//          创建一个model
          ListModel *item= [[ListModel alloc]init];
          [item setValuesForKeysWithDictionary:dic];
          [self.dataArray addObject:item];
        }
      
//      当数据在子线程中请求好时   刷新UI界面;这里调用不了刷新ui的方法所以用一个block实现;
      dispatch_async(dispatch_get_main_queue(), ^{
//          回到主线程时   它就调用上面的大block中的回调方法;
          result();
      });
      
  });
}



#pragma mark -lanzy -
-(NSMutableArray *)dataArray{
    if (_dataArray==nil) {
        _dataArray =[[NSMutableArray alloc]init];
    }
    return _dataArray;
}










@end
