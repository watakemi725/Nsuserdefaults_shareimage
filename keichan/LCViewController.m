//
//  LCViewController.m
//  keichan
//
//  Created by ぬっきー on 2014/06/27.
//  Copyright (c) 2014年 takemi. All rights reserved.
//

#import "LCViewController.h"

@interface LCViewController ()

@end

@implementation LCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}



-(IBAction)go{

    
    UIImage *image = imageview.image;// your image
    //おまじない
    NSData *pngImageData = UIImagePNGRepresentation(image);
    NSArray *paths = NSSearchPathForDirectoriesInDomains
    (NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths firstObject];
    NSString *fileName = [NSString stringWithFormat:@"%@/imageName.png",
                          documentsDirectory];
    [pngImageData writeToFile:fileName atomically:YES];
    
    //ファイル名をnsuserdefaultsで受け渡し
    [[NSUserDefaults standardUserDefaults] setObject:fileName forKey:@"key"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    //保存
    
}



//カメラロールからの画像の呼び出し
-(IBAction)cameraroll{
    
    //UIImagePickerControllerを初期化・生成
    UIImagePickerController *ipc = [[UIImagePickerController alloc] init] ;
    //画像の取得先をフォトライブラリー(カメラロール)に設定する
    [ipc setSourceType:UIImagePickerControllerSourceTypePhotoLibrary] ;
    //デリゲートの設定
    [ipc setDelegate:self] ;
    [ipc setAllowsEditing:YES] ;
    //フォトライブラリーをモーダルビューとして表示する
    [self presentViewController:ipc animated:YES completion:nil] ;
    
}


// フォトライブラリで、画像が選ばれたときの処理
- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    [imageview setImage:image]; // UIImageViewのhaikeiに選択された画像を設定する
    [self dismissViewControllerAnimated:YES completion:nil] ;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
