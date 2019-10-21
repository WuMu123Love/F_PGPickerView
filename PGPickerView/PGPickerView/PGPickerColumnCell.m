//
//  PGPickerColumnCell.m
//  PGPickerView
//
//  Created by piggybear on 2017/7/26.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import "PGPickerColumnCell.h"

@interface PGPickerColumnCell()
@property(nonatomic,strong) UIView *  subView;
@property(nonatomic,strong) UILabel * oneLable;
@property(nonatomic,strong) UILabel * twoLable;
@end

@implementation PGPickerColumnCell

#define kContentFont 17

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        self.cellType = PGPickerViewCellTypeDefault;
    }
    return self;
}

- (void)transformWith:(CGFloat)angle scale:(CGFloat)scale {
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DRotate(transform, angle, 1, 0, 0);
    transform = CATransform3DScale(transform, scale, scale, scale);
    self.layer.transform = transform;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self createUI];
}
- (void)createUI{
    if (self.cellType == PGPickerViewCellTypeDefault) {
        self.label.frame = self.contentView.bounds;
    }else if (self.cellType == PGPickerViewCellTypeTwoItem){
        self.subView.frame = self.contentView.bounds;
        self.oneLable.frame = CGRectMake(0, 0, self.contentView.bounds.size.width/2, self.contentView.bounds.size.height);
        self.twoLable.frame =CGRectMake(self.contentView.bounds.size.width/2, 0, self.contentView.bounds.size.width/2, self.contentView.bounds.size.height);
    }
}

#pragma Getter

- (UIView *)subView{
    if (!_subView) {
        _subView  = [[UIView alloc] initWithFrame:self.contentView.bounds];
        [self.contentView addSubview:_subView];
    }
    return _subView;
}

- (UILabel *)oneLable{
    if (!_oneLable) {
        _oneLable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.contentView.bounds.size.width/2, self.contentView.bounds.size.height)];
        _oneLable.font = [UIFont systemFontOfSize:kContentFont];
        _oneLable.textAlignment = NSTextAlignmentCenter;
        [self.subView addSubview:_oneLable];
        
    }
    return _oneLable;
}
- (UILabel *)twoLable{
    if (!_twoLable) {
        _twoLable = [[UILabel alloc]initWithFrame:CGRectMake(self.contentView.bounds.size.width/2, 0, self.contentView.bounds.size.width/2, self.contentView.bounds.size.height)];
        _twoLable.font = [UIFont systemFontOfSize:kContentFont];
        _twoLable.textAlignment = NSTextAlignmentCenter;
        [self.subView addSubview:_twoLable];
    }
    return _twoLable;
}


- (UILabel *)label {
    if (!_label) {
        UILabel *label = [[UILabel alloc]initWithFrame:self.contentView.bounds];
        label.font = [UIFont systemFontOfSize:kContentFont];
        label.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:label];
        _label = label;
    }
    return _label;
}
- (void)setAttributedText:(NSAttributedString *)attributedText{
    _attributedText = attributedText;
    if (self.cellType == PGPickerViewCellTypeDefault) {
        self.label.attributedText = attributedText;
    }else if (self.cellType == PGPickerViewCellTypeTwoItem){
        NSString * anotherStr = [attributedText string];
        NSArray * strArr = [anotherStr componentsSeparatedByString:@"-"];
        if (strArr.count == 2) {
            self.oneLable.attributedText = [[NSAttributedString alloc]initWithString:strArr[0]];
            self.twoLable.attributedText = [[NSAttributedString alloc]initWithString:strArr[1]];
        }else{
            self.oneLable.attributedText = [[NSAttributedString alloc]initWithString:strArr[0]];
            self.twoLable.attributedText = [[NSAttributedString alloc]initWithString:strArr[0]];
        }
    }
}
- (void)setFont:(UIFont *)font{
    _font = font;
    self.oneLable.font = font;
    self.twoLable.font = font;
    self.label.font = font;
}
- (void)setTextColor:(UIColor *)textColor{
    _textColor = textColor;
    self.oneLable.textColor = textColor;
    self.twoLable.textColor = textColor;
    self.label.textColor = textColor;
}

- (void)setCellType:(PGPickerViewCellType)cellType{
    _cellType = cellType;
//    if (cellType == PGPickerViewCellTypeDefault) {
//        [self.subView removeFromSuperview];
//        self.label.frame = self.contentView.bounds;
//    }else if (cellType == PGPickerViewCellTypeTwoItem){
//        [self.label removeFromSuperview];
//        self.subView.frame = self.contentView.bounds;
//        self.oneLable.frame = CGRectMake(0, 0, self.contentView.bounds.size.width/2, self.contentView.bounds.size.height);
//        self.twoLable.frame =CGRectMake(self.contentView.bounds.size.width/2, 0, self.contentView.bounds.size.width/2, self.contentView.bounds.size.height);
//    }
}

@end
