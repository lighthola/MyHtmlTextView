//
//  UITextView+ShowHTMLString.h
//  TestHTMLStringOnTextView
//
//  Created by Bevis Chen on 7/4/16.
//  Copyright © 2016 Bevis Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (ShowHTMLString)

/*
 // If YES, Translate Html String to Text
 &lt;p&gt;&lt;font color='#006400'&gt;&lt;u&gt;&lt;strike&gt;&lt;i&gt;說明頁測試&lt;/i&gt;&lt;/strike&gt;&lt;/u&gt;&lt;/font&gt;&lt;/p&gt;&lt;br&gt;
 
 <p><font color='#006400'><u><strike><i>說明頁測試</i></strike></u></font></p><br>
*/
- (NSMutableAttributedString *)decodeHtmlString:(NSString *)htmlString stringByConvertingHTMLToPlainText:(BOOL)yesOrNo;
-(void)setAttributedTextAndDecodeHtmlString:(NSString*)htmlString stringByConvertingHTMLToPlainText:(BOOL)yesOrNo;

@end
