//
//  TapViewController.m
//  Gestures
//
//  Created by Kamal Maged on 2019-01-17.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController
- (void) viewDidLoad {
    
    [super viewDidLoad];

    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake((CGRectGetMidX(self.view.bounds) - (width / 2)), (CGRectGetMidY(self.view.bounds) - (height / 2)), width, height);
    
    UIView * view = [[UIView alloc]initWithFrame:frame];
    [self.view addSubview:view];
    
    view.backgroundColor = [UIColor purpleColor];
    
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(viewTapped:)];
    [view addGestureRecognizer:tapGesture];

}

- (void) viewTapped: (UITapGestureRecognizer *) sender {
    
    UIColor * color = [sender.view.backgroundColor isEqual:[UIColor purpleColor]] ? [UIColor orangeColor] : [UIColor purpleColor];
    sender.view.backgroundColor = color;
}

@end
