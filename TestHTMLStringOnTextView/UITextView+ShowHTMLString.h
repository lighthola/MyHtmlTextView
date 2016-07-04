//
//  UITextView+ShowHTMLString.h
//  TestHTMLStringOnTextView
//
//  Created by Bevis Chen on 7/4/16.
//  Copyright © 2016 Bevis Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (ShowHTMLString)

- (NSMutableAttributedString *)decodeHtmlString:(NSString *)htmlString stringByConvertingHTMLToPlainText:(BOOL)yesOrNo;
-(void)setAttributedTextAndDecodeHtmlString:(NSString*)htmlString stringByConvertingHTMLToPlainText:(BOOL)yesOrNo;

@end
