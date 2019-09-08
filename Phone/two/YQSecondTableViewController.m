//
//  YQSecondTableViewController.m
//  Phone
//
//  Created by 杨奇 on 2019/8/26.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import "YQSecondTableViewController.h"

@interface YQSecondTableViewController ()<UITableViewDelegate>
@property (nonatomic, readwrite, strong)UISegmentedControl *segmentControl;
@property (nonatomic,readwrite,strong)UITableViewCell *cellPro;
@property (nonatomic,readwrite,assign)NSIndexPath *indexPathPro;
@end

@implementation YQSecondTableViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
        NSArray *arraySegment = [NSArray arrayWithObjects:@"所有通话",@"未接来电", nil];
        _segmentControl = [[UISegmentedControl alloc] initWithItems:arraySegment];
        _segmentControl.selectedSegmentIndex = 0;
        self.navigationItem.titleView = _segmentControl;
        
        //添加代理
        self.tableView.delegate = self;
        UIBarButtonItem *btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStyleDone target:self action:nil];
        self.navigationItem.rightBarButtonItem = btnEdit;

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70.f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 80.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellSecondID;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellSecondID];
    NSArray *arrayName1 = @[@"马云",@"马化腾",@"刘强东",@"王健林",@"王思聪",@"134 8876 9842",@"马化腾2",@"刘强东2",@"王健林2",@"王思聪2",@"马云3",@"马化腾3",@"刘强东3",@"王健林3",@"王思聪3",@"马云4",@"马化腾4",@"刘强东4",@"王健林4",@"王思聪4"];
    NSArray *arrayDetail1 = @[@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动"];
    
    
    self.cellPro = cell;
    self.indexPathPro = indexPath;
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellSecondID];
    }
    cell.textLabel.text = [arrayName1 objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:18];
    cell.detailTextLabel.text = [arrayDetail1 objectAtIndex:indexPath.row];
    cell.detailTextLabel.textColor = [UIColor grayColor];
    cell.detailTextLabel.font = [UIFont boldSystemFontOfSize:14];
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
    
    NSArray *arrayTime = @[@"上午 10:31",@"上午 9:23",@"上午 7:25",@"上午 6:01",@"上午 5:31",@"上午 4:31",@"上午 4:23",@"上午 3:25",@"2019/08/19",@"2019/08/17",@"2019/08/09",@"2019/08/08",@"2019/08/07",@"2019/08/06",@"2019/08/05",@"2019/07/19",@"2019/06/19",@"2019/06/23",@"2019/05/19",@"2019/03/19"];
    UILabel *timeLabel = [[UILabel alloc] initWithFrame:CGRectMake((cell.frame.size.width + 210)/2, (cell.frame.size.height)/2, 100, 25)];
    timeLabel.text = [arrayTime objectAtIndex:indexPath.row];
    timeLabel.textColor = [UIColor grayColor];
    timeLabel.textAlignment = NSTextAlignmentRight;
    [cell.contentView addSubview:timeLabel];
//    if (_segmentControl.selectedSegmentIndex == 0) {
//        NSLog(@"0");
//    }else if (_segmentControl.selectedSegmentIndex == 1){
//        NSLog(@"1");
//        cell.detailTextLabel.textColor = [UIColor redColor];
//        cell.textLabel.text = [arrayName1 objectAtIndex:indexPath.row];
//        cell.textLabel.font = [UIFont boldSystemFontOfSize:18];
//        cell.detailTextLabel.text = [arrayDetail1 objectAtIndex:indexPath.row];
//        cell.detailTextLabel.textColor = [UIColor grayColor];
//        cell.detailTextLabel.font = [UIFont boldSystemFontOfSize:14];
//        cell.accessoryType = UITableViewCellAccessoryDetailButton;
//        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//
//        [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath,nil] withRowAnimation:UITableViewRowAnimationFade];
//    }
    return cell;
}

