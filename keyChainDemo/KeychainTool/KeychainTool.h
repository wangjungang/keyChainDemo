//
//  KeychainTool.h
//  keyChainDemo
//
//  Created by 王俊钢 on 2017/11/28.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeychainTool : NSObject

+ (NSMutableDictionary *)getKeychainQuery:(NSString *)service ;

+ (void)save:(NSString *)service data:(id)data ;

+ (id)load:(NSString *)service ;

+ (void)delete:(NSString *)service ;

@end
