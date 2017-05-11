//
//  main.m
//  MakingDecisions
//
//  Created by Dasha on 09.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       long int n, r, count, sum, i, x;
       NSMutableString *mutableString = [NSMutableString new];

        NSLog (@"Enter number");
        scanf ("%li", &n);
        sum = 0;
        count = 0;
        x = n;
        while (x != 0){
            r = x % 10;
            x = x / 10;
            count += 1;
            if (x == 0){
               for (count = count -1; count >= 0; count = count -1){
                   i = n / pow(10, count);
                   n = n % (long int) pow(10, count);
                   
                   switch (i) {
                       case 0:
                           [mutableString appendString:@" Zero"];
                           break;
                       case 1:
                           [mutableString appendString:@" One"];
                           break;
                       case 2:
                           [mutableString appendString:@" Two"];
                           break;
                       case 3:
                           [mutableString appendString:@" Three"];
                           break;
                       case 4:
                           [mutableString appendString:@" Four"];
                           break;
                       case 5:
                           [mutableString appendString:@" Five"];
                           break;
                       case 6:
                           [mutableString appendString:@" Six"];
                           break;
                       case 7:
                           [mutableString appendString:@" Seven"];
                           break;
                       case 8:
                           [mutableString appendString:@" Eight"];
                           break;
                       case 9:
                           [mutableString appendString:@" Ten"];
                           break;
                           
                   }
               }
               NSLog(@"%@", mutableString);
           }
        }
        
    }
    return 0;
}
