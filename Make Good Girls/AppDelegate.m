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
#import "ItemViewController.h"

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
    
    id dataModel = [NSMutableDictionary new];
    
    
    dataModel =@[
                 @{
                     @"name":       @"Rennata",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Maritza",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Elba",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Elizabeth",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Ana karen",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Fridda",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Esmeralda",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Karina",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Dulce",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Sandra",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Claudia",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 @{
                     @"name":       @"Alejandra",
                     @"address":    @"Some address",
                     @"latitud":    @10,
                     @"longitud":   @10
                     },
                 
                 ];
    

    
    
    id manager =                [[ManagerViewController alloc]init];
    id loginViewController =    [[LoginViewController alloc]init];
    id mainViewController =     [[MainViewController alloc]init];
    id itemsViewController =    [[ItemViewController alloc]init];
    
    [loginViewController        setDelegate:manager];
    [mainViewController         setDelegate:manager];
    [itemsViewController        setDelegate:manager];
    
    
    [itemsViewController setDataModel:dataModel];
    
    [instances setValue:loginViewController     forKey:@"loginViewController"];
    [instances setValue:mainViewController      forKey:@"mainViewController"];
    [instances setValue:itemsViewController     forKey:@"itemsViewController"];
    
    
    [manager setViewModel: instances];
    
    return manager;
}

@end
