//
//  EPPZAppDelegate.m
//  eppz!tools
//
//  Created by Borbás Geri on 6/14/13.
//  Copyright (c) 2013 eppz! development, LLC.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
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

-(void)presetAlerts
{
    [EPPZAlert alertWithTitle:@"Select an answer!"
                      message:nil
                          yes:^() { [EPPZAlert alertWithTitle:@"That was a Yes!" message:@"You can belive me."]; }
                           no:^() { [EPPZAlert alertWithTitle:@"That was a No!" message:@"When I say to you."]; }
                       cancel:^() { [EPPZAlert alertWithTitle:@"That was a Cancel!" message:@"I can easily recognize."]; }];
}


@end
