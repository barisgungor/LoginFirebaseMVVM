//
//  UserModel.m
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 7.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

-(instancetype) initWithId:(NSString *)userId username:(NSString *)username password:(NSString *)password {
    self = [super init];
    if (self) {
        self.userId = userId;
        self.username = username;
        self.password = password;
    }
    return self;
}

@end
