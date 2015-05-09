//
//  CocadasTableViewController.m
//  CocadasOnline
//
//  Created by Cristian Torres on 9/05/15.
//  Copyright (c) 2015 Cristian Torres. All rights reserved.
//

#import "CocadasTableViewController.h"
#import "CocadaTableViewCell.h"
#import "Cocada.h"
#import "OrdenarCocadaViewController.h"
#import "Carrito.h"
#import "Orden.h"
@interface CocadasTableViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tablaCocadas;
@property (nonatomic,strong) NSArray * cocadas;
@property (nonatomic,strong) Cocada *selectedCocada;
@end

@implementation CocadasTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cocadas=@[
                   @{
                       @"nombre":@"cocada",
                       @"precio":@3000,
                       @"imagen":@"cocada"
                       }
                   ,@{
                       @"nombre":@"caballito",
                       @"precio":@3000,
                       @"imagen":@"caballito"
                       }
                   ,@{
                       @"nombre":@"ajonjoli",
                       @"precio":@3000,
                       @"imagen":@"ajonjoli"
                       }
                   ,@{
                       @"nombre":@"enyucado",
                       @"precio":@3000,
                       @"imagen":@"enyucado"
                       }
                   ,@{
                       @"nombre":@"alegría",
                       @"precio":@3000,
                       @"imagen":@"alegria"
                       }
                   ];
    self.carrito=[[Carrito alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cocadas.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CocadaTableViewCell *cell=nil;
    cell=[self.tableView dequeueReusableCellWithIdentifier:@"CocadaCellIdentifier"
                                         forIndexPath:indexPath];
    Cocada *cocada=[[Cocada alloc] init];
    cocada.nombre=[[self.cocadas objectAtIndex:indexPath.row] objectForKey:@"nombre"];
    cocada.imagenStr=[[self.cocadas objectAtIndex:indexPath.row] objectForKey:@"imagen"];
    cocada.precio=[NSNumber numberWithInteger:[[[self.cocadas objectAtIndex:indexPath.row] objectForKey:@"precio"] integerValue]];
    cell.nombre.text=cocada.nombre;
    cell.imagen.image=[UIImage imageNamed:cocada.imagenStr];
    cell.precio.text=[NSString stringWithFormat:@"$%@",cocada.precio];
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.selectedCocada=[[Cocada alloc] init];
    self.selectedCocada.nombre=[[self.cocadas objectAtIndex:indexPath.row] objectForKey:@"nombre"];
    self.selectedCocada.imagenStr=[[self.cocadas objectAtIndex:indexPath.row] objectForKey:@"imagen"];
    self.selectedCocada.precio=[NSNumber numberWithInteger:[[[self.cocadas objectAtIndex:indexPath.row] objectForKey:@"precio"] integerValue]];
    [self performSegueWithIdentifier:@"ordenarProductoSegue" sender:self];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    OrdenarCocadaViewController * ordenarCocada=[segue destinationViewController];
    ordenarCocada.miCocada=self.selectedCocada;
    ordenarCocada.carrito=self.carrito;
}

@end
