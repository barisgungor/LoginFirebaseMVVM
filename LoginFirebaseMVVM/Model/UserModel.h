//
//  UserModel.h
//  LoginFirebaseMVVM
//
//  Created by Metin Yıldız on 7.08.2019.
//  Copyright © 2019 Metin Yıldız. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserModel : NSObject

-(instancetype) initWithId:(NSString *)userId username:(NSString *)username password:(NSString *)password;

@property (nonatomic) NSString *userId;
@property (nonatomic) NSString *username;
@property (nonatomic) NSString *password;

@end

NS_ASSUME_NONNULL_END
