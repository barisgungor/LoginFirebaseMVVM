//
//  UserHelper.h
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 7.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserHelper : NSObject

- (instancetype)initWithUsername:(NSString *)username andPassword:(NSString *)password;

-(void) fetchData:(void (^)(UserModel *user, BOOL success)) complete;

@end

NS_ASSUME_NONNULL_END
