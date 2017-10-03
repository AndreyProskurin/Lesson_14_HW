//
//  Location.h
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Location : NSObject

@property (strong, nonatomic) NSNumber *latitude; // широта
@property (strong, nonatomic) NSNumber *longitude; // долгота

+ (Location *)locationModelFromDictionary:(NSDictionary *)jsonDictionary;

@end
