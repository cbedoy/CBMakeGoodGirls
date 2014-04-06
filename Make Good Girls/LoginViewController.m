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
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
}

-(void)dismissKeyboard{
    [self.username resignFirstResponder];
    [self.password resignFirstResponder];
    [self.otherField resignFirstResponder];
}

-(IBAction)actionEnter:(id)sender{
    
    if([self.username.text isEqualToString:@"cbedoy"]){
        [self.delegate changeView:@"mainViewController"];
    }else{
        [self showAlert:@"Error" withMessage:@"User invalid"];
    }
    
}

-(void)showAlert:(NSString *)title withMessage:(NSString*)message{
    UIAlertView *alert =[[UIAlertView alloc]initWithTitle:title
                                                  message:message
                                                 delegate:nil
                                        cancelButtonTitle:@"Ok"
                                        otherButtonTitles:nil, nil];
    
    [alert show];
}

-(void)viewDidAppear:(BOOL)animated{
    [self.username setText:@"cbedoy"];
    [self.password setText:nil];
    [self.otherField setText:nil];
}


@end
