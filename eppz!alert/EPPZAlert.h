//
//  EPPZAlert.h
//  eppz!kit
//
//  Created by Borbás Geri on 6/14/13.
//  Copyright (c) 2013 eppz! development, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^EPPZAlertCompletition)(NSString *selectedButtonTitle);


//EPPZAlert - A thin interface to work with.
@interface EPPZAlert : NSObject


+(void)alertWithTitle:(NSString*) title
              message:(NSString*) message
         buttonTitles:(NSArray*) buttonTitles;

+(void)alertWithTitle:(NSString*) title
              message:(NSString*) message
         buttonTitles:(NSArray*) buttonTitles
         completition:(EPPZAlertCompletition) completition;


@end
