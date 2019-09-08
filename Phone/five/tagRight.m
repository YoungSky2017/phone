//
//  tagRight.m
//  Phone
//
//  Created by 杨奇 on 2019/9/2.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import "tagRight.h"

@interface tagRight()

@property (nonatomic, strong, readwrite)UILabel *labelTop;
@property (nonatomic, strong, readwrite)UILabel *labelBottom;

@end

@implementation tagRight

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:({
            _labelTop.backgroundColor = [UIColor brownColor];
            _labelTop = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 10)];
            _labelTop.text = @"上午 7:40";
            _labelTop;
        })];
        [self addSubview:({
            _labelBottom.backgroundColor = [UIColor blueColor];
            _labelBottom = [[UILabel alloc] initWithFrame:CGRectMake(0, 13, 20, 10)];
            _labelBottom.text = @"上午 7:40";
            _labelBottom;
        })];
    }
    return self;
}

@end
