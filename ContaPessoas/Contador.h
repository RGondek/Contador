//
//  Contador.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol protocoloDelegate <NSObject>

@required
-(void)atualiza;

@end

@interface Contador : NSObject

- (void)addMulher:(BOOL)m;

+(Contador*) instance;

-(int)getBoys;
-(int)getGirls;
-(int)getTotal;

@property id <protocoloDelegate> delegate;

@end

