//
//  ATViewController.m
//  AnimationTest
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ATViewController.h"

static CGFloat const length = 50.0;
static CGFloat const margin = 10.0;

@interface ATViewController ()

@end

@implementation ATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIView *blueSquare = [[UIView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x + margin, self.view.bounds.origin.y + margin * 2, length, length)];
    blueSquare.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueSquare];
    
    // Path animation
    
    
    CGRect boundingRect = CGRectMake(0, 0, self.view.bounds.size.width - margin * 2 - length, self.view.bounds.size.height - margin * 3 - length);

    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animation];
    orbit.keyPath = @"position";
    orbit.path = CFAutorelease(CGPathCreateWithRect(boundingRect, NULL));
//    orbit.path = CFAutorelease(CGPathCreateWithEllipseInRect(boundingRect, NULL));
    orbit.duration = 4;
    orbit.additive = YES;
    orbit.repeatCount = HUGE_VALF;
    orbit.calculationMode = kCAAnimationPaced;
    orbit.rotationMode = kCAAnimationRotateAuto;

    [blueSquare.layer addAnimation:orbit forKey:@"orbit"];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
