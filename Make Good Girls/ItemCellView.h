//
//  ItemCellView.h
//  Make Good Girls
//
//  Created by Carlos Bedoy on 01/04/14.
//  Copyright (c) 2014 Carlos Bedoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemCellView : UITableViewCell

@property (nonatomic, retain) id                        viewModel;
@property (nonatomic, retain) IBOutlet  UILabel         *name;
@property (nonatomic, retain) IBOutlet  UILabel         *address;
@property (nonatomic, retain) IBOutlet  UIImageView     *icon;

@end
