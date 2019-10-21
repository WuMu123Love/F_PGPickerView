//
//  PGPickerColumnCell.h
//  PGPickerView
//
//  Created by piggybear on 2017/7/26.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PGPickerEnum.h"
@interface PGPickerColumnCell : UITableViewCell
@property (nonatomic, weak) UILabel *label;
@property(nonatomic,assign) PGPickerViewCellType cellType;
@property(nonatomic,strong) NSAttributedString * attributedText;
@property(nonatomic,strong) UIFont * font;
@property(nonatomic,strong) UIColor * textColor;
- (void)transformWith:(CGFloat)angle scale:(CGFloat)scale;

@end
