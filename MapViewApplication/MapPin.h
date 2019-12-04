//
//  MapPin.h
//  MapViewApplication
//
//  Created by Shivam Patel on 01/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapPin : NSObject <MKAnnotation> {
    
    CLLocationCoordinate2D coordinate;
    
    
    
    
}

@property (nonatomic,assign) CLLocationCoordinate2D coordinate;

@end


