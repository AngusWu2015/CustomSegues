//
//  FirstCustomSegueUnwind.m
//  CustomSegues
//
//  Created by AndyWu on 2017/10/21.
//  Copyright © 2017年 AndyWu. All rights reserved.
//

#import "FirstCustomSegueUnwind.h"
#import "ViewController.h"
#import "SecondViewController.h"
@implementation FirstCustomSegueUnwind
-(void)perform {
    //取得指定目標示圖區域變數
    UIView * secondVCView = self.sourceViewController.view;
    UIView * frostVCView = self.destinationViewController.view;
    
    //畫面的畫面寬高
    float screenWidth = [UIScreen mainScreen].bounds.size.width;
    float screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    //指定目標初始位置
    frostVCView.frame = CGRectMake(0.0, -screenHeight+40, screenWidth, screenHeight);
    
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    [window insertSubview:frostVCView belowSubview: secondVCView];
    
    //子物件移動
    SecondViewController * secondVC= self.sourceViewController;
 ViewController * frostVC = self.destinationViewController;
    UIButton *btna = frostVC.aBtn;
    UIButton *btnb = secondVC.aBtn;
    UIButton *xbtn = frostVC.xBtn;
    
    //紀錄初始值
    CGRect btnframe = btna.frame;
    CGRect xframe = xbtn.frame;
    btna.frame = btnb.frame;
    xbtn.frame = CGRectOffset(xbtn.frame, -screenWidth/4+(xbtn.frame.size.width/2), 0.0);
    xbtn.alpha = 0.0;
    [UIView animateWithDuration:1.4 animations:^(void){
        frostVCView.frame = CGRectOffset(frostVCView.frame, 0.0, (screenHeight - 40));
        secondVCView.frame = CGRectOffset(secondVCView.frame, 0.0, (screenHeight - 40 ));
        btna.frame = btnframe;
        xbtn.frame = xframe;
        xbtn.alpha = 1.0;
    } completion:^(BOOL Finished){
        
        [self.sourceViewController dismissViewControllerAnimated:false completion:nil];
    }];
    
}
@end
