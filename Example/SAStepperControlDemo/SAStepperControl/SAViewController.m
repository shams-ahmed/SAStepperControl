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
#pragma mark - class method
- (void)viewDidLoad {
    [super viewDidLoad];

    // init SAStepperControl & add to View.
    SAStepperControl *stepperControl = [[SAStepperControl alloc] initWithFrame:CGRectMake(self.view.center.x - 46,
                                                                                          self.view.center.y,
                                                                                          0,
                                                                                          0)];

    [self.view addSubview:stepperControl];

}


@end
