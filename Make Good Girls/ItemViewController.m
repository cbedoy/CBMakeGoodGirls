//
//  ItemViewController.m
//  Make Good Girls
//
//  Created by Carlos Bedoy on 03/04/14.
//  Copyright (c) 2014 Carlos Bedoy. All rights reserved.
//

#import "ItemViewController.h"
#import "ItemCellView.h"

@interface ItemViewController ()<UITableViewDataSource, UITableViewDelegate>
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
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}
- (IBAction)actionCancel:(id)sender {
    [self.delegate changeView:@"mainViewController"];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifer = @"Cell";
    ItemCellView *cell = (ItemCellView *)[tableView dequeueReusableCellWithIdentifier:CellIdentifer];
    if(cell == nil){
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ItemCellView" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        
    }
    
    //NSUInteger row = (NSUInteger) indexPath.row;
    //id currentItems = self.viewModel[@"viewModel"][@"items"];
    
    //id cellViewModel = currentItems[row];
    
    [cell setViewModel:nil];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.delegate changeView:@"mainViewController"];
}



@end
