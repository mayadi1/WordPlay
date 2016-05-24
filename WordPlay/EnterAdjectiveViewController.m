//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Mohamed Ayadi on 5/23/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"


@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
  
}
-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if (self.adjectiveTextField.text.length > 0)
    {
        return YES;
    } else {
        self.label2.text = @"Enter your adjective to continue:";
        self.label2.textColor = [UIColor redColor];
        return NO;
        
    }
    
    
    
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ResultsViewController *dvc = segue.destinationViewController;
    //  NSLog(@"%@", dvc.adjectiveTextField);
    
    
        dvc.name2 = self.name;
        dvc.ad2 = self.adjectiveTextField.text;
    
}
    
    








@end
