//
//  Class1.m
//  Project
//
//  Created by Dasha on 17.04.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Class1.h"
@interface Rectangle: NSObject

- (void) setWeight: (int) w;
- (void) setHeight: (int) h;
- (void) print;
- (int)  weight;
- (int)  height;
- (int)  area;
- (int)  perimetr;

@end

@implementation Rectangle
{
    int weight;
    int height;
    //int area;
   // int perimetr;
}

- (void) setWeight: (int) w
{
    weight = w;
}

- (void) setHeight: (int) h
{
    height = h;
}

- (void) print
{
    NSLog (@"S = %i, P = %i", [self area], [self perimetr]);
}
- (int)  weight
{
    return weight;
}
- (int)  height
{
    return height;
}
- (int)  area
{
    return weight * height;
    // return area;
}
- (int)  perimetr
{
    return 2 * (weight + height);
}
@end

@implementation Class1
+ (void) work
{
    Rectangle *Rect = [[Rectangle alloc] init];
    
    [Rect setWeight: 3];
    [Rect setHeight: 4];
    //[Rect area];
    //[Rect perimetr];
    [Rect print];
    
}

@end
