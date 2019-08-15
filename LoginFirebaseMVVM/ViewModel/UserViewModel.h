//
//  UserViewModel.h
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 7.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserViewModel : NSObject

- (instancetype)initWithUsernameText:(NSString *)usernameText passwordText:(NSString *)passwordText;


@property (nonatomic) NSString *usernameText;
@property (nonatomic) NSString *passwordText;
@property (nonatomic) BOOL success;

@end

NS_ASSUME_NONNULL_END
