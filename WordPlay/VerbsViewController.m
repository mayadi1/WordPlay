//
//  VerbsViewController.m
//  WordPlay
//
//  Created by Mohamed Ayadi on 5/23/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "VerbsViewController.h"
#import "PrepositionViewController.h"


@interface VerbsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *verbs;
@property (weak, nonatomic) IBOutlet UITextField *Preposition;


@end

@implementation VerbsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if (self.verbs.text.length > 0 && self.Preposition.text.length > 0)
    {
        return YES;
    } else {
        self.label.text = @"Enter your Verb and your Preposition:";
        self.label.textColor = [UIColor redColor];
        return NO;
        
    }
    
    
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    PrepositionViewController *dvc = segue.destinationViewController;
    NSString *string =[NSString stringWithFormat:@"%@ , Verb: %@  Preposition: %@", self.result, self.verbs.text, self.Preposition.text];
    
    dvc.fullString = string;

    
    
}



@end
