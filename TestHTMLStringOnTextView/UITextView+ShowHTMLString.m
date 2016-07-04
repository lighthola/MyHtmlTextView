//
//  UITextView+ShowHTMLString.m
//  TestHTMLStringOnTextView
//
//  Created by Bevis Chen on 7/4/16.
//  Copyright © 2016 Bevis Chen. All rights reserved.
//

#import "UITextView+ShowHTMLString.h"

#import "NSString+Addition.h"

@implementation UITextView (ShowHTMLString)

- (NSMutableAttributedString *)decodeHtmlString:(NSString *)htmlString stringByConvertingHTMLToPlainText:(BOOL)yesOrNo {
    
    /*
     &lt;p&gt;&lt;font color='#006400'&gt;&lt;u&gt;&lt;strike&gt;&lt;i&gt;說明頁測試&lt;/i&gt;&lt;/strike&gt;&lt;/u&gt;&lt;/font&gt;&lt;/p&gt;&lt;br&gt;
     
     <p><font color='#006400'><u><strike><i>說明頁測試</i></strike></u></font></p><br>
     */
    // If YES, Translate Html String to Text
    if (yesOrNo) {
        htmlString = [htmlString stringByConvertingHTMLToPlainText];
    }
    
    NSData *stringData = [htmlString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary *options = @{NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute:@(NSUTF8StringEncoding)};
    
    NSMutableAttributedString *decodedAttributedString;
    decodedAttributedString = [[NSMutableAttributedString alloc]
                               initWithData:stringData
                               options:options
                               documentAttributes:nil
                               error:nil];
    return decodedAttributedString;
}

-(void)setAttributedTextAndDecodeHtmlString:(NSString*)htmlString stringByConvertingHTMLToPlainText:(BOOL)yesOrNo {
    
    NSMutableAttributedString *decodedAttributedString = [self decodeHtmlString:htmlString stringByConvertingHTMLToPlainText:yesOrNo];
    self.attributedText = decodedAttributedString;
}

@end
