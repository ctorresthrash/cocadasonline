//
//  CarritoTableViewCell.h
//  CocadasOnline
//
//  Created by Cristian Torres on 9/05/15.
//  Copyright (c) 2015 Cristian Torres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarritoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *producto;
@property (weak, nonatomic) IBOutlet UILabel *cantidad;
@property (weak, nonatomic) IBOutlet UILabel *total;

@end
