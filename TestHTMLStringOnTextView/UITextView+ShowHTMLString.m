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
