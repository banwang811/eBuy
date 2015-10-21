//
//  CustomKeyboardNumberPadReturnTextField.m
//  SuningEBuy
//
//  Created by chupeng on 14-5-30.
//  Copyright (c) 2014年 Suning. All rights reserved.
//

#import "CustomKeyboardNumberPadReturnTextField.h"
#import <SSA_IOS/SSAIOSSNDataCollection.h>

@implementation CustomKeyboardNumberPadReturnTextField
- (id)init
{
    self = [super init];
    
    if (self)
    {
        [self initData];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self initData];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        [self initData];
    }
    return self;
}


- (void)initData{
    self.borderRect = CGRectZero;
    self.textRect = CGRectZero;
    self.placeholderRect = CGRectZero;
    self.editingRect = CGRectZero;
    self.clearButtonRect = CGRectZero;
    self.leftViewRect = CGRectZero;
    self.rightViewRect = CGRectZero;
}


- (CGRect)borderRectForBounds:(CGRect)bounds{
    
    CGRect arect = [super borderRectForBounds:bounds];
    
    if (CGRectEqualToRect(self.borderRect, CGRectZero)) {
        
        return  arect;
        
    }else{
        
        return self.borderRect;
    }
}

- (CGRect)textRectForBounds:(CGRect)bounds{
    
    CGRect arect = [super textRectForBounds:bounds];
    
    if (CGRectEqualToRect(self.textRect, CGRectZero)) {
        
        return  arect;
        
    }else{
        return CGRectInset(bounds, 0, 0);
        //return self.textRect;
    }
}
- (BOOL)canBecomeFirstResponder
{
    [super canBecomeFirstResponder];
    [SSAIOSSNDataCollection CustomEventCollection:@"click" keyArray: [NSArray arrayWithObjects:@"clickno", nil]valueArray: [NSArray arrayWithObjects:[NSString stringWithFormat:@"83090%d",self.tag-1000], nil]];
    return YES;
}
- (CGRect)placeholderRectForBounds:(CGRect)bounds{
    
    CGRect arect = [super placeholderRectForBounds:bounds];
    
    if (CGRectEqualToRect(self.placeholderRect, CGRectZero)) {
        
        return  arect;
        
    }else{
        
        return self.placeholderRect;
    }
}

- (CGRect)editingRectForBounds:(CGRect)bounds{
    
    CGRect arect = [super editingRectForBounds:bounds];
    
    if (CGRectEqualToRect(self.editingRect, CGRectZero)) {
        
        return  arect;
        
    }else{
        
        return self.editingRect;
    }
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds{
    
    CGRect arect = [super clearButtonRectForBounds:bounds];
    
    if (CGRectEqualToRect(self.clearButtonRect, CGRectZero)) {
        
        return  arect;
        
    }else{
        
        return self.clearButtonRect;
        
    }
    
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds{
    
    CGRect arect = [super leftViewRectForBounds:bounds];
    
    if (CGRectEqualToRect(self.leftViewRect, CGRectZero)) {
        
        return  arect;
        
    }else{
        
        return self.leftViewRect;
    }
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds{
    
    CGRect arect = [super rightViewRectForBounds:bounds];
    
    if (CGRectEqualToRect(self.rightViewRect, CGRectZero)) {
        
        return  arect;
        
    }else{
        return self.rightViewRect;
    }
}



@end
