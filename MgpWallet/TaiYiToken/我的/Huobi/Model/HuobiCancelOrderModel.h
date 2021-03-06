//
//  HuobiCancelOrderModel.h
//  TaiYiToken
//
//  Created by 张元一 on 2019/3/11.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class HuobiCancelOrderData;
@interface HuobiCancelOrderModel : HuobiNetBaseModel
@property (nonatomic, strong) HuobiCancelOrderData * data;
@end

@interface HuobiCancelOrderData : NSObject
@property (nonatomic, assign) NSInteger data;
@property (nonatomic, copy) NSString * errCode;
@property (nonatomic, copy) NSString * errMsg;
@property (nonatomic, copy) NSString * status;
@end
NS_ASSUME_NONNULL_END
