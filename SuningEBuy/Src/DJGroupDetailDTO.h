//
//  DJGroupDetailDTO.h
//  SuningEBuy
//
//  Created by xie wei on 13-7-9.
//  Copyright (c) 2013年 Suning. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DJGroupDetailDTO : NSObject

@property (nonatomic, copy) NSString  *grpPurId;
@property (nonatomic, copy) NSString  *warmupTime;
@property (nonatomic, copy) NSString  *startTime;
@property (nonatomic, copy) NSString  *endTime;

@property (nonatomic, copy) NSString  *currentTime;
@property (nonatomic, copy) NSString  *partnumber;
@property (nonatomic, copy) NSString  *catentryId;
@property (nonatomic, copy) NSString  *productName;
@property (nonatomic, copy) NSString  *displayPrice;

@property (nonatomic, copy) NSString  *virtualQty;
@property (nonatomic, copy) NSString  *maxQty;
@property (nonatomic, copy) NSString  *usedQty;
@property (nonatomic, copy) NSString  *totalQty;

@property (nonatomic, copy) NSString  *netPrice;
@property (nonatomic, copy) NSString  *percentage;
@property (nonatomic, copy) NSString  *adjustAmount;
@property (nonatomic, copy) NSString  *startFlag;

@property (nonatomic, assign) NSTimeInterval startTimeSeconds;
@property (nonatomic, assign) NSTimeInterval endTimeSeconds;

- (void)encodeFromDictionary:(NSDictionary *)dic;

@end
