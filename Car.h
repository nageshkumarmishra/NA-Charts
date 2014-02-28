//
//  Car.h
//  Basics
//
//  Created by iSparrow Labs on 02/01/14.
//  Copyright (c) 2014 iSparrow Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

{
    int engine;
    int hp;
    
}

@property int engine;
@property int hp;

@property (nonatomic, strong) NSString *name;

//-(void)setEngine: (int)eng;
//-(void)setHp: (int) hp;
//
//-(int)engine;
//-(int) hp;


-(void) drive;
-(void)driveSpeed: (int)speed;

-(void) washWith: (int)soapCode;
-(void) driveAtSpeed: (int) speed throughHighWay: (int) highwayNo;
-(void) drive: (int)speed HW:(int)hwNo;

@end
