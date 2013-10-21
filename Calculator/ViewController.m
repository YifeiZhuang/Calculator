//
//  ViewController.m
//  Calculator
//
//  Created by Yifei Zhuang on 2013-10-09.
//  Copyright (c) 2013 Yifei Zhuang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSDecimalNumber  *operator1;
    NSDecimalNumber     *operator2;
    double      calculateNumber2;
    NSString    *displayNumber;
    bool        dotFlag;
    bool        ifOperator1;
    NSDecimalNumber *r;
    char        *operationType;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    displayNumber = [[NSString alloc] init];
    ifOperator1=false;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)numberDot:(id)sender {
    if (dotFlag==false){
        dotFlag=true;
        displayNumber = [displayNumber stringByAppendingString:@"."];
        
    }
    _displayLabel.text=displayNumber;
    
    
}

- (IBAction)numberZero:(id)sender {
    displayNumber = [displayNumber stringByAppendingString:@"0"];
     _displayLabel.text=displayNumber;
}

- (IBAction)numberOne:(id)sender {
    displayNumber = [displayNumber stringByAppendingString:@"1"];
     _displayLabel.text=displayNumber;
}

- (IBAction)numberTwo:(id)sender {
    displayNumber = [displayNumber stringByAppendingString:@"2"];
     _displayLabel.text=displayNumber;
}

- (IBAction)numberThree:(id)sender {
    displayNumber = [displayNumber stringByAppendingString:@"3"];
     _displayLabel.text=displayNumber;
}
- (IBAction)numberFour:(id)sender {
     displayNumber = [displayNumber stringByAppendingString:@"4"];
     _displayLabel.text=displayNumber;
}
- (IBAction)numberFive:(id)sender {
   displayNumber = [displayNumber stringByAppendingString:@"5"];
     _displayLabel.text=displayNumber;
}

- (IBAction)numberSix:(id)sender {
    displayNumber = [displayNumber stringByAppendingString:@"6"];
     _displayLabel.text=displayNumber;
}

- (IBAction)numberSeven:(id)sender {
     displayNumber = [displayNumber stringByAppendingString:@"7"];
     _displayLabel.text=displayNumber;
}

- (IBAction)numberEight:(id)sender {
 
     displayNumber = [displayNumber stringByAppendingString:@"8"];
     _displayLabel.text=displayNumber;
}

- (IBAction)numberNine:(id)sender {
    displayNumber = [displayNumber stringByAppendingString:@"9"];
     _displayLabel.text=displayNumber;
}

- (IBAction)operateDelete:(id)sender {
    operator1=0;
    operator2=0;
    displayNumber=@"";
    _displayLabel.text=displayNumber;
    ifOperator1=false;
}

- (IBAction)operateDivide:(id)sender {
    //displayNumber = [displayNumber stringByAppendingString:@"/"];
    //_displayLabel.text=displayNumber;
    
    if(ifOperator1==false){
        
        ifOperator1=true;
        operator1=[NSDecimalNumber decimalNumberWithString:displayNumber];
        displayNumber=@"";
    }
    else {
        [self calculateResult];
        displayNumber=r.stringValue;
        _displayLabel.text=displayNumber;
        operator1=r;
        displayNumber=@"";
    }
    operationType="/";
   
}

- (IBAction)operateTimes:(id)sender {
    
    if(ifOperator1==false){
        ifOperator1=true;
        operator1=[NSDecimalNumber decimalNumberWithString:displayNumber];
        displayNumber=@"";
    }
    else {
        [self calculateResult];
        displayNumber=r.stringValue;
        _displayLabel.text=displayNumber;
        operator1=r;
        displayNumber=@"";
    }
    operationType="x";
}

- (IBAction)operateMinus:(id)sender {
    
    if(ifOperator1==false){
        ifOperator1=true;
        operator1=[NSDecimalNumber decimalNumberWithString:displayNumber];
        displayNumber=@"";
    }
    else {
         [self calculateResult];
        displayNumber=r.stringValue;
        _displayLabel.text=displayNumber;
        operator1=r;
        displayNumber=@"";
    }
    operationType="-";
}

- (IBAction)operatePlus:(id)sender {
    
    if(ifOperator1==false){
        ifOperator1=true;
        operator1=[NSDecimalNumber decimalNumberWithString:displayNumber];
        displayNumber=@"";
    }
    else {
         [self calculateResult];
        displayNumber=r.stringValue;
        _displayLabel.text=displayNumber;
        operator1=r;
        displayNumber=@"";
    }
    operationType="+";
}

- (IBAction)buttonEquals:(id)sender {
    
    [self calculateResult];
    displayNumber=r.stringValue;
     _displayLabel.text=displayNumber;
    operator1=r;
    displayNumber=@"";
}

- (void) calculateResult
{
    operator2=[NSDecimalNumber decimalNumberWithString:displayNumber];
    
    if (operationType=="+"){
        r=[operator1 decimalNumberByAdding:operator2];
    }
    else if (operationType=="-"){
        r=[operator1 decimalNumberBySubtracting:operator2];
    }
    else if (operationType=="x"){
        r=[operator1 decimalNumberByMultiplyingBy:operator2];
    }
    else if (operationType=="/"){
        r=[operator1 decimalNumberByDividingBy:operator2];
    }
    
}



@end
