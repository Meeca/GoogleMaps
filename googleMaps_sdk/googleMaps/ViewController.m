//
//  ViewController.m
//  googleMaps
//
//  Created by 冯洪建 on 15/9/15.
//  Copyright (c) 2015年 冯洪建. All rights reserved.
//

#import "ViewController.h"
#import "GoogleMaps.h"


@interface ViewController ()
{
    GMSMapView *mapView_;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    [GMSServices provideAPIKey:@"AIzaSyBdVl-cTICSwYKrZ95SuvNw7dbMuDt1KG0"];


    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:44
                                                            longitude:116
                                                                 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(44, 116);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView_;



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
