//
//  ViewController.m
//  test
//
//  Created by weida on 15/8/16.
//  Copyright (c) 2015年 weida. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    TestView *view = [[TestView alloc]init];
    view.backgroundColor = [UIColor grayColor];
    
    view.params = @{@"image":@"shang",
                        @"text":@"只有武汉、成都水平的60%。而10年前，东莞与武汉、成都经济实力相差不大。而中部湖南省会长沙，自2014年经济总量首次超过大连和沈阳后，今年上半年继续以较高的增速与后两者拉大差距。展望未来，21世纪宏观研究院认为，重庆经济有望超越京沪，而青岛、厦门、苏州等城市如果找不到新的发展模式与增长点，其经济在全国排名会继续落后。东部总体领先 西部加快赶超"};
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:50];
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:40];
    
//    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:40];
//    
//    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:40];
    
    
    [self.view addConstraints:@[top,leading]];
    
//    UILabel *lable = [[UILabel alloc]init];
//    lable.text = @"fasdfadsfjasdlfajsfsaklfj";
//    [self.view addSubview:lable];
//    lable.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    
//    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:lable attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:10];
//    
//    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:lable attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:10];
//    
//    [self.view addConstraints:@[leading,top]];
//    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
