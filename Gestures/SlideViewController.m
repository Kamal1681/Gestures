//
//  SlideViewController.m
//  Gestures
//
//  Created by Kamal Maged on 2019-01-17.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "SlideViewController.h"

@interface SlideViewController ()
@property (nonatomic) BOOL openned;

@end

@implementation SlideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = self.view.bounds.size.width;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake((self.view.frame.origin.x), (CGRectGetMidY(self.view.frame) - (height / 2)), width, height);
    
    UIView * viewBottom = [[UIView alloc]initWithFrame:frame];
    [self.view addSubview:viewBottom];
    
    viewBottom.backgroundColor = [UIColor brownColor];
    
    UIView * viewTop = [[UIView alloc]initWithFrame:frame];
    
    [self.view insertSubview:viewTop aboveSubview:viewBottom];
   
    viewTop.backgroundColor = [UIColor whiteColor];
    
    UISwipeGestureRecognizer * swipeGestureRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(viewSwipedRight:)];
    [viewTop addGestureRecognizer:swipeGestureRight];
    swipeGestureRight.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer * swipeGestureLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(viewSwipedLeft:)];
    [viewTop addGestureRecognizer:swipeGestureLeft];
    swipeGestureLeft.direction = UISwipeGestureRecognizerDirectionLeft;

}

- (void) viewSwipedRight: (UISwipeGestureRecognizer *) sender {
    if (self.openned) {
    [UIView animateWithDuration:0.5 animations:^{
        
        sender.view.frame = CGRectOffset(sender.view.frame, 150.0, 0.0);
        
    }];
        self.openned = NO;
    }
}


- (void) viewSwipedLeft: (UISwipeGestureRecognizer *) sender {
    if (!self.openned) {
    [UIView animateWithDuration:0.5 animations:^{
        
        sender.view.frame = CGRectOffset(sender.view.frame, -150.0, 0.0);
    
    }];
        self.openned = YES;
    }
}


@end
