//
//  UIViewController+CategoryA.m
//  hook
//
//  Created by Lambert on 2021/3/15.
//

#import "UIViewController+CategoryA.h"
#import <objc/runtime.h>

@implementation UIViewController (CategoryA)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method originalMethod = class_getInstanceMethod(self, @selector(viewDidLoad));
        Method swizzingMethod = class_getInstanceMethod(self, @selector(category_viewDidLoad));
        method_exchangeImplementations(originalMethod, swizzingMethod);
        
        {
            Method originalMethod = class_getInstanceMethod(self, @selector(viewWillAppear:));
            Method swizzingMethod = class_getInstanceMethod(self, @selector(category957A_viewWillAppear:));
            method_exchangeImplementations(originalMethod, swizzingMethod);
        }
    });
}

- (void)category_viewDidLoad {
    [self category_viewDidLoad];
    NSLog(@"viewDidLoadA");
}

- (void)category957A_viewWillAppear:(BOOL)animated {
    [self category957A_viewWillAppear:animated];
    NSLog(@"viewWillAppearA");
}

@end
