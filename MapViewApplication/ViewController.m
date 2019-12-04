//
//  ViewController.m
//  MapViewApplication
//
//  Created by Shivam Patel on 01/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 34.00935149999999;
    location.longitude = -118.49746820000001;
    
    region.span = span;
    region.center = location;
                     
    [self.mapView setRegion:region animated:true];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    [self.mapView addAnnotation:ann];
    
    locationManager.delegate = self;
    self.mapView.delegate = self;
    
    locationManager = [[CLLocationManager alloc] init];
}


- (IBAction)standard:(id)sender {
    
    self.mapView.mapType = MKMapTypeStandard;
    
}

- (IBAction)satelite:(id)sender {
    
    self.mapView.mapType = MKMapTypeSatellite;
}

- (IBAction)locate:(id)sender {
    
    [locationManager requestWhenInUseAuthorization];
    [locationManager requestAlwaysAuthorization];
    
    [locationManager startUpdatingLocation];
    
    self.mapView.showsUserLocation = YES;
    
}
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = userLocation.coordinate.latitude;
    location.longitude = userLocation.coordinate.longitude;
    
    region.span = span;
    region.center = location;
                     
    [self.mapView setRegion:region animated:true];
    
}
- (IBAction)directions:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=34.00935149999999,-118.49746820000001"] options:@{} completionHandler:nil];
    
    
}

- (IBAction)hybrid:(id)sender {
    self.mapView.mapType = MKMapTypeHybrid;
}
@end
