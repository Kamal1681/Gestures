//
//  SlideViewController.m
//  Gestures
//
//  Created by Kamal Maged on 2019-01-17.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "SlideViewController.h"

@interface SlideViewController () 

@end

@implementation SlideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = self.view.center.x * 2;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake((self.view.bounds.origin.x), (CGRectGetMidY(self.view.bounds) - (height / 2)), width, height);
    
    UIView * viewBottom = [[UIView alloc]initWithFrame:frame];
    [self.view addSubview:viewBottom];
    
    viewBottom.backgroundColor = [UIColor brownColor];
    
    
    
    UIView * viewTop = [[UIView alloc]initWithFrame:frame];
    [self.view addSubview:viewTop];
    viewTop.clipsToBounds = YES;
    viewTop.backgroundColor = [UIColor whiteColor];
    
    UISwipeGestureRecognizer * swipeGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(viewSwiped:)];
    [viewTop addGestureRecognizer:swipeGesture];
}

- (void) viewSwiped: (UISwipeGestureRecognizer *) sender {
    
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionRight:
            sender.view.transform = CGAffineTransformTranslate(sender.view.transform, -200, 0);
            break;
        case UISwipeGestureRecognizerDirectionLeft:
            sender.view.transform = CGAffineTransformTranslate(sender.view.transform, 200, 0);
            break;
        default:
            break;
    }
}


@end
