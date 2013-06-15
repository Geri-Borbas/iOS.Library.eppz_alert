eppz!alert
==========

Simplest UIAlertView wrapper ever.

Usage
=====

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

Notes
=====

Implementation uses the Class object itself as a singleton without any singleton setup, so implementation you find inside is a bit useuseful, but I like it.
