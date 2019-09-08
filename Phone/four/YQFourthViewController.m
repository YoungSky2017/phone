//
//  YQFourthViewController.m
//  Phone
//
//  Created by 杨奇 on 2019/8/26.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import "YQFourthViewController.h"
#import "NumberView.h"
#import "numberPadSupportKeyClass.h"
#import "phoneViewClass.h"

#define NumberViewHW self.view.bounds.size.width / 24
#define distanceNavigation 88
#define distanceLeftMargin 50

@interface YQFourthViewController ()
@property (nonatomic, readwrite, strong)UIView *boHaoPad11;
@end

@implementation YQFourthViewController



- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        self.view.backgroundColor = [UIColor whiteColor];
        self.tabBarItem.title = @"拨号键盘";

        NumberView *boHaoPad1 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 3, distanceNavigation + 100, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad1.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad1.numberLabel.text = @"1";
        
//        给按键添加点击事件
//        UIGestureRecognizer *tap1 = [[UIGestureRecognizer alloc] initWithTarget:boHaoPad1 action:@selector(tempFun)];
//        [boHaoPad1 addGestureRecognizer:tap1];
        
        //拨号键设置圆角样式
        CALayer *numberViewLayer1 = boHaoPad1.layer;
        [numberViewLayer1 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer1 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad1];
        _boHaoPad11 = boHaoPad1;
        
        NumberView *boHaoPad2 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 9.5, distanceNavigation + 100, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad2.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad2.numberLabel.text = @"2";
        boHaoPad2.wordlabel.text = @"A B C";
//        boHaoPad2.wordlabel.textAlignment = NSTextAlignmentCenter;
        boHaoPad2.wordlabel.font = [UIFont systemFontOfSize:12];
        //拨号键设置圆角样式
        CALayer *numberViewLayer2 = boHaoPad2.layer;
        [numberViewLayer2 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer2 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad2];

        NumberView *boHaoPad3 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 16, distanceNavigation + 100, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad3.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad3.numberLabel.text = @"3";
        boHaoPad3.wordlabel.text = @"D E F";
//        boHaoPad3.wordlabel.textAlignment = NSTextAlignmentCenter;
        boHaoPad3.wordlabel.font = [UIFont systemFontOfSize:12];
        //拨号键设置圆角样式
        CALayer *numberViewLayer3 = boHaoPad3.layer;
        [numberViewLayer3 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer3 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad3];
        
        NumberView *boHaoPad4 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 3, distanceNavigation + 100 + NumberViewHW * 6, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad4.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad4.numberLabel.text = @"4";
        boHaoPad4.wordlabel.text = @"G H I";
//        boHaoPad4.wordlabel.textAlignment = NSTextAlignmentCenter;
        boHaoPad4.wordlabel.font = [UIFont systemFontOfSize:12];
        //拨号键设置圆角样式
        CALayer *numberViewLayer4 = boHaoPad4.layer;
        [numberViewLayer4 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer4 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad4];
        
        NumberView *boHaoPad5 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 9.5, distanceNavigation + 100 + NumberViewHW * 6, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad5.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad5.numberLabel.text = @"5";
        boHaoPad5.wordlabel.text = @"J K L";
//        boHaoPad5.wordlabel.textAlignment = NSTextAlignmentCenter;
        boHaoPad5.wordlabel.font = [UIFont systemFontOfSize:12];
        //拨号键设置圆角样式
        CALayer *numberViewLayer5 = boHaoPad5.layer;
        [numberViewLayer5 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer5 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad5];
        
        NumberView *boHaoPad6 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 16, distanceNavigation + 100 + NumberViewHW * 6, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad6.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad6.numberLabel.text = @"6";
        boHaoPad6.wordlabel.text = @"M N O";
//        boHaoPad6.wordlabel.textAlignment = NSTextAlignmentCenter;
        boHaoPad6.wordlabel.font = [UIFont systemFontOfSize:12];
        //拨号键设置圆角样式
        CALayer *numberViewLayer6 = boHaoPad6.layer;
        [numberViewLayer6 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer6 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad6];
        
        NumberView *boHaoPad7 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 3, distanceNavigation + 100 + NumberViewHW * 12, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad7.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad7.numberLabel.text = @"7";
        boHaoPad7.wordlabel.text = @"P Q R S";
