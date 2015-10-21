//
//  HomeTopScrollAdDTO.m
//  SuningEBuy
//
//  Created by wei xie on 12-8-21.
//  Copyright (c) 2012年 Suning. All rights reserved.
//

#import "HomeTopScrollAdDTO.h"

#define  kHttpResponseHomeTopScrollAdId           @"advertisementId"
#define  kHttpResponseHomeTopScrollPositon        @"position"
#define  kHttpResponseHomeTopScrollModel          @"model"
#define  kHttpResponseHomeTopScrollActiveName     @"activeName"
#define  kHttpResponseHomeTopScrollBigImageURL    @"bigImage"
#define  kHttpResponseHomeTopScrollInnerImageURL  @"innerImage"
#define  kHttpResponseHomeTopScrollInnerImageWebURL @"innerImageURL"
#define  kHttpResponseHomeTopScrollDefine         @"define"
#define  kHttpResponseHomeTopScrollBackGroundURL  @"background"
#define  kHttpResponseHomeTopScrollActiveRule     @"activeRule"

@implementation HomeTopScrollAdDTO

@synthesize advertiseId = advertiseId_;
@synthesize position = position_;
@synthesize model = model_;
@synthesize activeName = activeName_;
@synthesize bigImageURL = bigImageURL_;
@synthesize innerImageURL = innerImageURL_;
@synthesize define = define_;
@synthesize backgroundURL = backgroundURL_;
@synthesize activeRule = activeRule_;

-(void)dealloc
{
    TT_RELEASE_SAFELY(advertiseId_);
    TT_RELEASE_SAFELY(position_);
    TT_RELEASE_SAFELY(model_);
    TT_RELEASE_SAFELY(activeName_);
    TT_RELEASE_SAFELY(bigImageURL_);
    TT_RELEASE_SAFELY(innerImageURL_);
    TT_RELEASE_SAFELY(define_);
    TT_RELEASE_SAFELY(backgroundURL_);
    TT_RELEASE_SAFELY(activeRule_);
}

-(void)encodeFromDictionary:(NSDictionary *)dic
{
	if (![dic isKindOfClass:[NSDictionary class]]) {
        return;
    }
    
	NSString *aAdId  = [dic objectForKey:kHttpResponseHomeTopScrollAdId];
	NSString *aPosition    = [dic objectForKey:kHttpResponseHomeTopScrollPositon];
	NSString *aModel    = [dic objectForKey:kHttpResponseHomeTopScrollModel];
	NSString *aActiveName   = [dic objectForKey:kHttpResponseHomeTopScrollActiveName];
	NSString *aBigImageURL    = [[dic objectForKey:kHttpResponseHomeTopScrollBigImageURL] trim];
	NSString *aInnerImageURL = [dic objectForKey:kHttpResponseHomeTopScrollInnerImageURL];
    NSString *aInnerImageWebURL = [dic objectForKey:kHttpResponseHomeTopScrollInnerImageWebURL];
    NSString *aDefine   = [dic objectForKey:kHttpResponseHomeTopScrollDefine];
    NSString *aBackGroundURL   = [dic objectForKey:kHttpResponseHomeTopScrollBackGroundURL];
    NSString *aActiveRule   = [dic objectForKey:kHttpResponseHomeTopScrollActiveRule];

	if(NotNilAndNull(aAdId)){
		self.advertiseId = aAdId;
	}else{
        self.advertiseId = @"";
    }
        
	if (NotNilAndNull(aPosition)) {
		self.position = aPosition;
	}else{
    
        self.position = @"";
    }
    
    if (NotNilAndNull(aModel)) {
		self.model = aModel;
	}else{
        self.model = @"";
    }
    
    if (NotNilAndNull(aActiveName)) {
		self.activeName = aActiveName;
	}else{
    
        self.activeName = @"";
    }
    
    if (NotNilAndNull(aBigImageURL)) {
        //八连版换图片，以前返回url中添加_new类似http://sit1image1.suning.cn/images/0/001_new.JPG
        NSString *bigImage ;
        if (aBigImageURL.length > 8) {
            bigImage = [NSString stringWithFormat:@"%@_236%@",[aBigImageURL substringWithRange:NSMakeRange(0, aBigImageURL.length - 4)],[aBigImageURL substringWithRange:NSMakeRange(aBigImageURL.length - 4,4)]];
        }else{
            bigImage = aBigImageURL;
        }
		self.bigImageURL = [bigImage trim];
	}else{
    
        self.bigImageURL = @"";
    }
    
    if (NotNilAndNull(aInnerImageURL)) {
		self.innerImageURL = [aInnerImageURL trim];
	}else{
    
        self.innerImageURL = @"";
    }
    
    //add by chupeng, 增加图片跳转url 2013-11-28
    if (NotNilAndNull(aInnerImageWebURL))
    {
        self.innerImageWebURL = [aInnerImageWebURL trim];
    }
    else
    {
        self.innerImageWebURL = @"";
    }
    
    if (NotNilAndNull(aDefine)) {
		self.define = aDefine;
	}else{
    
        self.define = @"";
    }
    
    if (NotNilAndNull(aBackGroundURL)) {
		self.backgroundURL = [aBackGroundURL trim];
	}else{
    
        self.backgroundURL = @"";
    }
    
    if (NotNilAndNull(aActiveRule) && ![aActiveRule isEqualToString:@"null"]) {
		self.activeRule = aActiveRule;
	}else{
    
        self.activeRule = @"";
    }
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.advertiseId forKey:@"advertiseId"];
    [coder encodeObject:self.position forKey:@"position"];
    [coder encodeObject:self.model forKey:@"model"];
    [coder encodeObject:self.activeName forKey:@"activeName"];
    [coder encodeObject:self.bigImageURL forKey:@"bigImageURL"];
    [coder encodeObject:self.innerImageURL forKey:@"innerImageURL"];
    [coder encodeObject:self.innerImageWebURL forKey:@"innerImageWebURL"];
    [coder encodeObject:self.define forKey:@"define"];
    [coder encodeObject:self.backgroundURL forKey:@"backgroundURL"];
    [coder encodeObject:self.activeRule forKey:@"activeRule"];
}

- (id)initWithCoder:(NSCoder *)coder
{
    if (self = [super init])
    {
         self.advertiseId = [coder decodeObjectForKey:@"advertiseId"];
         self.position = [coder decodeObjectForKey:@"position"];
         self.model = [coder decodeObjectForKey:@"model"];
         self.activeName = [coder decodeObjectForKey:@"activeName"];
         self.bigImageURL = [coder decodeObjectForKey:@"bigImageURL"];
         self.innerImageURL = [coder decodeObjectForKey:@"innerImageURL"];
         self.innerImageWebURL = [coder decodeObjectForKey:@"innerImageWebURL"];
         self.define = [coder decodeObjectForKey:@"define"];
         self.backgroundURL = [coder decodeObjectForKey:@"backgroundURL"];
         self.activeRule = [coder decodeObjectForKey:@"activeRule"];
    }
    
    return self;
}



@end
