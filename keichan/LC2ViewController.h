//
//  LC2ViewController.h
//  keichan
//
//  Created by ぬっきー on 2014/06/28.
//  Copyright (c) 2014年 takemi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LCViewController.h"

@interface LC2ViewController : UIViewController{
    
    IBOutlet UILabel *label2;
    int num2;
    LCViewController *vc;
    
    IBOutlet UIImageView *secondview;
    UIImage *secondimage;
}

-(IBAction)back;

-(IBAction)plus;

@end
