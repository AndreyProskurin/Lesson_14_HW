//
//  KeyConstants.h
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 30.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#ifndef KeyConstants_h
#define KeyConstants_h

// WeatherDescription
static NSString *const kMain = @"main";
static NSString *const kHumidity = @"humidity";
static NSString *const kPressure = @"pressure";
static NSString *const kTemperature = @"temp";
static NSString *const kTempMax = @"temp_max";
static NSString *const kTempMin = @"temp_min";

static NSString *const kWeather = @"weather";
static NSString *const kDescription = @"description";
static NSString *const kIcon = @"icon";
static NSString *const kMainState = @"main";

// WeatherModel
static NSString *const kSystem = @"sys";
static NSString *const kCountry = @"country";
static NSString *const kCity = @"name";
static NSString *const kID = @"id";
static NSString *const kSunrise = @"sunrise";
static NSString *const kSunset = @"sunset";

// Wind
static NSString *const kWind = @"wind";
static NSString *const kDegree = @"deg";
static NSString *const kSpeed = @"speed";

// Location
static NSString *const kLocation = @"coord";
static NSString *const klatitude = @"lat";
static NSString *const klongitude = @"lon";

// Link
static NSString *const kWeatherURL = @"http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1";

typedef void (^CompletionBlock)(id object, NSString *errorText);

#endif /* KeyConstants_h */
