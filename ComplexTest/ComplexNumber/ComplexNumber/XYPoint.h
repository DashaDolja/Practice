//
//  XYPoint.h
//  ComplexNumber
//
//  Created by Dasha on 22.06.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject
@property float x, y;

- (void) setX: (float) xVal AndY: (float) yVal;
- (void) print;

@end
