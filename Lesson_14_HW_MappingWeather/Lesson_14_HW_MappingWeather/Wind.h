//
//  Wind.h
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Wind : NSObject

@property (strong, nonatomic) NSNumber *degree; // степерь ветра ??
@property (strong, nonatomic) NSNumber *speed;

+ (Wind *)windModelFromDictionary:(NSDictionary *)jsonDictionary;

@end
