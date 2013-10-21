//
//  ViewController.h
//  Calculator
//
//  Created by Yifei Zhuang on 2013-10-09.
//  Copyright (c) 2013 Yifei Zhuang. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController

- (IBAction)Botton1Press:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

- (IBAction)numberDot:(id)sender;

- (IBAction)numberZero:(id)sender;
- (IBAction)numberOne:(id)sender;
- (IBAction)numberTwo:(id)sender;

- (IBAction)numberThree:(id)sender;

- (IBAction)numberFour:(id)sender;

- (IBAction)numberFive:(id)sender;
- (IBAction)numberSix:(id)sender;
- (IBAction)numberSeven:(id)sender;

- (IBAction)numberEight:(id)sender;

- (IBAction)numberNine:(id)sender;

- (IBAction)operateDelete:(id)sender;

- (IBAction)operateDivide:(id)sender;

- (IBAction)operateTimes:(id)sender;

- (IBAction)operateMinus:(id)sender;
- (IBAction)operatePlus:(id)sender;
- (IBAction)buttonEquals:(id)sender;


@end
