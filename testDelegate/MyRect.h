//
//  MyRect.h
//  testDelegate
//
//  Created by Dmitry Bilienko on 19.04.16.
//  Copyright © 2016 Dmitry Bilienko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MyRectDelegate
@required
-(void)addCalculatedView:(CGRect)rect;


@optional
@end


@interface MyRect : NSObject


@property (weak, nonatomic) id<MyRectDelegate>delegate;
-(void)calculateTheAreaForPoint:(CGPoint)point;

@end
