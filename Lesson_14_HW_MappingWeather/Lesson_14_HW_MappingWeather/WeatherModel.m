//
//  WeatherModel.m
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "WeatherModel.h"
#import "Wind.h"
#import "WeatherDescription.h"
#import "Location.h"
#import "KeyConstants.h"

@implementation WeatherModel

+ (WeatherModel *)weatherModelFromDictionary:(NSDictionary*)jsonDictionary {

    WeatherModel *weatherModel = [[WeatherModel alloc] init];
    
    weatherModel.weatherID = [[jsonDictionary objectForKey:kSystem] objectForKey:kID];
    weatherModel.city = [jsonDictionary objectForKey:kCity];
    weatherModel.country = [[jsonDictionary objectForKey:kSystem] objectForKey:kCountry];
    weatherModel.sunrise = [[jsonDictionary objectForKey:kSystem] objectForKey:kSunrise];
    weatherModel.sunset = [[jsonDictionary objectForKey:kSystem] objectForKey:kSunset];
    
    weatherModel.wind = [Wind windModelFromDictionary:jsonDictionary];
    weatherModel.location = [Location locationModelFromDictionary:jsonDictionary];
    weatherModel.weatherDescription = [WeatherDescription weatherDescriptionModelFromDictionary:jsonDictionary];

    return weatherModel;
}

@end

