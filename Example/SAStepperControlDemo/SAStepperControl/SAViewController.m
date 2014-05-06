//
//  SAViewController.m
//  SAStepperControl
//
//  Created by Shams on 06/05/2014.
//  Copyright (c) 2014 SA. All rights reserved.
//

#import "SAViewController.h"
#import "SAStepperControl.h"

@interface SAViewController ()

@end

@implementation SAViewController

#pragma mark -
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SAStepperControl *stepperControl = [[SAStepperControl alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];
    [self.view addSubview:stepperControl];
    
}


@end