//        boHaoPad7.wordlabel.textAlignment = NSTextAlignmentCenter;
        boHaoPad7.wordlabel.font = [UIFont systemFontOfSize:12];
        //拨号键设置圆角样式
        CALayer *numberViewLayer7 = boHaoPad7.layer;
        [numberViewLayer7 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer7 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad7];
        
        NumberView *boHaoPad8 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 9.5, distanceNavigation + 100 + NumberViewHW * 12, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad8.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad8.numberLabel.text = @"8";
        boHaoPad8.wordlabel.text = @"T U V";
//        boHaoPad8.wordlabel.textAlignment = NSTextAlignmentCenter;
        boHaoPad8.wordlabel.font = [UIFont systemFontOfSize:12];
        //拨号键设置圆角样式
        CALayer *numberViewLayer8 = boHaoPad8.layer;
        [numberViewLayer8 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer8 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad8];
        
        NumberView *boHaoPad9 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 16, distanceNavigation + 100 + NumberViewHW * 12, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad9.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad9.numberLabel.text = @"9";
        boHaoPad9.wordlabel.text = @"W X Y Z";
//        boHaoPad9.wordlabel.textAlignment = NSTextAlignmentCenter;
        boHaoPad9.wordlabel.font = [UIFont systemFontOfSize:12];
        //拨号键设置圆角样式
        CALayer *numberViewLayer9 = boHaoPad9.layer;
        [numberViewLayer9 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer9 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad9];
        
        //*
        numberPadSupportKeyClass *boHaoPadSign1 = [[numberPadSupportKeyClass alloc] initWithFrame:CGRectMake(NumberViewHW * 3, distanceNavigation + 100 + NumberViewHW * 18, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPadSign1.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPadSign1.signLabel.text = @"111";
        CALayer *signViewLayer1 = boHaoPadSign1.layer;
        [signViewLayer1 setCornerRadius:NumberViewHW * 2.5];
        [signViewLayer1 setMasksToBounds:YES];
        [self.view addSubview:boHaoPadSign1];
        
        NumberView *boHaoPad0 = [[NumberView alloc] initWithFrame:CGRectMake(NumberViewHW * 9.5, distanceNavigation + 100 + NumberViewHW * 18, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPad0.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPad0.numberLabel.text = @"0";
        boHaoPad0.wordlabel.text = @"+";
//        boHaoPad0.wordlabel.font = [UIFont systemFontOfSize:160];
//        boHaoPad8.wordlabel.textAlignment = NSTextAlignmentCenter;
        boHaoPad0.wordlabel.font = [UIFont systemFontOfSize:12];
        //拨号键设置圆角样式
        CALayer *numberViewLayer0 = boHaoPad0.layer;
        [numberViewLayer0 setCornerRadius:NumberViewHW * 2.5];
        [numberViewLayer0 setMasksToBounds:YES];
        [self.view addSubview:boHaoPad0];
        
        //#
        numberPadSupportKeyClass *boHaoPadSign2 = [[numberPadSupportKeyClass alloc] initWithFrame:CGRectMake(NumberViewHW * 16, distanceNavigation + 100 + NumberViewHW * 18, NumberViewHW * 5, NumberViewHW * 5)];
        boHaoPadSign2.backgroundColor = [UIColor colorNamed:@"ColorCustom"];
        boHaoPadSign2.signLabel.text = @"222";
        CALayer *signViewLayer2 = boHaoPadSign2.layer;
        [signViewLayer2 setCornerRadius:NumberViewHW * 2.5];
        [signViewLayer2 setMasksToBounds:YES];
        [self.view addSubview:boHaoPadSign2];
        
        //phone
        phoneViewClass *phone = [[phoneViewClass alloc] initWithFrame:CGRectMake(NumberViewHW * 9.5, distanceNavigation + 100 + NumberViewHW * 24, NumberViewHW * 5, NumberViewHW * 5)];
        phone.backgroundColor = [UIColor colorNamed:@"ColorPhone"];
        CALayer *phoneLayer = phone.layer;
        [phoneLayer setCornerRadius:NumberViewHW * 2.5];
        [phoneLayer setMasksToBounds:YES];
        [self.view addSubview:phone];
        
    }
    return self;
}

//给按键添加点击事件方法
//- (void)tempFun {
//    _boHaoPad11.tintColor = [UIColor lightGrayColor];
//}


- (void)viewDidLoad {
    self.tabBarController.delegate = self;
    

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
