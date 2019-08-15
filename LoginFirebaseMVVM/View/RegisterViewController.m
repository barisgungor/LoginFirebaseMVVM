//
//  RegisterViewController.m
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 15.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backAction:(id)sender {
    [self performSegueWithIdentifier:@"showLoginPage" sender:nil];
}
@end
