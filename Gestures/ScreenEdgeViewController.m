//
//  ScreenEdgeViewController.m
//  Gestures
//
//  Created by Kamal Maged on 2019-01-19.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "ScreenEdgeViewController.h"

@interface ScreenEdgeViewController () <UIGestureRecognizerDelegate>
@property (nonatomic) BOOL panActive;
@end

@implementation ScreenEdgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = 500;
    CGFloat height = 300;
    
    
    CGRect frame = CGRectMake(((self.view.center.x) - (width / 2) + 100), ((self.view.center.y) - (height / 2)), width, height);
    
    UIView * view = [[UIView alloc]initWithFrame:frame];
    [self.view addSubview:view];

    view.backgroundColor = [UIColor greenColor];

        UIScreenEdgePanGestureRecognizer * swipeGesture = [[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(viewSwipped:)];
        
        swipeGesture.edges = UIRectEdgeRight;
        [view addGestureRecognizer:swipeGesture];
 
        UIPanGestureRecognizer * panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(viewPanned:)];
        [view addGestureRecognizer:panGesture];
 


}
- (void) viewSwipped: (UIScreenEdgePanGestureRecognizer *) sender {
 
            [UIView animateWithDuration:1.0 animations:^ {
                sender.view.frame = CGRectOffset(sender.view.frame, [sender translationInView:self.view].x + sender.view.center.x, 0.0);
            }];
            [sender setTranslation:CGPointZero inView:self.view];
        self.panActive = YES;
    
    
}

- (void) viewPanned: (UIScreenEdgePanGestureRecognizer *) sender {
    if (self.panActive) {
        CGPoint translationInView = [sender translationInView:self.view];
        
        sender.view.center = CGPointMake(translationInView.x + sender.view.center.x, sender.view.center.y);
        
        [sender setTranslation:CGPointZero inView:self.view];
    self.panActive = NO;
    }
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

@end
