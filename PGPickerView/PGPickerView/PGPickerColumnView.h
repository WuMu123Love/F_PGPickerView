//
//  PGPickerColumnView.h
//  PGPickerView
//
//  Created by piggybear on 2017/7/26.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PGPickerEnum.h"
@protocol PGPickerColumnViewDelegate;

@interface PGPickerColumnView : UIView
@property (nonatomic, weak) id<PGPickerColumnViewDelegate> delegate;
@property (nonatomic, strong) NSArray *datas;
@property (nonatomic, assign) NSUInteger component;
@property (nonatomic, assign) NSUInteger selectedRow;
@property (nonatomic, strong) NSArray<UIColor *> *viewBackgroundColors;
@property (nonatomic, assign) BOOL refresh;
@property (nonatomic, assign) PGPickerViewCellType CellType;


//选中
@property (nonatomic, copy) NSString *textOfSelectedRow;
@property (nonatomic, strong)UIColor *textColorOfSelectedRow;
@property(nonatomic, strong) UIFont *textFontOfSelectedRow;
//其他
@property (nonatomic, strong)UIColor *textColorOfOtherRow;
@property(nonatomic, strong) UIFont *textFontOfOtherRow;

@property(nonatomic, assign) BOOL isHiddenWheels;//弧度
@property(nonatomic, assign) BOOL isCycleScroll;//无限滚动

- (instancetype)initWithFrame:(CGRect)frame rowHeight:(CGFloat)rowHeight upLineHeight:(CGFloat)upLineHeight downLineHeight:(CGFloat)downLineHeight isCycleScroll:(BOOL)isCycleScroll datas:(NSArray *)datas;
- (void)selectRow:(NSInteger)row animated:(BOOL)animated;
@end

@protocol PGPickerColumnViewDelegate<NSObject>
@optional
- (void)pickerColumnView:(PGPickerColumnView *)pickerColumnView didSelectRow:(NSInteger)row;
- (void)pickerColumnView:(PGPickerColumnView *)pickerColumnView title:(NSString *)title didSelectRow:(NSInteger)row;

- (UIFont *)pickerColumnView:(PGPickerColumnView *)pickerColumnView textFontOfOtherRow:(NSInteger)row InComponent:(NSInteger)component;
- (UIColor *)pickerColumnView:(PGPickerColumnView *)pickerColumnView textColorOfOtherRow:(NSInteger)row InComponent:(NSInteger)component;
@end
