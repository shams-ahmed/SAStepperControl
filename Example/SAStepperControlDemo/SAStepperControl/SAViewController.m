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
#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    // Example of stepper control style
    self.view.tintColor = [UIColor redColor];
    
    // Create SAStepperControl
    SAStepperControl *stepperControl = [[SAStepperControl alloc] initWithFrame:CGRectMake(self.view.center.x - 46,
                                                                                          self.view.center.y,
                                                                                          0,
                                                                                          0)];

    [self.view addSubview:stepperControl];
}

@end
