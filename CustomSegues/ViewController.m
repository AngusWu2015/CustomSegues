//
//  ViewController.m
//  CustomSegues
//
//  Created by AndyWu on 2017/10/21.
//  Copyright © 2017年 AndyWu. All rights reserved.
//

#import "ViewController.h"
#import "FirstCustomSegueUnwind.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UISwipeGestureRecognizer *swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(showSecondViewController)];
//    swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
//    [self.view addGestureRecognizer:swipeGestureRecognizer];
}

-(IBAction)showSecondBtn:(id)sender{
    [self showSecondViewController];
}

-(void)showSecondViewController{
    [self performSegueWithIdentifier:@"idFirstSegue" sender:self];
}

-(IBAction)returnFromSegueActions:(UIStoryboardSegue *)sender{
    
}

//-(UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier{
//    if (identifier isEqualToString:@"idFirstSegueUnwind") {
//        
//    }
//    return [super  ]
//}
@end
