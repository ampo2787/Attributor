//
//  AttributorViewController.m
//  Attributor
//
//  Created by JihoonPark on 18/10/2018.
//  Copyright © 2018 JihoonPark. All rights reserved.
//

#import "AttributorViewController.h"

@interface AttributorViewController ()

@end


@implementation AttributorViewController


#pragma mark - Action

- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender {
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName value:sender.backgroundColor range:self.body.selectedRange];
}

- (IBAction)outlineBodySelection:(id)sender {
    //[self.body.textStorage addAttributes:@{ NSStrokeWidthAttributeName : @-3, NSStrokeWidthAttributeName : [UIColor blackColor] } range:self.body.selectedRange];
    [self.body.textStorage addAttribute:NSStrokeWidthAttributeName value:@-3 range:self.body.selectedRange];

}
- (IBAction)unoutlineBodySelect:(id)sender {
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName range:self.body.selectedRange];
}

#pragma mark - View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self usePreferredFonts];
}

- (void)usePreferredFonts{
    self.body.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.headline.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
