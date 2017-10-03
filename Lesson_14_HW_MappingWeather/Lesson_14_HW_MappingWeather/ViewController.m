//
//  ViewController.m
//  Lesson_14_HW_MappingWeather
//
//  Created by Andrey Proskurin on 27.09.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "ViewController.h"
#import "WeatherModel.h"
#import "NetworkModel.h"
#import "WeatherDescription.h"
#import "Wind.h"
#import "Location.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *celTemperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *farTemperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *countryLabel;
@property (weak, nonatomic) IBOutlet UILabel *windSpeedLabel;
@property (weak, nonatomic) IBOutlet UILabel *humidityLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *mainStateLabel;

@property (strong, nonatomic) WeatherModel *weatherModel;
@property (strong, nonatomic) NetworkModel *networkModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.weatherModel = [[WeatherModel alloc] init];
    self.networkModel = [[NetworkModel alloc] init];
}

- (IBAction)RefreshWeatherDataAction:(UIButton *)sender {
    
    [self.networkModel requestTheWeather:^(id object, NSString *errorText) {
        
        if (errorText)
        {
            [self performSelectorOnMainThread:@selector(displayAlertControllerWithText:)
                                   withObject:errorText
                                waitUntilDone:YES];
        }
        else
        {
            [self performSelectorOnMainThread:@selector(updateUserInterface:)
                                   withObject:object
                                waitUntilDone:YES];
        }
    }];
}

- (void)updateUserInterface:(WeatherModel *)model
{
    self.weatherModel = model;
    
    self.celTemperatureLabel.text = [self.weatherModel.weatherDescription celsius];
    self.farTemperatureLabel.text = [self.weatherModel.weatherDescription farengeit];
    self.cityLabel.text           = self.weatherModel.city;
    self.countryLabel.text        = self.weatherModel.country;
    self.windSpeedLabel.text      = self.weatherModel.wind.speed.stringValue;
    self.humidityLabel.text       = self.weatherModel.weatherDescription.humidity.stringValue;
    self.descriptionLabel.text    = self.weatherModel.weatherDescription.textDescription;
    self.mainStateLabel.text      = self.weatherModel.weatherDescription.mainState;
    
}

- (void)displayAlertControllerWithText:(NSString *)textMessage
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error"
                                                                   message:textMessage
                                                            preferredStyle:UIAlertControllerStyleAlert];
                                                                       // :UIAlertControllerStyleActionSheet
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    // handler and completion are blocks
}



@end
