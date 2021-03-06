//
//  YYFiveRecordModel.m
//  投融宝
//
//  Created by WillkYang on 16/10/10.
//  Copyright © 2016年 yeeyuntech. All rights reserved.
//

#import "YYFiveRecordModel.h"

@implementation YYFiveRecordModel
{
    NSDictionary * _dict;
    NSArray *buyPriceArray;
    NSArray *sellPriceArray;
    NSArray *buyVolumeArray;
    NSArray *sellVolumeArray;

}
- (NSArray *)BuyPriceArray {
    return buyPriceArray;
}

- (NSArray *)SellPriceArray {
    return sellPriceArray;
}

- (NSArray *)BuyVolumeArray {
    return buyVolumeArray;
}

- (NSArray *)SellVolumeArray {
    return sellVolumeArray;
}

- (NSArray *)BuyDescArray {
    return @[NSLocalizedString(@"买1", nil),NSLocalizedString(@"买2", nil),NSLocalizedString(@"买3", nil),NSLocalizedString(@"买4", nil),NSLocalizedString(@"买5", nil)];
}

- (NSArray *)SellDescArray {
    return @[NSLocalizedString(@"卖5", nil),NSLocalizedString(@"卖4", nil),NSLocalizedString(@"卖3", nil),NSLocalizedString(@"卖2", nil),NSLocalizedString(@"卖1", nil)];
}

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        _dict = dict;
        
        sellPriceArray = @[
                                [self formatFiveRecordTo2Decimal:dict[@"sjw5"]],
                                [self formatFiveRecordTo2Decimal:dict[@"sjw4"]],
                                [self formatFiveRecordTo2Decimal:dict[@"sjw3"]],
                                [self formatFiveRecordTo2Decimal:dict[@"sjw2"]],
                                [self formatFiveRecordTo2Decimal:dict[@"sjw1"]],
                                ];
        
        buyPriceArray = @[
                           [self formatFiveRecordTo2Decimal:dict[@"bjw1"]],
                           [self formatFiveRecordTo2Decimal:dict[@"bjw2"]],
                           [self formatFiveRecordTo2Decimal:dict[@"bjw3"]],
                           [self formatFiveRecordTo2Decimal:dict[@"bjw4"]],
                           [self formatFiveRecordTo2Decimal:dict[@"bjw5"]],
                           ];
        
        sellVolumeArray = @[
                          [self formatFiveRecordTo0Decimal:dict[@"ssl5"]],
                          [self formatFiveRecordTo0Decimal:dict[@"ssl4"]],
                          [self formatFiveRecordTo0Decimal:dict[@"ssl3"]],
                          [self formatFiveRecordTo0Decimal:dict[@"ssl2"]],
                          [self formatFiveRecordTo0Decimal:dict[@"ssl1"]],
                          ];
        
        buyVolumeArray = @[
                            [self formatFiveRecordTo0Decimal:dict[@"bsl1"]],
                            [self formatFiveRecordTo0Decimal:dict[@"bsl2"]],
                            [self formatFiveRecordTo0Decimal:dict[@"bsl3"]],
                            [self formatFiveRecordTo0Decimal:dict[@"bsl4"]],
                            [self formatFiveRecordTo0Decimal:dict[@"bsl5"]],
                            ];
    }
    return self;
}


- (NSString *)formatFiveRecordTo2Decimal:(NSString *)data {
    return [data floatValue] > 0 ? [NSString stringWithFormat:@"%.2f", [data floatValue]] : @"--";
}

- (NSString *)formatFiveRecordTo0Decimal:(NSString *)data {
    return [data floatValue] > 0 ? [NSString stringWithFormat:@"%.0f", [data floatValue]/100.f] : @"--";
}
@end
