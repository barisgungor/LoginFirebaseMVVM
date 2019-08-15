//
//  LoginViewController.m
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 7.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import "LoginViewController.h"
#import "UserViewModel.h"
#import "HomeViewController.h"

@interface LoginViewController ()

@property (nonatomic) UserViewModel *userViewModel;
@property (nonatomic) NSString *usernameText;
@property (nonatomic) NSString *passwordText;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showHomePage:) name:@"ViewModelUpdated" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateInfoLabel:) name:@"InfoLabelUpdated" object:nil];
    
    self.textfieldPassword.secureTextEntry = YES;
    
}

-(void) showHomePage:(NSNotification *)notification {
    [self performSegueWithIdentifier:@"showHomePage" sender:nil];
}

-(void) updateInfoLabel:(NSNotification *)notification {
    self.infoLabel.text = @"Kullanıcı Adı Yada Şifre Yanlış";
}

- (IBAction)ClickLogin:(id)sender {
    self.usernameText = self.textfieldUsername.text;
    NSLog(@"Username => %@",self.usernameText);
    self.passwordText = self.textfieldPassword.text;
    NSLog(@"Password => %@",self.passwordText);
    
    self.userViewModel = [[UserViewModel alloc] initWithUsernameText:self.usernameText passwordText:self.passwordText];
}

@end
