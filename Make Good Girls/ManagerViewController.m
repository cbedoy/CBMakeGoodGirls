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

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:[[self.viewModel valueForKey:@"loginViewController"] view]];
}

-(void)changeView:(id)controllerName{
    [self.view addSubview:[[self.viewModel valueForKey:controllerName] view]];
}



@end
