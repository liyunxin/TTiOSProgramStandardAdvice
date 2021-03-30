//
//  ViewController.m
//  setObjectBugDemo
//
//  Created by Lambert on 2021/3/29.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)setObjectBtnClick:(id)sender {
    //'*** -[__NSDictionaryM setObject:forKey:]: object cannot be nil (key: xxx)'
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:[self getServiceData] forKey:@"data"];
    NSLog(@"dict = %@", dict);
}

- (IBAction)setValueBtnClick:(id)sender {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setValue:[self getServiceData] forKey:@"data"];
    NSLog(@"dict = %@", dict);
}

- (NSArray *)getServiceData {
    return nil;
}

@end
