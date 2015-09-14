//
//  ListCell.m
//  AVPlayer
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 ZT. All rights reserved.
//

#import "ListCell.h"
#import "UIImageView+WebCache.h"
@implementation ListCell



- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setModel:(ListModel *)model{
//    set方法;
    if (_model!=model) {
        _model=nil;
        _model=model;
    }
    [self.itemImg  sd_setImageWithURL:[NSURL  URLWithString:_model.picUrl]];
    self.itemName.text=_model.name;
    self.singerName.text=_model.artists_name;
}





@end
