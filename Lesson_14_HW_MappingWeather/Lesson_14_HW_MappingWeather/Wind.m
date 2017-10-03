//
//  Wind.m
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "Wind.h"
#import "KeyConstants.h"

@implementation Wind

+ (Wind *)windModelFromDictionary:(NSDictionary *)jsonDictionary {
    
    Wind *windModel = [Wind new];
    
    windModel.degree = [[jsonDictionary objectForKey:kWind] objectForKey:kDegree];
    windModel.speed = [[jsonDictionary objectForKey:kWind] objectForKey:kSpeed];
    
    return windModel;
}

@end
