//
//  OrdenarCocadaViewController.m
//  CocadasOnline
//
//  Created by Cristian Torres on 9/05/15.
//  Copyright (c) 2015 Cristian Torres. All rights reserved.
//

#import "OrdenarCocadaViewController.h"

@interface OrdenarCocadaViewController ()
@property (nonatomic,strong) NSNumber *montoTotal;
@end

@implementation OrdenarCocadaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.montoTotal=[NSNumber numberWithInteger:0];
    self.title=self.miCocada.nombre;
    self.imagenCocada.image=[UIImage imageNamed:self.miCocada.imagenStr];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar
     setBarTintColor:[UIColor colorWithRed:198.0f/255.0f
                                     green:167.0f/255.0f
                                      blue:101.0f/255.0f
                                     alpha:1]];
    self.navigationController.navigationBar.translucent=NO;
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    UIImage *image=[UIImage imageNamed:@"carrito"];
    UIBarButtonItem *menu=[[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(showCarrito)];
    [menu setTintColor:[UIColor whiteColor]];
    self.navigationItem.rightBarButtonItem=menu;
    
}

-(void) showCarrito{
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
- (IBAction)ordenarCocada:(id)sender {
    NSLog(@"%li", [self.montoTotal integerValue]);
    NSInteger localTotal=[self.montoTotal integerValue];
    if(localTotal>0){
        Orden *orden=[[Orden alloc] init];
        orden.cantidad=[NSNumber numberWithInteger:[self.cantidadCocadas.text integerValue]];
        orden.cocada=self.miCocada;
        orden.total=self.montoTotal;
        [self.carrito.ordenes addObject:orden];
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        self.total.text=[NSString stringWithFormat:@"Debe elegir la cantidad de %@  que desea", self.miCocada.nombre];
    }
}
- (IBAction)calcularTotal:(id)sender {
}
- (IBAction)total:(id)sender {
    NSNumber *cantidad=[NSNumber numberWithInt:[((UITextField*)sender).text integerValue]];
    NSNumber *calculoTotal=[NSNumber numberWithInt:([cantidad integerValue] * [self.miCocada.precio integerValue])];
    self.montoTotal=calculoTotal;
    self.total.text=[NSString stringWithFormat:@"Total: $%@", calculoTotal];
}


@end
