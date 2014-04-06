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
    self.mapView.showsUserLocation = YES;
    
}

-(void)viewDidAppear:(BOOL)animated{

}

-(void)viewWillAppear:(BOOL)animated{
    
}

-(void)mapViewWillStartLoadingMap:(MKMapView *)mapView{
    
}

-(void)mapViewWillStartLocatingUser:(MKMapView *)mapView{
    
}

-(void)mapViewWillStartRenderingMap:(MKMapView *)mapView{
    [self loadBitches];
}

- (IBAction)actionSearch:(id)sender {
    [self.delegate changeView:@"itemsViewController"];
}
- (IBAction)actionBack:(id)sender {
    [self.delegate changeView:@"loginViewController"];
}

-(void)loadBitches
{
    for (id bitch in self.dataModel) {
        MKPointAnnotation *myAnnotation = [[MKPointAnnotation alloc] init];
        myAnnotation.coordinate = CLLocationCoordinate2DMake(
                                                            [[self.dataModel valueForKey:@"latitud"] floatValue],
                                                            [[self.dataModel valueForKey:@"longitud"] floatValue]);
        myAnnotation.title = [self.dataModel valueForKey:@"name"];
        myAnnotation.subtitle = [self.dataModel valueForKey:@"address"];
        [self.mapView addAnnotation:myAnnotation];
    }
}

@end
