//
//  NumberView.m
//  Phone
//
//  Created by 杨奇 on 2019/8/28.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import "NumberView.h"

#define NumberViewHW 17.25

@interface NumberView()

@end

@implementation NumberView

//自定义构造方法
- (void)initWithnumberLabelFix: (UILabel *)numberLabelClassFun AndWordsLabelFix: (UILabel *)wordsLabelClassFun {
    self.numberLabel = numberLabelClassFun;
    self.wordlabel = wordsLabelClassFun;
    
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:({
            _numberLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, NumberViewHW, NumberViewHW * 5, NumberViewHW * 2)];
            _numberLabel.backgroundColor = [UIColor clearColor];
            _numberLabel.font = [UIFont systemFontOfSize:40];
            _numberLabel.textAlignment = NSTextAlignmentCenter;
            _numberLabel;
        })];
        [self addSubview:({
            _wordlabel = [[UILabel alloc] initWithFrame:CGRectMake(0, NumberViewHW * 3, NumberViewHW * 5, NumberViewHW)];
            _wordlabel.backgroundColor = [UIColor clearColor];
            _wordlabel.textAlignment = NSTextAlignmentCenter;
            _wordlabel.font = [UIFont systemFontOfSize:60];
            _wordlabel;
        })];
    }
    return self;
}

- (void)numberLabelContent {
    _numberLabel.text = @"1";
}

@end
