//
//  FLSPickerView.m
//  PickerViewDemo
//
//  Created by fls on 2019/8/30.
//  Copyright © 2019年 piggybear. All rights reserved.
//

#import "FLSPickerView.h"
#import "PGPickerView.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
@interface FLSPickerView()<PGPickerViewDelegate, PGPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *PickBackView;
@property(nonatomic,strong) PGPickerView *pickerView ;
@property (nonatomic, strong) NSArray *datas1;
@property(nonatomic,copy) NSString * SelectStr;//选中的标题

@end
@implementation FLSPickerView
+ (FLSPickerView *)backTableViewSectionHeaderViewForFrame:(CGRect)frame{
    FLSPickerView * headerView = [[NSBundle mainBundle] loadNibNamed:@"FLSPickerView" owner:nil options:nil].firstObject;
    headerView.frame = frame;
    headerView.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
    return headerView;
}
- (void)awakeFromNib{
    [super awakeFromNib];
    self.datas1 = @[@"北京-北京", @"上海-北京", @"天津-北京", @"重庆-北京", @"四川-北京", @"贵州-北京", @"云南-北京", @"西藏-北京", @"河南-北京", @"湖北-北京"];
    [self.PickBackView addSubview:self.pickerView];

}

- (PGPickerView *)pickerView{
    if (!_pickerView) {
        _pickerView = [[PGPickerView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth-100, 200)];
        _pickerView.delegate = self;
        _pickerView.dataSource = self;
        _pickerView.cellType = PGPickerViewCellTypeTwoItem;
        _pickerView.type = PGPickerViewLineTypelineSegment;
        [_pickerView selectRow:0 inComponent:0 animated:YES];
        _pickerView.rowHeight = 45;
        _pickerView.isHiddenMiddleText = NO;
        _pickerView.middleTextColor = [UIColor redColor];
        _pickerView.middleTextFont = [UIFont systemFontOfSize:20];
        _pickerView.isCycleScroll = NO;
        _pickerView.isHiddenWheels = YES;
        _pickerView.textFontOfSelectedRow = [UIFont boldSystemFontOfSize:21];
        
        //设置线条的颜色
        _pickerView.lineBackgroundColor = [UIColor clearColor];
        //设置选中行的字体颜色
        _pickerView.textColorOfSelectedRow = [UIColor blueColor];
        //设置未选中行的字体颜色
        _pickerView.textColorOfOtherRow = [UIColor blackColor];
    }
    return _pickerView;
    
}
#pragma UIPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(PGPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(PGPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.datas1.count;
}
#pragma UIPickerViewDelegate
- (nullable NSString *)pickerView:(PGPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
        return self.datas1[row];
}

- (void)pickerView:(PGPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    
}
- (void)pickerView:(PGPickerView *)pickerView title:(NSString *)title didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.SelectStr = title;
}
- (UIColor *)pickerView:(PGPickerView *)pickerView upLineBackgroundColorForComponent:(NSInteger)component;{
    return [UIColor redColor];
}
- (UIColor *)pickerView:(PGPickerView *)pickerView downLineBackgroundColorForComponent:(NSInteger)component;{
   
    return [UIColor redColor];
}
- (IBAction)shureBtn:(id)sender {
//    [self removeFromSuperview];
    NSLog(@"%@",self.SelectStr);
}

- (IBAction)cancelBtn:(id)sender {
    [self removeFromSuperview];
}



@end
