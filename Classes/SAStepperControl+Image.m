//
//  SAStepperControl_Image.m
//  SAStepperControl
//
//  Created by shams ahmed on 20/08/2016.
//  Copyright © 2016 SA. All rights reserved.
//

#import "SAStepperControl+Image.h"

@implementation SAStepperControl (Image)

#pragma mark -
#pragma mark - UIImage

- (UIImage * __nonnull)imageFromView:(UIView * __nonnull)view {
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0);
    
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return viewImage;
}

@end
