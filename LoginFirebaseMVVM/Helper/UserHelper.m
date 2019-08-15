//
//  UserHelper.m
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 7.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import "UserHelper.h"
#import "UserViewModel.h"
#import "UserModel.h"
@import Firebase;

@interface UserHelper()
@property (nonatomic) FIRDatabaseReference *userReference;
@property (nonatomic) NSString *username;
@property (nonatomic) NSString *password;
@end

@implementation UserHelper

- (instancetype)initWithUsername:(NSString *)username andPassword:(NSString *)password {
    self = [super init];
    if (self) {
        self.userReference = [[[FIRDatabase database] reference] child:@"users"];
        self.username = username;
        self.password = password;
    }
    return self;
}

-(void) fetchData:(void (^)(UserModel *user, BOOL success)) complete {
    [self.userReference observeEventType:FIRDataEventTypeValue withBlock:^(FIRDataSnapshot * _Nonnull snapshot) {
        if (snapshot.children > 0) {
            for (FIRDataSnapshot *child in snapshot.children) {
                NSDictionary *saveduser = [child value];
                NSString *key = [saveduser objectForKey:@"id"];
                NSString *username = [saveduser objectForKey:@"username"];
                NSString *password = [saveduser objectForKey:@"password"];
                
                UserModel *userModel = [[UserModel alloc] initWithId:key username:username password:password];
                
                NSLog(@"----------------------------");
                NSLog(@"TEST Firebase Username => %@",userModel.username);
                NSLog(@"TEST Firebase Password => %@",userModel.password);
                NSLog(@"Helper Username => %@", self.username);
                NSLog(@"Helper Password => %@", self.password);
                
                if ([userModel.username isEqualToString:self.username] && [userModel.password isEqualToString:self.password]) {
                    NSLog(@"TEST Helper Complete YES");
                    complete(userModel,YES);
                    NSLog(@"TEST Helper Complete YES");
                    break;
                } else {
                    NSLog(@"TEST Helper Complete NO");
                    complete(nil,NO);
                    NSLog(@"TEST Helper Complete NO");
                }
                NSLog(@"----------------------------");
            }
        }
    }];
}

@end
