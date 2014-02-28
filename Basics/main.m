//
//  main.m
//  Basics
//
//  Created by iSparrow Labs on 02/01/14.
//  Copyright (c) 2014 iSparrow Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


//@interface Car : NSObject 
//{
//    int engine;
//    int hp;
//}
//
//-(void) drive;
//-(void)driveSpeed: (int)speed;
//
//-(void) washWith: (int)soapCode;
//-(void) driveAtSpeed: (int) speed throughHighWay: (int) highwayNo;
//-(void) drive: (int)speed HW:(int)hwNo;
//
//
//
//@end
//
//
//
//@implementation Car
//
//-(void)drive
//{
//    NSLog(@"Car Drive");
//}
//
//-(void)washWith:(int)soapCode
//{
//    NSLog(@"Car Washed with Soap. Soap Code is %d", soapCode);
//}
//
//@end
//

#import "Car.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World! ");
        
        Car *myCar = [Car new];
        Car *newCar = [[Car alloc] init];
        
        [myCar drive];
        [myCar washWith:10];
        
        [myCar driveAtSpeed:80 throughHighWay:4];
        
        
        NSNumber *num1 = [[NSNumber alloc]initWithFloat:10.888];
        NSLog(@"Number is %@", num1);
        
        NSLog(@"Integral value is %d", [num1 intValue]);
        
        
        NSNumber *num2 = [NSNumber numberWithLong:1000.77];
        NSLog(@"Num2 %@", num2);
        
        
        
        
        NSString *uniStr = @"Hello There";
        
        NSString *string1 = [[NSString alloc] initWithFormat:@"Hello World!!!"];
        NSString *string2 = [[NSString alloc] initWithFormat:@"Hello Again!!!"];
        NSString *string3 = [[NSString alloc] initWithFormat:@"Now What!!!"];
        
        string1 = string2;
        string2 = string3;
        
        NSLog(@"String 1  %@", string1);
        
        NSArray *array1 = [[NSArray alloc] initWithObjects:num1, num2, string1, uniStr, @"String", @22, nil];
        NSLog(@"Array object at loc 2 %@", [array1 objectAtIndex:1]);
        
        for (NSObject *obj in array1) {
            NSLog(@"Object %@", obj);
            
        }
        
        for (id obj in array1) {
            if ([obj isKindOfClass:[NSString class]]) {
                NSLog(@"Sting object");
            }
            else if ([obj isKindOfClass:[NSNumber class]])
            {
                NSLog(@"Call Numeric method");
            }
            NSLog(@"Obj %@", obj);
            
            if([obj respondsToSelector:@selector(intValue)])
            {
                NSLog(@"Number is %d", [obj intValue]);
            }

        }
        
        NSDictionary *dict= [[NSDictionary alloc]initWithObjectsAndKeys:@"Hyderabad", @"location", @"Delloite", @"company", nil];
     
        NSLog(@"Location %@", [dict objectForKey:@"location"]);
        
        
        NSMutableString *mutString = [[NSMutableString alloc] init];
        
        
    }
    return 0;
}

