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

- (IBAction)backAction:(id)sender {
    [self performSegueWithIdentifier:@"showLoginPage" sender:nil];
}

- (IBAction)Register:(id)sender {
}
@end
