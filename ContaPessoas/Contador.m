//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"

@implementation Contador {
    int boy;
    int girl;
}

@synthesize delegate;

static Contador *_instance = nil;

+(Contador*) instance{
    if (_instance == nil) {
        _instance = [[Contador alloc] init];
    }
    return _instance;
}

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

- (void)addMulher:(BOOL)m {
    if (m) { girl++; }
    else { boy++; }
    [delegate atualiza];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal{
    return boy + girl;
}



@end

