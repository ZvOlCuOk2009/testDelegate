//
//  ViewController.m
//  testDelegate
//
//  Created by Dmitry Bilienko on 19.04.16.
//  Copyright © 2016 Dmitry Bilienko. All rights reserved.
//

#import "ViewController.h"
#import "MyRect.h"

@interface ViewController () <MyRectDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MyRect *myRect = [[MyRect alloc] init];
    myRect.delegate = self;
    
    CGPoint point = CGPointMake(0, 0);
    [myRect calculateTheAreaForPoint:point];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MyRectDelegate

-(void)addCalculatedView:(CGRect)rect{
    UIView *view = [[UIView alloc] initWithFrame:rect];
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    
}
@end