//- (void) segmentedAction:(id)sender {
//    if ([sender isKindOfClass:[UISegmentedControl class]]) {
//        UISegmentedControl * segment = sender;
//        if (segment.selectedSegmentIndex == 0) {
//            //点击换为另外的图片
//            UIImage * image = [UIImage imageNamed:@"yuan.png"];
//            [segment setImage:image forSegmentAtIndex:0];
//            //            self.view.backgroundColor = [UIColor redColor];
//        }else if (segment.selectedSegmentIndex == 1) {
//            //点击换为文字
//            [segment setTitle:@"second" forSegmentAtIndex:1];
//            //            self.view.backgroundColor = [UIColor brownColor];
//        }else if (segment.selectedSegmentIndex == 2) {
//            //            self.view.backgroundColor = [UIColor blueColor];
//        }
//    }}
- (void)switchSeg:(id)sender {
    if ([sender isKindOfClass:[UISegmentedControl class]]){
        NSLog(@"xixixi");
        NSArray *arrayName1 = @[@"马云",@"马化腾",@"刘强东",@"王健林",@"王思聪",@"134 8876 9842",@"马化腾2",@"刘强东2",@"王健林2",@"王思聪2",@"马云3",@"马化腾3",@"刘强东3",@"王健林3",@"王思聪3",@"马云4",@"马化腾4",@"刘强东4",@"王健林4",@"王思聪4"];
        NSArray *arrayDetail1 = @[@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动"];
        NSArray *arrayName2 = @[@"马云",@"王健林4",@"马化腾",@"刘强东",@"马化腾2",@"王健林",@"王思聪",@"134 8876 9842",@"刘强东3",@"刘强东2",@"王健林2",@"王思聪2",@"马云3",@"马化腾3",@"王健林3",@"王思聪3",@"马云4",@"马化腾4",@"刘强东4",@"王思聪4"];
        NSArray *arrayDetail2 = @[@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机"];
        UISegmentedControl * segment = sender;
        if (segment.selectedSegmentIndex == 0) {
            _cellPro.textLabel.text = [arrayName1 objectAtIndex:_indexPathPro.row];
            _cellPro.textLabel.font = [UIFont boldSystemFontOfSize:18];
            _cellPro.detailTextLabel.text = [arrayDetail1 objectAtIndex:_indexPathPro.row];
            _cellPro.detailTextLabel.textColor = [UIColor grayColor];
            _cellPro.detailTextLabel.font = [UIFont boldSystemFontOfSize:14];
            _cellPro.accessoryType = UITableViewCellAccessoryDetailButton;
            [self.tableView reloadData];
        }else if (segment.selectedSegmentIndex == 1) {
            _cellPro.detailTextLabel.textColor = [UIColor redColor];
            
            _cellPro.textLabel.text = [arrayName2 objectAtIndex:_indexPathPro.row];
            _cellPro.textLabel.font = [UIFont boldSystemFontOfSize:18];
            _cellPro.detailTextLabel.text = [arrayDetail2 objectAtIndex:_indexPathPro.row];
            _cellPro.detailTextLabel.textColor = [UIColor grayColor];
            _cellPro.detailTextLabel.font = [UIFont boldSystemFontOfSize:14];
            _cellPro.accessoryType = UITableViewCellAccessoryDetailButton;
            [self.tableView reloadData];
//            NSLog(@"%@",self.tableView);
        }
    }
//    NSArray *arrayName1 = @[@"马云",@"马化腾",@"刘强东",@"王健林",@"王思聪",@"134 8876 9842",@"马化腾2",@"刘强东2",@"王健林2",@"王思聪2",@"马云3",@"马化腾3",@"刘强东3",@"王健林3",@"王思聪3",@"马云4",@"马化腾4",@"刘强东4",@"王健林4",@"王思聪4"];
//    NSArray *arrayDetail1 = @[@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动"];
//    NSArray *arrayName2 = @[@"马云",@"王健林4",@"马化腾",@"刘强东",@"马化腾2",@"王健林",@"王思聪",@"134 8876 9842",@"刘强东3",@"刘强东2",@"王健林2",@"王思聪2",@"马云3",@"马化腾3",@"王健林3",@"王思聪3",@"马云4",@"马化腾4",@"刘强东4",@"王思聪4"];
//    NSArray *arrayDetail2 = @[@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机",@"浙江 台州 移动",@"手机",@"浙江 台州 移动",@"浙江 台州",@"手机"];
//    if (_segmentControl.selectedSegmentIndex == 0) {
//        NSLog(@"%@",_indexPathPro);
//        _cellPro.textLabel.text = [arrayName1 objectAtIndex:_indexPathPro.row];
//        _cellPro.textLabel.font = [UIFont boldSystemFontOfSize:18];
//        _cellPro.detailTextLabel.text = [arrayDetail1 objectAtIndex:_indexPathPro.row];
//        _cellPro.detailTextLabel.textColor = [UIColor grayColor];
//        _cellPro.detailTextLabel.font = [UIFont boldSystemFontOfSize:14];
//        _cellPro.accessoryType = UITableViewCellAccessoryDetailButton;
        //        [self.tableView reloadData];
//    }else if (_segmentControl.selectedSegmentIndex == 1) {
//        NSLog(@"%@",_indexPathPro);
//        _cellPro.detailTextLabel.textColor = [UIColor redColor];
//
//        _cellPro.textLabel.text = [arrayName2 objectAtIndex:_indexPathPro.row];
//        _cellPro.textLabel.font = [UIFont boldSystemFontOfSize:18];
//        _cellPro.detailTextLabel.text = [arrayDetail2 objectAtIndex:_indexPathPro.row];
//        _cellPro.detailTextLabel.textColor = [UIColor grayColor];
//        _cellPro.detailTextLabel.font = [UIFont boldSystemFontOfSize:14];
//        _cellPro.accessoryType = UITableViewCellAccessoryDetailButton;
//        [self.tableView reloadData];
//    }
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
