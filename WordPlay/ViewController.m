//
//  ViewController.m
//  WordPlay
//
//  Created by Mohamed Ayadi on 5/23/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "ViewController.h"
#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)unwindAndBookIt:(UIStoryboardSegue *)sender{
    NSLog(@"BOOKED!");
}




@end
