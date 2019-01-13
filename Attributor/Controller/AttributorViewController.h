//
//  AttributorViewController.h
//  Attributor
//
//  Created by JihoonPark on 18/10/2018.
//  Copyright © 2018 JihoonPark. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AttributorViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UITextView *body;
@property (weak, nonatomic) IBOutlet UIButton *outlineButton;
@property (weak, nonatomic) IBOutlet UIButton *unoutlineButton;

- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender;
- (IBAction)outlineBodySelection:(id)sender;
- (IBAction)unoutlineBodySelect:(id)sender;

@end

NS_ASSUME_NONNULL_END
