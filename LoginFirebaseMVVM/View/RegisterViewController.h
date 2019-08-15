//
//  RegisterViewController.h
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 15.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textfieldUsername;
@property (strong, nonatomic) IBOutlet UITextField *textfieldPassword;
@property (strong, nonatomic) IBOutlet UITextField *textfieldConfirmPassword;
@property (strong, nonatomic) IBOutlet UILabel *labelInfo;

- (IBAction)backAction:(id)sender;
- (IBAction)Register:(id)sender;

@end

NS_ASSUME_NONNULL_END
