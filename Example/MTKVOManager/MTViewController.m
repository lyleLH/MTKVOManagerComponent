//
//  MTViewController.m
//  MTKVOManager
//
//  Created by Tom.Liu on 01/22/2021.
//  Copyright (c) 2021 Tom.Liu. All rights reserved.
//

#import "MTViewController.h"
#import "MTTestModel.h"
#import <MTKVOManagerComponent/MTKVOManagerComponentHeader.h>
@interface MTViewController ()

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MTTestModel * model  = [[MTTestModel alloc] init];
   
    
    [self mt_observe:model keyPath:@"name" result:^(id  _Nullable observer, id  _Nonnull observedObject, NSDictionary<NSString *,id> * _Nonnull change) {
        NSLog(@"%@",change);
    }];
    
    model.name = @"tom";
    model.name = @"cat";
    model.name = @"end";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
