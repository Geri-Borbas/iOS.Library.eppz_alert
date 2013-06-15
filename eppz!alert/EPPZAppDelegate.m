//
//  EPPZAppDelegate.m
//  eppz!tools
//
//  Created by Borbás Geri on 6/14/13.
//  Copyright (c) 2013 eppz! development, LLC. All rights reserved.
//

#import "EPPZAppDelegate.h"
#import "EPPZAlert.h"


@implementation EPPZAppDelegate


-(BOOL)application:(UIApplication*) application didFinishLaunchingWithOptions:(NSDictionary*) launchOptions
{
    //Common app window setup.
    self. window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    
    //EPPZAlert tests.
    [self sampleAlerts];
    
    return YES;
}

-(void)sampleAlerts
{
    //Pop first alert.
    [EPPZAlert alertWithTitle:@"First alert!"
                      message:@"This alert view instance invoked first in the client code! Can you belive this?"
                 buttonTitles:@[@"Indeed", @"Not really", @"Leave me alone"]
                 completition:^(NSString *selectedButtonTitle)
     {
         //Pop alert for answer 'Indeed'.
         if ([selectedButtonTitle isEqualToString:@"Indeed"])
             [EPPZAlert alertWithTitle:@"Indeed!"
                               message:@"Of course you can."
                          buttonTitles:@[ @"Fine." ]];
         
         //Pop alert for answer 'Not really'.
         if ([selectedButtonTitle isEqualToString:@"Not really"])
             [EPPZAlert alertWithTitle:@"Not really?"
                               message:@"Because it is confusing that it is not the same that the user sees for the first time."
                          buttonTitles:@[ @"Pity." ]];
     }];
    
    //Pop second alert.
    [EPPZAlert alertWithTitle:@"Second alert!"
                      message:@"This alert view instance invoked secondly in the client code! Do you want to go on with testing?"
                 buttonTitles:@[@"Yes", @"No", @"Cancel"]
                 completition:^(NSString *selectedButtonTitle)
     {
         //Pop alert for answer 'Yes'.
         if ([selectedButtonTitle isEqualToString:@"Yes"])
             [EPPZAlert alertWithTitle:@"Answered yes!"
                               message:@"Then let's see another alert."
                          buttonTitles:@[ @"Fine." ]];
         
         //Pop alert for answer 'No'.
         if ([selectedButtonTitle isEqualToString:@"No"])
             [EPPZAlert alertWithTitle:@"Answered no?"
                               message:@"Never mind, it is only one alert to dismiss."
                          buttonTitles:@[ @"Bring it on." ]];
     }];
}


@end
