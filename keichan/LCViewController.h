//
//  LCViewController.h
//  keichan
//
//  Created by ぬっきー on 2014/06/27.
//  Copyright (c) 2014年 takemi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LCViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>{
    IBOutlet UILabel *label;
 
    IBOutlet UIWebView *wv;
    
    IBOutlet UIImageView *imageview;
    UIImage *sendimage;
}

   @property int num;

-(IBAction)go;

-(IBAction)cameraroll;
@end
