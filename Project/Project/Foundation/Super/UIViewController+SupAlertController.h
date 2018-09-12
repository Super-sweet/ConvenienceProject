//
//  UIViewController+SupAlertController.h
//  Project
//
//  Created by xuchao on 2018/9/12.
//  Copyright © 2018 xuchao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (SupAlertController)
- (void)Sup_showAlertWithTiltle:(nullable NSString *)title
                        message:(nullable NSString *)message
                    actionTilte:(nullable NSString *)actionTilte
              cancelActionTitle:(nullable NSString *)cancelActionTitle
                   actionHandle:(void (^ __nullable)(UIAlertAction *action))handler;
@end
