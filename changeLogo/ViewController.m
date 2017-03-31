//
//  ViewController.m
//  changeLogo
//
//  Created by mintou on 2017/3/30.
//  Copyright © 2017年 mintou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)change:(id)sender {
    
    if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
        NSLog(@"不支持。。。");
        return;
    }
    else
    {
        NSLog(@"支持动态替换");
    }
    
    NSString *icon = [[UIApplication sharedApplication] alternateIconName];
    if (icon) {
        NSLog(@"icon is exist");
        NSString *changeStr = nil;
        if ([icon isEqualToString:@"IconChange"]) {
            changeStr = @"IconChangeNext";
        }
        [[UIApplication sharedApplication] setAlternateIconName:changeStr completionHandler:^(NSError * _Nullable error) {
            if (error) {
                NSLog(@"error");
            }
            NSLog(@"done");
        }];
    }
    else
    {
        NSLog(@"icon not exist");
        [[UIApplication sharedApplication] setAlternateIconName:@"IconChange" completionHandler:^(NSError * _Nullable error) {
            if (error) {
                NSLog(@"error");
            }
            NSLog(@"done");
        }];
    }

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
