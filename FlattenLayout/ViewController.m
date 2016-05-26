//
//  ViewController.m
//  FlattenLayout
//
//  Created by doggy on 5/26/16.
//  Copyright © 2016 doggy. All rights reserved.
//

#define MAS_SHORTHAND_GLOBALS

#import "Masonry.h"
#import "Masonry+FlattenLayout.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#define SYNTAX_NEW 1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView* viewCenter = UIView.new;
    viewCenter.backgroundColor = UIColor.yellowColor;
    [self.view addSubview:viewCenter];
    [viewCenter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(50);
        make.center.equalTo(viewCenter.superview);
    }];
    
    // Sample for .equalTill()
    UIView* viewUp = UIView.new;
    viewUp.backgroundColor = UIColor.lightGrayColor;
    [self.view addSubview:viewUp];
    [viewUp mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(viewCenter);
        make.size.equalTo(viewCenter);
        
#if SYNTAX_NEW
        // new syntax:
        make.bottom.equalTill(viewCenter);
#else
        // or using the tradiontial one:
        make.bottom.equalTo(viewCenter.mas_top);
#endif
    }];
    
    // Sample for .equalTill() with .gap()
    UIView* viewLeft = UIView.new;
    viewLeft.backgroundColor = UIColor.redColor;
    [self.view addSubview:viewLeft];
    [viewLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(viewCenter);
        make.size.equalTo(viewCenter);
        
#if SYNTAX_NEW
        // new syntax:
        make.right.equalTill(viewCenter).gap(15);
#else
        // or using the tradiontial one:
        make.right.equalTo(viewCenter.mas_left).gap(15);
        // or ... more tradiontial:
//        make.right.equalTo(viewCenter.mas_left).offset(-15);
#endif
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
