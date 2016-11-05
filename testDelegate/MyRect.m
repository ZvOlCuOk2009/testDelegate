//
//  MyRect.m
//  testDelegate
//
//  Created by Dmitry Bilienko on 19.04.16.
//  Copyright © 2016 Dmitry Bilienko. All rights reserved.
//

#import "MyRect.h"

@implementation MyRect


-(void)calculateTheAreaForPoint:(CGPoint)point{
    CGRect rect = CGRectMake(point.x, point.y, 20, 20);
    [self.delegate addCalculatedView:rect];
}

@end
