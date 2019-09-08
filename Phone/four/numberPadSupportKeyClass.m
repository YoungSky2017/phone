//
//  numberPadSupportKeyClass.m
//  Phone
//
//  Created by 杨奇 on 2019/8/29.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import "numberPadSupportKeyClass.h"

#define NumberViewHW 17.25

@implementation numberPadSupportKeyClass

- (void)initWithSignLabel:(UILabel *)signLabel {
    self.signLabel = signLabel;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:({
            _signLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, NumberViewHW * 2, NumberViewHW * 5, NumberViewHW * 1.5)];
//            _signLabel.backgroundColor = [UIColor brownColor];
            _signLabel.font = [UIFont systemFontOfSize:35];
            _signLabel.textAlignment = NSTextAlignmentCenter;
            _signLabel;
        })];
    }
    return self;
}

@end
