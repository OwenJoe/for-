//
//  AddViewController.m
//  for循环创建按钮和点击选择事件
//
//  Created by imac on 2017/6/12.
//  Copyright © 2017年 owen. All rights reserved.
//

#import "AddViewController.h"
#define Start_X 10.0f           // 第一个按钮的X坐标
#define Start_Y 84.0f           // 第一个按钮的Y坐标
#define Width_Space 5.0f        // 2个按钮之间的横间距
#define Height_Space 20.0f      // 竖间距
#define Button_Height 122.0f    // 高
#define Button_Width 75.0f      // 宽
@interface AddViewController ()
@property(nonatomic,strong)UIButton *fBtn;
@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"递增创建";
     [self initButtonMethod];
}

#pragma mark -- for循环创建按钮
-(void)initButtonMethod
{
    for (int i = 0 ; i < 6; i++) {
        NSInteger index = i % 3;
        NSInteger page = i / 3;
        
        // 圆角按钮
        UIButton *aBt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        aBt.frame = CGRectMake(index * (Button_Width + Width_Space) + Start_X, page  * (Button_Height + Height_Space)+Start_Y, Button_Width, Button_Height);
        
//         x = 排数*(宽+排距)+第一个横坐标;
//         y = 列数*(高+列距)+第一个纵坐标;
//
//        
        
        //tag标记值
        aBt.tag = i;
        //文字
        NSMutableArray *arry = [[NSMutableArray alloc]initWithObjects:@"四川",@"广东",@"河南",@"东莞",@"湖北",@"黑龙江",@"吉林" ,nil];
        [aBt setTitle:arry[i] forState:UIControlStateNormal];
        
        //默认第一个选中
        if (aBt.tag == 0) {
            
            aBt.backgroundColor = [UIColor orangeColor];
            [aBt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            //定义第一个按钮sender是已经被选中
            _fBtn = aBt;
        }
        else{
            
            aBt.backgroundColor = [UIColor blackColor];
            [aBt setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }
        
        [aBt addTarget:self action:@selector(btnClickMethod:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:aBt];
    }
}

#pragma mark -- 按钮点击事件
-(void)btnClickMethod:(UIButton *)sender{
    
    NSLog(@"点击时间按钮:%ld",(long)[sender tag]);
    
    //点击的和上次是一样的
    if(_fBtn == sender) {
        
        //        //不做处理
        
        
    } else{
        
        sender.backgroundColor = [UIColor orangeColor];
        [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        _fBtn.backgroundColor = [UIColor blackColor];
        [_fBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    
    _fBtn = sender;
    
}


@end
