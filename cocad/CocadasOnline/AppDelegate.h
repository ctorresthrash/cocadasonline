//
//  AppDelegate.h
//  CocadasOnline
//
//  Created by Cristian Torres on 9/05/15.
//  Copyright (c) 2015 Cristian Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Carrito.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,strong) Carrito *carrito;

@end

