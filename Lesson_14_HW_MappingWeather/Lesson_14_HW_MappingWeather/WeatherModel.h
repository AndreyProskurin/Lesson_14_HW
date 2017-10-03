//
//  WeatherModel.h
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Wind;
@class WeatherDescription;
@class Location;

@interface WeatherModel : NSObject

@property (strong, nonatomic) NSNumber *weatherID;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *country;
@property (strong, nonatomic) NSNumber *sunrise;
@property (strong, nonatomic) NSNumber *sunset;

@property (strong, nonatomic) Wind *wind;
@property (strong, nonatomic) WeatherDescription *weatherDescription;
@property (strong, nonatomic) Location *location;


+ (WeatherModel *)weatherModelFromDictionary:(NSDictionary*)jsonDictionary;

@end
