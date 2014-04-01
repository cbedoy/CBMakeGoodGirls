//
//  LoginViewController.m
//  Make Good Girls
//
//  Created by Carlos Bedoy on 01/04/14.
//  Copyright (c) 2014 Carlos Bedoy. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (nonatomic, retain) IBOutlet UITextField *username;
@property (nonatomic, retain) IBOutlet UITextField *password;
@property (nonatomic, retain) IBOutlet UITextField *otherField;

@end

@implementation LoginViewController

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
    [self.username      setTag:1];
    [self.password      setTag:2];
    [self.otherField    setTag:3];
    [self.username      setDelegate:self];
    [self.password      setDelegate:self];
    [self.otherField    setDelegate:self];
}


-(IBAction)actionEnter:(id)sender{
    
    [self.delegate changeView:@"mainViewController"];
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    
}

@end
