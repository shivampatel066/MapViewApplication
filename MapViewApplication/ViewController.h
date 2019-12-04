//
//  ViewController.h
//  MapViewApplication
//
//  Created by Shivam Patel on 01/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapPin.h"

@interface ViewController : UIViewController <MKMapViewDelegate,CLLocationManagerDelegate> {
    
    CLLocationManager *locationManager;
    
}


@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)standard:(id)sender;

- (IBAction)satelite:(id)sender;

- (IBAction)hybrid:(id)sender;
- (IBAction)locate:(id)sender;
- (IBAction)directions:(id)sender;


@end

