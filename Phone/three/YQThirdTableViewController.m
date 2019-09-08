//
//  YQThirdTableViewController.m
//  Phone
//
//  Created by 杨奇 on 2019/8/26.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import "YQThirdTableViewController.h"
#import "customView.h"

@interface YQThirdTableViewController ()<UITableViewDataSource>
@property (nonatomic, readwrite, assign)NSInteger *section;
@end

@implementation YQThirdTableViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
        self.tabBarItem.title = @"通讯录";
        
        UIBarButtonItem *btnGroup = [[UIBarButtonItem alloc] initWithTitle:@"群组" style:UIBarButtonItemStyleDone target:self action:nil];
        self.navigationItem.leftBarButtonItem = btnGroup;
        UIBarButtonItem *btnAdd = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
        self.navigationItem.rightBarButtonItem = btnAdd;
        self.navigationItem.title = @"通讯录";
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 7;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    self.section = section;
    if (section == 0) {
        return 1;
    }else if(section == 1) {
        return 2;
    }else {
        return 3;
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    NSArray *arrayContactName = @[@[],@[@"Apple(中国大陆)",@"Apple(中国大陆)"],@[@"冰消",@"版权所有",@"棒棒"],@[@"陈意涵",@"陈兵",@"陈丽"],@[@"冯亦凡",@"冯芬",@"凤仪"],@[@"郭晶晶",@"郭达",@"国军"],@[@"前线",@"钱一",@"钱三强"]];
    if (!cell && indexPath.section != 0) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        cell.textLabel.text = arrayContactName[indexPath.section][indexPath.row];
        
    }else{
//        NSLog(@"sec:%ld else",(long)_section);
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
        cell.imageView.image = [UIImage imageNamed:@"Qi"];
        // 设置圆角图片
        CALayer *cellImageLayer = cell.imageView.layer;
        [cellImageLayer setCornerRadius:30];
        [cellImageLayer setMasksToBounds:YES];
        
        cell.textLabel.text = @"杨奇";
        cell.textLabel.font = [UIFont boldSystemFontOfSize:22];
        cell.detailTextLabel.text = @"我的名片";
        cell.detailTextLabel.font = [UIFont systemFontOfSize:14];
        cell.detailTextLabel.textColor = [UIColor grayColor];
        
        //调整cell.imageView大小
        CGSize itemSize = CGSizeMake(60, 60);//希望显示的大小
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 80.f;
    }
    return 50.f;
}


- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSArray *arrayWords = @[@"A",@"B",@"C",@"F",@"G",@"Q"];
    if (section == 0) {
        return nil;
    }else {
        return arrayWords[section - 1];
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
