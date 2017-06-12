//
//  ViewController.m
//  for循环创建按钮和点击选择事件
//
//  Created by owen on 16/3/24.
//  Copyright © 2016年 owen. All rights reserved.
//

#import "ViewController.h"
#import "AddViewController.h"
#import "SubViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
}


/**
 for循环递增创建按钮

 @param sender <#sender description#>
 */
- (IBAction)addButton:(id)sender {
    
    AddViewController *addVc = [[AddViewController alloc]init];
    [self.navigationController pushViewController:addVc animated:YES];
}



/**
 for循环递减创建按钮

 @param sender <#sender description#>
 */
- (IBAction)subButton:(id)sender {
    
    SubViewController *subVc = [[SubViewController alloc]init];
    [self.navigationController pushViewController:subVc animated:YES];
}



@end
