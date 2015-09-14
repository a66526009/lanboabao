//
//  ListCell.h
//  AVPlayer
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 ZT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListModel.h"
@interface ListCell : UITableViewCell

@property (nonatomic,strong)ListModel *model;
@property (weak, nonatomic) IBOutlet UILabel *itemName;

@property (weak, nonatomic) IBOutlet UIImageView *itemImg;

@property (weak, nonatomic) IBOutlet UILabel *singerName;



@end
