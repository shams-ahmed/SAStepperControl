//
//  SAStepperControl_SAStepperControl_Image.h
//  SAStepperControl
//
//  Created by shams ahmed on 20/08/2016.
//  Copyright © 2016 SA. All rights reserved.
//

#import "SAStepperControl.h"

@interface SAStepperControl (Image)

///  Create image froma view
///
///  @param view UIView to create image
///
///  @return Image of view
- (UIImage * __nonnull)imageFromView:(UIView * __nonnull)view;

@end
