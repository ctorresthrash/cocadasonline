//
//  CocadaTableViewCell.h
//  CocadasOnline
//
//  Created by Cristian Torres on 9/05/15.
//  Copyright (c) 2015 Cristian Torres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CocadaTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imagen;
@property (weak, nonatomic) IBOutlet UILabel *nombre;
@property (weak, nonatomic) IBOutlet UILabel *precio;

@end
