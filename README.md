## ![eppz!tools](http://eppz.eu/layout/common/eppz_50_GitHub.png) eppz!alert
Simplest UIAlertView wrapper ever.
```Objective-C
[EPPZAlert alertWithTitle:@"Alert!"
                  message:@"Please choose a task below."
             buttonTitles:@[@"Clean", @"Upload", @"Cancel"]
             completition:^(NSString *selectedButtonTitle)
    {
        if ([selectedButtonTitle isEqualToString:@"Clean"])
            [self clean];
     
        if ([selectedButtonTitle isEqualToString:@"Upload"])
            [self upload];
    }];
```

See header file for more (actualluy there is not too much more). Implementation uses the Class object itself as a singleton without any singleton setup, so implementation you find inside is a bit unusual, but I like it.

- - -

Added some factory presets trough a category (), so you can make it more explicit like these calls below.
```Objective-C
[EPPZAlert alertWithTitle:@"Select an answer!"
                  message:nil
                      yes:^() { [EPPZAlert alertWithTitle:@"That was a Yes!" message:@"You can belive me."]; }
                       no:^() { [EPPZAlert alertWithTitle:@"That was a No!" message:@"When I say to you."]; }
                   cancel:^() { [EPPZAlert alertWithTitle:@"That was a Cancel!" message:@"I can easily recognize."]; }]; }];
```

#### License
> Licensed under the [Open Source MIT license](http://en.wikipedia.org/wiki/MIT_License).
