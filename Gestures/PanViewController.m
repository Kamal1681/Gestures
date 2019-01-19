//
//  PanViewController.m
//  Gestures
//
//  Created by Kamal Maged on 2019-01-17.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)redViewpanned:(UIPanGestureRecognizer *)sender {
   // CGPoint locationInView = [sender locationInView:self.view];
   // sender.view.center = locationInView;
    
    CGPoint translationInView = [sender translationInView:self.view];
    CGPoint oldCenter = sender.view.center;
    sender.view.center = CGPointMake(translationInView.x + oldCenter.x, translationInView.y + oldCenter.y);
    
   [sender setTranslation:CGPointZero inView:self.view];
}


@end
