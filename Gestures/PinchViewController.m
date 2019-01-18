//
//  PinchViewController.m
//  Gestures
//
//  Created by Kamal Maged on 2019-01-17.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@end

@implementation PinchViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake((CGRectGetMidX(self.view.bounds) - (width / 2)), (CGRectGetMidY(self.view.bounds) - (height / 2)), width, height);
    
    UIView * view = [[UIView alloc]initWithFrame:frame];
    [self.view addSubview:view];
    
    view.backgroundColor = [UIColor purpleColor];
    
    UIPinchGestureRecognizer * pinchGesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(viewPinched:)];
    [view addGestureRecognizer:pinchGesture];
    
}

- (void) viewPinched: (UIPinchGestureRecognizer *) sender {
    CGFloat scale = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);
    
}
@end
