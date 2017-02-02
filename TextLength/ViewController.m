//
//  ViewController.m
//  TextLength
//
//  Created by Ferrakkem Bhuiyan on 2/2/17.
//  Copyright © 2017 Ferrakkem Bhuiyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel *myLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
#pragma mark ::: call_createLabel
    [self createLabel];
}

#pragma mark ::: Create Label
-(void)createLabel
{
    NSLog(@"HI");
    myLabel = [[UILabel alloc] init];
    NSString *messages = @"Some dynamic text for label";
    
    //set the text and style if any
    myLabel.text = messages;
    myLabel.numberOfLines = 0;
    
    CGSize maximumLabelSize = CGSizeMake(280, 9999); //280:max width of label and 9999-max height of label.
    
    // use font information from the UILabel to calculate the size
    CGSize expectedLabelSize = [myLabel sizeThatFits:maximumLabelSize];
    
    // create a frame that is filled with the UILabel frame data
    CGRect newFrame = myLabel.frame;
    
    // resizing the frame to calculated size
    newFrame.size.height = expectedLabelSize.height;
    
    // put calculated frame into UILabel frame
    myLabel.frame = newFrame;
    
    [self.view addSubview:myLabel];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
