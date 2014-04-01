//
//  MainViewController.m
//  Make Good Girls
//
//  Created by Carlos Bedoy on 01/04/14.
//  Copyright (c) 2014 Carlos Bedoy. All rights reserved.
//

#import "MainViewController.h"
#import <MapKit/MapKit.h>
@interface MainViewController ()<MKMapViewDelegate>

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end

@implementation MainViewController

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
    [self.mapView setDelegate:self];
    
}

-(void)mapViewWillStartLoadingMap:(MKMapView *)mapView{
    
}

-(void)mapViewWillStartLocatingUser:(MKMapView *)mapView{
    
}

-(void)mapViewWillStartRenderingMap:(MKMapView *)mapView{
    
}




@end
