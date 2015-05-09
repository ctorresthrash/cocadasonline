//
//  OrdenarCocadaViewController.h
//  CocadasOnline
//
//  Created by Cristian Torres on 9/05/15.
//  Copyright (c) 2015 Cristian Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cocada.h"
#import "Carrito.h"
#import "Orden.h"
@interface OrdenarCocadaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *cantidadCocadas;
@property (weak, nonatomic) IBOutlet UIImageView *imagenCocada;
@property (weak, nonatomic) IBOutlet UILabel *total;
@property (weak, nonatomic) IBOutlet UIButton *ordenar;
@property (nonatomic,strong) Cocada *miCocada;
@property (nonatomic,strong) Carrito *carrito;
@end
