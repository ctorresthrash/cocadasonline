//
//  Orden.h
//  CocadasOnline
//
//  Created by Cristian Torres on 9/05/15.
//  Copyright (c) 2015 Cristian Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cocada.h"
@interface Orden : NSObject
@property (nonatomic,strong) Cocada *cocada;
@property (nonatomic,strong) NSNumber *cantidad;
@property (nonatomic,strong) NSNumber *total;
@end
