//
//  YQFirstTableViewController.m
//  Phone
//
//  Created by 杨奇 on 2019/8/26.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import "YQFirstTableViewController.h"
#import <QuartzCore/CALayer.h>

@interface YQFirstTableViewController ()<UITableViewDataSource>


@end

@implementation YQFirstTableViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
//        model1的tabBarItem书写
//        self.tabBarItem.title = @"个人收藏";
//        self.navigationItem.title = @"world";
//        self.navigationController.navigationBar.backgroundColor = [UIColor redColor];
        

        UIBarButtonItem *btnAdd = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
        self.navigationItem.leftBarButtonItem = btnAdd;
        
        UIBarButtonItem *btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStyleDone target:self action:nil];
        self.navigationItem.rightBarButtonItem = btnEdit;

        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tableView.scrollsToTop= NO;
    
}

#pragma mark - Table view data source

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *headerTitle = @"个人收藏";
    return headerTitle;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 80.f;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *myLabel = [[UILabel alloc] init];
    myLabel.frame = CGRectMake(20, 20, 200, 40);
    myLabel.font = [UIFont boldSystemFontOfSize:30];
    myLabel.text = [self tableView:tableView titleForHeaderInSection:section];
    
    UIView *headerView = [[UIView alloc] init];
    [headerView addSubview:myLabel];
    
    return headerView;
}
//去掉UItableview headerview黏性(sticky)
//-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    if (scrollView == self.tableView)
//    {
//        CGFloat sectionHeaderHeight = 50;  //sectionHeaderHeight
//        if (scrollView.contentOffset.y<=sectionHeaderHeight&&scrollView.contentOffset.y>=0) {
//            scrollView.contentInset = UIEdgeInsetsMake(-scrollView.contentOffset.y, 0, 0, 0);
//        } else if (scrollView.contentOffset.y>=sectionHeaderHeight) {
//            scrollView.contentInset = UIEdgeInsetsMake(-sectionHeaderHeight, 0, 0, 0);
//        }
//    }
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID;
    NSArray *arrayName = @[@"Elon Musk",@"Tim Cook",@"马化腾"];
    NSArray *arraydetail = @[@"📞 浙江 台州",@"浙江 台州 移动",@"浙江 杭州"];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
        // 设置圆角图片
        CALayer *cellImageLayer = cell.imageView.layer;
        [cellImageLayer setCornerRadius:20];
        [cellImageLayer setMasksToBounds:YES];
    }
    if (indexPath.row == 0) {
        cell.imageView.image = [UIImage imageNamed:@"Qi"];
    }else if (indexPath.row == 1) {
        cell.imageView.image = [UIImage imageNamed:@"monkey"];
    }else if (indexPath.row== 2) {
        cell.imageView.image = [UIImage imageNamed:@"mac"];
    }
    
    //调整cell.imageView大小
    CGSize itemSize = CGSizeMake(40, 40);//希望显示的大小
    UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
    [cell.imageView.image drawInRect:imageRect];
    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
//    [cell.layer setMasksToBounds:YES];
//
//    cell.layer.cornerRadius=20;
    cell.textLabel.text = [arrayName objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:18];
    cell.detailTextLabel.text = [arraydetail objectAtIndex:indexPath.row];
    cell.detailTextLabel.textColor = [UIColor grayColor];
    cell.detailTextLabel.font = [UIFont boldSystemFontOfSize:14];
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
    return cell;
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
