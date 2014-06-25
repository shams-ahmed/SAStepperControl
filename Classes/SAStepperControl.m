//
//  SAStepperControl.m
//  SAStepperControl
//
//  Created by Shams on 06/05/2014.
//  Copyright (c) 2014 SA. All rights reserved.
//

#import "SAStepperControl.h"

@interface SAStepperControl ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation SAStepperControl

#pragma mark -
#pragma mark - class method
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupLabel];
        
    }
    
    return self;
}

- (void)awakeFromNib {
    [self setupLabel];
    
}


#pragma mark - Setup
- (void)setupLabel {
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                           0,
                                                           30,
                                                           CGRectGetHeight(self.frame))];
    
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.textColor = self.tintColor;
    self.label.adjustsFontSizeToFitWidth = YES;
    
    [self setDividerImage:[self imageFromView:self.label] forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal];
    
}


#pragma mark - UIStepperControl
- (UIImage *)dividerImageForLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState {
    if (self.value == 0) {
        UIView *dividerContainer = [[UIView alloc] initWithFrame:CGRectMake(14,
                                                                            0,
                                                                            2,
                                                                            29)];
        
        dividerContainer.alpha = 0.5;
        dividerContainer.backgroundColor = self.tintColor;
        
        for (UIView *view in self.label.subviews) {
            [view removeFromSuperview];
            
        }
        
        self.label.text = nil;
        [self.label addSubview:dividerContainer];
        
        return [self imageFromView:self.label];
    }
    
    for (UIView *view in self.label.subviews) {
        [view removeFromSuperview];
        
    }
    
    self.label.text = [NSNumber numberWithDouble:self.value].stringValue;

    return [self imageFromView:self.label];
}

- (void)tintColorDidChange {
    [super tintColorDidChange];
    self.label.textColor = self.tintColor;

    [self setDividerImage:[self imageFromView:self.label] forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal];

}


#pragma mark - UIImage
- (UIImage *)imageFromView:(UIView *)view {
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0);
    
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();

    return viewImage;
}


@end
