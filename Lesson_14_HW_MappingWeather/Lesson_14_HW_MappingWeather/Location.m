//
//  Location.m
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "Location.h"
#import "KeyConstants.h"

@implementation Location

+ (Location *)locationModelFromDictionary:(NSDictionary *)jsonDictionary {
    
    Location *locationModel = [Location new];
    
    locationModel.latitude = [[jsonDictionary objectForKey:kLocation] objectForKey:klatitude];
    locationModel.longitude = [[jsonDictionary objectForKey:kLocation] objectForKey:klongitude];
    
    return locationModel;
}


@end
