//
//  RotationViewController.m
//  Gestures
//
//  Created by Kamal Maged on 2019-01-17.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake((CGRectGetMidX(self.view.bounds) - (width / 2)), (CGRectGetMidY(self.view.bounds) - (height / 2)), width, height);
    
    UIView * view = [[UIView alloc]initWithFrame:frame];
    [self.view addSubview:view];
    
    view.backgroundColor = [UIColor redColor];
    
    UIRotationGestureRecognizer * tapGesture = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(viewRotated:)];
    [view addGestureRecognizer:tapGesture];
}

- (void) viewRotated: (UIRotationGestureRecognizer *) sender {
    sender.view.transform = CGAffineTransformRotate(sender.view.transform, 0.1);
    
}
@end
