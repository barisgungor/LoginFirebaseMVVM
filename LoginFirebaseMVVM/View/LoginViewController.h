//
//  LoginViewController.h
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 7.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textfieldUsername;
@property (strong, nonatomic) IBOutlet UITextField *textfieldPassword;

- (IBAction)ClickLogin:(id)sender;

@end

NS_ASSUME_NONNULL_END
