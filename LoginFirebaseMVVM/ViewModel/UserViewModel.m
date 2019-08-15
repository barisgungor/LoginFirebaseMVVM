//
//  UserViewModel.m
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 7.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import "UserViewModel.h"
#import "UserHelper.h"
@import Firebase;

@interface UserViewModel ()

@property (nonatomic) UserHelper *helper;
@property (nonatomic) UserModel *model;

@end

@implementation UserViewModel

- (instancetype)initWithUsernameText:(NSString *)usernameText passwordText:(NSString *)passwordText {
    self = [super init];
    if (self) {
        self.usernameText = usernameText;
        self.passwordText = passwordText;
        
        self.helper = [[UserHelper alloc] initWithUsername:self.usernameText andPassword:self.passwordText];
        
        [self.helper fetchData:^(UserModel * _Nonnull user, BOOL success) {
            if (success == YES) {
                self.model = user;
                [[NSNotificationCenter defaultCenter] postNotificationName:@"ViewModelUpdated" object:nil];
            } else {
                [[NSNotificationCenter defaultCenter] postNotificationName:@"InfoLabelUpdated" object:nil];
                NSLog(@"Success Başarısız !!!");
            }
            
        }];
        
    }
    return self;
}



@end
