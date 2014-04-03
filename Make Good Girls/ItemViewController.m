//
//  ItemViewController.m
//  Make Good Girls
//
//  Created by Carlos Bedoy on 03/04/14.
//  Copyright (c) 2014 Carlos Bedoy. All rights reserved.
//

#import "ItemViewController.h"

@interface ItemViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)actionCancel:(id)sender {
    [self.delegate changeView:@"mainViewController"];
}

@end
