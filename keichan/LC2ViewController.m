//
//  LC2ViewController.m
//  keichan
//
//  Created by ぬっきー on 2014/06/28.
//  Copyright (c) 2014年 takemi. All rights reserved.
//

#import "LC2ViewController.h"

@interface LC2ViewController ()

@end

@implementation LC2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     
}

-(void)viewDidAppear:(BOOL)animated{
//    vc = [[LCViewController alloc] init];
//    
//    vc.num=num2;
//    
//    //num2++;
//    
//    label2.text=[NSString stringWithFormat:@"%d",num2];
    
    //読み込み
    
    NSString *filePath = [[NSUserDefaults standardUserDefaults] objectForKey:@"key"];
    
    NSData *imageData = [NSData dataWithContentsOfFile:filePath];
    
    UIImage *myImage = [UIImage imageWithData:imageData];
    
    secondview.image=myImage;
    
    [self.view addSubview:secondview];


}


-(IBAction)back{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
