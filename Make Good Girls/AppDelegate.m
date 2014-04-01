//
//  AppDelegate.m
//  Make Good Girls
//
//  Created by Carlos Bedoy on 01/04/14.
//  Copyright (c) 2014 Carlos Bedoy. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "LoginViewController.h"
#import "ManagerViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ManagerViewController *manager = [self createInstances];
    [self.window setRootViewController:manager];
    [self.window makeKeyAndVisible];
    return YES;
}

-(id)createInstances{
    id instances = [NSMutableDictionary new];
    
    id manager =                [[ManagerViewController alloc]init];
    id loginViewController =    [[LoginViewController alloc]init];
    id mainViewController =     [[MainViewController alloc]init];
    
    [loginViewController        setDelegate:manager];
    [mainViewController         setDelegate:manager];
    
    [instances setValue:loginViewController     forKey:@"loginViewController"];
    [instances setValue:mainViewController      forKey:@"mainViewController"];
    
    
    [manager setViewModel: instances];
    
    return manager;
}

@end
