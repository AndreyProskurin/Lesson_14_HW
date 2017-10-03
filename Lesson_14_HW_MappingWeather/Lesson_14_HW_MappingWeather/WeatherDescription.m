//
//  WeatherDescription.m
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "WeatherDescription.h"
#import "KeyConstants.h"

@implementation WeatherDescription

+ (WeatherDescription *)weatherDescriptionModelFromDictionary:(NSDictionary *)jsonDictionary {
    
    WeatherDescription *weatherDescriptionModel = [WeatherDescription new];
    
    weatherDescriptionModel.humidity = [[jsonDictionary objectForKey:kMain] objectForKey:kHumidity];
    weatherDescriptionModel.pressure = [[jsonDictionary objectForKey:kMain] objectForKey:kPressure];
    weatherDescriptionModel.temperature = [[jsonDictionary objectForKey:kMain] objectForKey:kTemperature];
    weatherDescriptionModel.tempMax = [[jsonDictionary objectForKey:kMain] objectForKey:kTempMax];
    weatherDescriptionModel.tempMin = [[jsonDictionary objectForKey:kMain] objectForKey:kTempMin];
    
    weatherDescriptionModel.textDescription = [[[jsonDictionary objectForKey:kWeather] objectAtIndex:0] objectForKey:kDescription];
    weatherDescriptionModel.iconName = [[[jsonDictionary objectForKey:kWeather] objectAtIndex:0] objectForKey:kIcon];
    weatherDescriptionModel.mainState = [[[jsonDictionary objectForKey:kWeather] objectAtIndex:0] objectForKey:kMainState];
    
    return weatherDescriptionModel;
}

- (NSString *)celsius {
    return [NSString stringWithFormat:@"%.0f", self.temperature.floatValue - 273.f];
}

- (NSString *)farengeit {
    // ºF = 1.8 x (K - 273) + 32.
    return [NSString stringWithFormat:@"%.0f", (1.8 * (self.temperature.floatValue - 273.f) + 32)];
}

@end
