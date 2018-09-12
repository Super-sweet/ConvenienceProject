//
//  UIViewController+SupAlertController.m
//  Project
//
//  Created by xuchao on 2018/9/12.
//  Copyright © 2018 xuchao. All rights reserved.
//

#import "UIViewController+SupAlertController.h"

@implementation UIViewController (SupAlertController)

- (void)Sup_showAlertWithTiltle:(nullable NSString *)title
                        message:(nullable NSString *)message
                   actionTilte:(nullable NSString *)actionTilte
              cancelActionTitle:(nullable NSString *)cancelActionTitle
                   actionHandle:(void (^ __nullable)(UIAlertAction *action))handler {
    
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * sureAction = [UIAlertAction actionWithTitle:actionTilte style:UIAlertActionStyleDestructive handler:handler];
    UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:cancelActionTitle style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:sureAction];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:true completion:nil];
    
    
}
@end
