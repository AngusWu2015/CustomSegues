//
//  FirstCustomSegue.m
//  CustomSegues
//
//  Created by AndyWu on 2017/10/21.
//  Copyright © 2017年 AndyWu. All rights reserved.
//

#import "FirstCustomSegue.h"
#import "ViewController.h"
#import "SecondViewController.h"
@implementation FirstCustomSegue

-(void)perform {
    //取得指定目標示圖區域變數
    UIView * frostVCView = self.sourceViewController.view;
    UIView * secondVCView = self.destinationViewController.view;
    
    //畫面的畫面寬高
    float screenWidth = [UIScreen mainScreen].bounds.size.width;
    float screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    //指定目標初始位置
    secondVCView.frame = CGRectMake(0.0, screenHeight-40, screenWidth, screenHeight);
    
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    [window insertSubview:secondVCView belowSubview:frostVCView ];
    
    //子物件移動
    ViewController *frostVC = self.sourceViewController;
    SecondViewController * secondVC = self.destinationViewController;
    UIButton *btna = frostVC.aBtn;
    UIButton *btnb = secondVC.aBtn;
    
    CGRect frame = btna.frame;
    CGRect xframe = frostVC.xBtn.frame;
    [UIView animateWithDuration:1.4 animations:^(void){
        frostVCView.frame = CGRectOffset(frostVCView.frame, 0.0, -(screenHeight - 40));
        secondVCView.frame = CGRectOffset(secondVCView.frame, 0.0, -(screenHeight - 40));
        btna.frame = btnb.frame;
        frostVC.xBtn.frame = CGRectOffset([frostVC.xBtn frame], -screenWidth/4+(frostVC.xBtn.frame.size.width/2), 0.0);
        frostVC.xBtn.alpha = 0.0 ;
    } completion:^(BOOL Finished){
        
        [self.sourceViewController presentViewController:self.destinationViewController animated:false completion:^(void){
            btna.frame = frame;
            frostVC.xBtn.frame = xframe;
            frostVC.xBtn.alpha = 1.0;
            
        }];
    }];
    
}

@end
