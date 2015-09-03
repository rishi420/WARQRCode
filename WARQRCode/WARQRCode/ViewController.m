//
//  ViewController.m
//  WARQRCode
//
//  Created by Warif Akhand Rishi on 9/3/15.
//  Copyright (c) 2015 war. All rights reserved.
//

#import "ViewController.h"
#import "WARQRView.h"

@interface ViewController () <WARQRViewDelegate>

@property (nonatomic, retain) WARQRView *warQRView;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scanButtonAction:(id)sender {
    _warQRView = [[WARQRView alloc] initWithView:self.view]; // The view you want for camera preview
    self.warQRView.delegate = self;
    [self.warQRView startStopReading];
}

#pragma mark - WARQRViewDelegate
- (void)didOutputMetadataString:(NSString *)qrString
{
    NSLog(@"didOutputMetadataString %@", qrString);
}

@end
