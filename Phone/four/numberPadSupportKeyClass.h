//
//  numberPadSupportKeyClass.h
//  Phone
//
//  Created by 杨奇 on 2019/8/29.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface numberPadSupportKeyClass : UIView
@property(nonatomic, readwrite, strong) UILabel *signLabel;

- (void)initWithSignLabel:(UILabel *)signLabel;
@end

NS_ASSUME_NONNULL_END
