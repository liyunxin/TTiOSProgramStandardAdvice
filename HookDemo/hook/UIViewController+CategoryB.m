//
//  UIViewController+CategoryB.m
//  hook
//
//  Created by Lambert on 2021/3/15.
//

#import "UIViewController+CategoryB.h"
#import <objc/runtime.h>

@implementation UIViewController (CategoryB)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method originalMethod = class_getInstanceMethod(self, @selector(viewDidLoad));
        Method swizzingMethod = class_getInstanceMethod(self, @selector(category_viewDidLoad));
        method_exchangeImplementations(originalMethod, swizzingMethod);
        
        {
            Method originalMethod = class_getInstanceMethod(self, @selector(viewWillAppear:));
            Method swizzingMethod = class_getInstanceMethod(self, @selector(category369B_viewWillAppear:));
            method_exchangeImplementations(originalMethod, swizzingMethod);
        }
    });
}

- (void)category_viewDidLoad {
    [self category_viewDidLoad];
    NSLog(@"viewDidLoadB");
}

- (void)category369B_viewWillAppear:(BOOL)animated {
    [self category369B_viewWillAppear:animated];
    NSLog(@"viewWillAppearB");
}


@end
