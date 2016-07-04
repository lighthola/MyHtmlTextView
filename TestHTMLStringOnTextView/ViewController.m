//
//  ViewController.m
//  TestHTMLStringOnTextView
//
//  Created by Bevis Chen on 7/4/16.
//  Copyright © 2016 Bevis Chen. All rights reserved.
//

#import "ViewController.h"

#import "UITextView+ShowHTMLString.h"

@interface ViewController ()
{
    __weak IBOutlet UITextView *thisTextView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSString *testHtmlString = @"<h1>大家照過來！！</h1><p><font color='#65e7c9'><u><strike><i>說明頁測試</i></strike></u></font></p><br>";
    NSString *testHtmlString = @"&lt;p&gt;&lt;font color='#00ff00'&gt;&lt;u&gt;&lt;strike&gt;&lt;i&gt;說明頁測試&lt;/i&gt;&lt;/strike&gt;&lt;/u&gt;&lt;/font&gt;&lt;/p&gt;&lt;br&gt;";
    
    [thisTextView setAttributedTextAndDecodeHtmlString:testHtmlString stringByConvertingHTMLToPlainText:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
