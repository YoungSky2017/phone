//
//  phoneViewClass.m
//  Phone
//
//  Created by 杨奇 on 2019/8/29.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import "phoneViewClass.h"

#define NumberViewHW 17.25

@interface phoneViewClass()
@property (nonatomic, readwrite, strong)UIImageView *phoneView;

@end

@implementation phoneViewClass


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:({
            _phoneView = [[UIImageView alloc] initWithFrame:CGRectMake(NumberViewHW, NumberViewHW, NumberViewHW * 3, NumberViewHW * 3)];
            _phoneView.backgroundColor = [UIColor clearColor];
//            _phoneView.contentMode = UIViewContentModeCenter;
            _phoneView.image = [UIImage imageNamed:@"phone"];
            _phoneView;
        })];
    }
    return self;
}

@end
