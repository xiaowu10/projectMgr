//
//  ViewController.m
//  网易UITextFiled
//
//  Created by mac on 16/12/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textFiled=[[UITextField alloc]init];
    self.textFiled.frame=CGRectMake(100, 100, 180, 40);
    self.textFiled.text=@"用户名";
    self.textFiled.font=[UIFont systemFontOfSize:20];
    self.textFiled.textColor=[UIColor blueColor];
    //UITextBorderStyleLine 线框风格
    //UITextBorderStyleNone 无边框风格
    //UITextBorderStyleBezel bezel风格
    //UITextBorderStyleRoundedRect 圆角风格
    self.textFiled.borderStyle=UITextBorderStyleLine;
    //设置虚拟键盘风格
    //UIKeyboardTypeDefault 默认风格
    //UIKeyboardTypeNumberPad 数字风格
    //UIKeyboardTypeNamePhonePad 字母数字风格
    self.textFiled.keyboardType=UIKeyboardAppearanceDefault;
    
    //提示文字信息
    self.textFiled.placeholder=@"请输入用户名.....";
    
    //是否为密码
    self.textFiled.secureTextEntry=YES;
    self.textFiled.delegate=self;
    [self.view addSubview:self.textFiled];
}

//点击空白处回收键盘
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.textFiled resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始编辑");
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"编辑结束");
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return  YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if(self.textFiled.text.length<=8)
    {
        return NO;
    }else{
        return YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
