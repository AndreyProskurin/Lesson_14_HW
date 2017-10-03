//
//  NetworkModel.m
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "NetworkModel.h"
#import "WeatherModel.h"

@implementation NetworkModel

- (void)requestTheWeather:(CompletionBlock)completionBlock {
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:kWeatherURL]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSString *errorDescription = nil;
        id resultObject = nil;
        
        if (error)
        {
            errorDescription = error.localizedDescription;
        }
        else
        {
            NSError *jsonError = nil;
            NSDictionary *jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            
            if (jsonError)
            {
                errorDescription = jsonError.localizedDescription;
            }
            else
            {
                resultObject = [WeatherModel weatherModelFromDictionary:jsonResponse];
            }
            
        }
        
        if (completionBlock)
        {
            completionBlock(resultObject, errorDescription);
        }
        
    }];
    
    [dataTask resume];
}

@end
