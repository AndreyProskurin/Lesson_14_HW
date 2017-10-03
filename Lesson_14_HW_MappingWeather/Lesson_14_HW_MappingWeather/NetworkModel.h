//
//  NetworkModel.h
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KeyConstants.h"

@interface NetworkModel : NSObject

- (void)requestTheWeather:(CompletionBlock)completionBlock;

@end
