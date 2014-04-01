//
//  LoginViewController.h
//  Make Good Girls
//
//  Created by Carlos Bedoy on 01/04/14.
//  Copyright (c) 2014 Carlos Bedoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IManagerViewDelegate.h"
@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, retain) id<IManagerViewDelegate>  delegate;
@property (nonatomic, retain) id                        viewModel;
@property (nonatomic, retain) id                        dataModel;

@end
