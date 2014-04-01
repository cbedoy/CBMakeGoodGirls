//
//  ManagerViewController.m
//  Make Good Girls
//
//  Created by Carlos Bedoy on 01/04/14.
//  Copyright (c) 2014 Carlos Bedoy. All rights reserved.
//

#import "ManagerViewController.h"

@interface ManagerViewController ()

@property (nonatomic, retain) id viewModel;

@end

@implementation ManagerViewController



-(id)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.viewModel = data;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}



@end
