//
//  NumberView.h
//  Phone
//
//  Created by 杨奇 on 2019/8/28.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NumberView : UIView

//@property(nonatomic, readwrite, strong) UIView *numberView;
@property(nonatomic, readwrite, strong) UILabel *numberLabel;
@property(nonatomic, readwrite, strong) UILabel *wordlabel;

- (void)initWithnumberLabelFix: (UILabel *)numberLabelClassFun AndWordsLabelFix: (UILabel *)wordsLabelClassFun;

@end

NS_ASSUME_NONNULL_END
