//
//  ViewController.m
//  PickerViewDemo
//
//  Created by piggybear on 2017/7/26.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import "ViewController.h"
#import "PGPickerView.h"
#import "FLSPickerView.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
@interface ViewController ()<PGPickerViewDelegate, PGPickerViewDataSource>
@property (nonatomic, weak) IBOutlet PGPickerView *pickerView;
@property (nonatomic, strong) NSString *string;
@property (nonatomic, strong) NSArray *datas1;
@property (nonatomic, strong) NSArray *datas2;
@property (nonatomic, strong) NSArray *datas3;
@property (nonatomic, strong) NSArray *datas4;

@end

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FLSPickerView * view = [FLSPickerView backTableViewSectionHeaderViewForFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    [self.view addSubview:view];
    
    
    
//    self.datas1 = @[@"北京", @"上海", @"天津", @"重庆", @"四川", @"贵州", @"云南", @"西藏", @"河南", @"湖北"];
////    self.datas1 = @[@"北京"];
//    self.datas2 = @[@"东城区",@"西城区",@"崇文区",@"宣武区",@"朝阳区",@"丰台区",@"石景山区",@"海淀区",@"门头沟区",@"房山区"];
//    self.datas3 = @[@"黄浦区",@"卢湾区",@"徐汇区",@"长宁区",@"静安区",@"普陀区",@"闸北区",@"虹口区",@"杨浦区",@"宝山区"];
//    self.datas4 = @[@"黄浦区2",@"卢湾区2",@"徐汇区2",@"长宁区2",@"静安区2",@"普陀区2",@"闸北区2",@"虹口区2",@"杨浦区2",@"宝山区2"];
//
//    self.pickerView.delegate = self;
//    self.pickerView.dataSource = self;
//    self.pickerView.type = PGPickerViewLineTypelineVertical;
//
////    [self.pickerView selectRow:0 inComponent:0 animated:true];
////    [self.pickerView selectRow:0 inComponent:1 animated:true];
////    [self.pickerView selectRow:0 inComponent:2 animated:true];
//
//    self.pickerView.rowHeight = 45;
//    self.pickerView.isHiddenMiddleText = NO;
//    self.pickerView.middleTextColor = [UIColor redColor];
//    self.pickerView.middleTextFont = [UIFont systemFontOfSize:20];
//    self.pickerView.isCycleScroll = NO;
//    self.pickerView.isHiddenWheels = YES;
//    self.pickerView.textFontOfSelectedRow = [UIFont boldSystemFontOfSize:21];
//
//    //设置线条的颜色
//    self.pickerView.lineBackgroundColor = [UIColor yellowColor];
//    //设置选中行的字体颜色
//    self.pickerView.textColorOfSelectedRow = [UIColor blueColor];
//    //设置未选中行的字体颜色
//    self.pickerView.textColorOfOtherRow = [UIColor blackColor];
}

//#pragma UIPickerViewDataSource
//- (NSInteger)numberOfComponentsInPickerView:(PGPickerView *)pickerView {
//    return 1;
//}
//
//- (NSInteger)pickerView:(PGPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
//    return self.datas1.count;
//}
//#pragma UIPickerViewDelegate
//- (nullable NSString *)pickerView:(PGPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
//    if (component == 0) {
//        return self.datas1[row];
//    }
//    if (component == 1) {
//        return self.datas2[row];
//    }
//    return self.datas3[row];
//}
//
//- (void)pickerView:(PGPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
//
//
//}
//- (UIColor *)pickerView:(PGPickerView *)pickerView upLineBackgroundColorForComponent:(NSInteger)component;{
//
//    return [UIColor redColor];
//}
//- (UIColor *)pickerView:(PGPickerView *)pickerView downLineBackgroundColorForComponent:(NSInteger)component;{
//
//    return [UIColor redColor];
//
//}
@end
