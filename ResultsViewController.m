//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Mohamed Ayadi on 5/23/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "ResultsViewController.h"
#import "VerbsViewController.h"
@interface ResultsViewController ()

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Name: %@,  Ad: %@", self.name2, self.ad2);
    self.resultsTextView.text= [NSString stringWithFormat:@" One day, %@ was walking into Mobile Makers when he noticed how %@ his students were.", self.name2,self.ad2];
    

    
    // Do any additional setup after loading the view.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    VerbsViewController *dvc = segue.destinationViewController;
    dvc.result = self.resultsTextView.text;
    
    
}




@end
