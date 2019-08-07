//
//  UserViewModel.h
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 7.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import <Foundation/Foundation.h>
@import Firebase;

NS_ASSUME_NONNULL_BEGIN

@interface UserViewModel : NSObject

/*
 self.ref = [[[FIRDatabase database] reference] child:@"users"];
 [self.ref observeEventType:FIRDataEventTypeValue withBlock:^(FIRDataSnapshot * _Nonnull snapshot) {
 if (snapshot.children > 0) {
 for (FIRDataSnapshot *child in snapshot.children) {
 NSDictionary *savedUser = [child value];
 NSString *username  = [savedUser objectForKey:@"username"];
 NSLog(@"TEST Username => %@",username);
 }
 }
 }];
 */

@end

NS_ASSUME_NONNULL_END
