//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Mohamed Ayadi on 5/23/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if (self.nameTextField.text.length > 0)
    {
        return YES;
    } else {
        self.label.text = @"Enter your name to continue:";
        return NO;
        
    }
    
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
   
        EnterAdjectiveViewController *dvc = segue.destinationViewController;
        dvc.name = self.nameTextField.text;
   

    
}
@end
