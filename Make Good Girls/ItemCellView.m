//
//  ItemCellView.m
//  Make Good Girls
//
//  Created by Carlos Bedoy on 01/04/14.
//  Copyright (c) 2014 Carlos Bedoy. All rights reserved.
//

#import "ItemCellView.h"
#import "MAKVONotificationCenter.h"
@implementation ItemCellView

-(void)awakeFromNib{
    [self assingObserver];
}

-(void)assingObserver{
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    void (^viewModelBlock)(MAKVONotification *) = ^(MAKVONotification *notification)
    {
        [self reloadData];
    };
    [self addObservationKeyPath:@"viewModel" options:options block:viewModelBlock];
}

-(void)reloadData{
    [self.name      setText:[self.viewModel  valueForKey:@"name"]];
    [self.address   setText:[self.viewModel  valueForKey:@"address"]];
}



@end
