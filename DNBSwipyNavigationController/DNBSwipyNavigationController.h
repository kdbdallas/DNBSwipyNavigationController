//
//  DNBSwipyNavigationController.h
//  DNBSwipyNavigationController
//
//  Created by Aaron Alexander on 1/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DNBSwipyNavigationController : UINavigationController <UIGestureRecognizerDelegate, UINavigationBarDelegate, UIScrollViewDelegate>

@property (nonatomic, assign, getter=nilSidesPopSides) BOOL nilSideControllersShouldPopCurrentControllers;
@property (nonatomic, assign) BOOL bounceEnabled;

@end
