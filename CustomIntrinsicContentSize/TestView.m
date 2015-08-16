//
//  TestView.m
//  AutoLayout
//
//  Created by weida on 15/8/13.
//  Copyright (c) 2015年 weida. All rights reserved.
//

#import "TestView.h"

@interface TestView ()
{
    UIImageView *imageView;
    UILabel     *title;
}
@end

@implementation TestView

-(instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setupSubView];
    }
    return self;
}

-(void)setupSubView
{
    title = [[UILabel alloc]init];
    title.translatesAutoresizingMaskIntoConstraints = NO;
    title.textColor = [UIColor blackColor];
    title.font = [UIFont systemFontOfSize:14];
    title.numberOfLines = 0;
    title.text = self.params[@"text"];
    
    [self addSubview:title];
    
   // [title setContentHuggingPriority:UILayoutPriorityDefaultLow+1 forAxis:UILayoutConstraintAxisHorizontal];
    
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:0];
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1 constant:0];

    
    [self addConstraints:@[top,leading]];
    
    imageView = [[UIImageView alloc]init];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    imageView.image = [UIImage imageNamed:self.params[@"image"]];
    [self addSubview:imageView];
    
    //[imageView setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    
    NSLayoutConstraint *EdgeTraing = [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    
    NSLayoutConstraint *Vspace = [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:title attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    NSLayoutConstraint *leading2 = [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
    NSLayoutConstraint *traing2 = [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    
    [self addConstraints:@[Vspace,leading2,traing2,bottom,EdgeTraing]];
    
}

-(void)setParams:(NSDictionary *)params
{
    _params = params;
    
    title.text = params[@"text"];
    
    imageView.image = [UIImage imageNamed:params[@"image"]];
    
}

-(CGSize)intrinsicContentSize
{
    CGSize imageSize = imageView.intrinsicContentSize;
    
    title.preferredMaxLayoutWidth = imageSize.width;
    
    CGSize titleSize = title.intrinsicContentSize;
    
    CGSize size = CGSizeMake(imageSize.width, imageSize.height + titleSize.height);
    
    return size;
}

@end
