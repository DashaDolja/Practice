//
//  XYPoint.m
//  ComplexNumber
//
//  Created by Dasha on 22.06.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
- (void) setX: (float) xVal AndY: (float) yVal
{
    _x = xVal;
    _y = yVal;
}


- (void) print
{
    
    printf("(% .2f, % .2f)\n", self.x, self.y);
}

@end
