//
//  WeatherDescription.h
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WeatherDescription : NSObject

@property (strong, nonatomic) NSNumber *humidity; // влажность
@property (strong, nonatomic) NSNumber *pressure; // давление
@property (strong, nonatomic) NSNumber *temperature; // температура
@property (strong, nonatomic) NSNumber *tempMax; // max temperature
@property (strong, nonatomic) NSNumber *tempMin; // min temperature
@property (strong, nonatomic) NSString *textDescription; // weather description
@property (strong, nonatomic) NSString *iconName; // с сервера приходит идентификатор картинки
@property (strong, nonatomic) NSString *mainState; // weather state

+ (WeatherDescription *)weatherDescriptionModelFromDictionary:(NSDictionary *)jsonDictionary;

- (NSString *)farengeit;
- (NSString *)celsius;

@end
