//
//  WARQRView.h
//  WARQRCode
//
//  Created by Warif Akhand Rishi on 9/3/15.
//  Copyright (c) 2015 war. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WARQRViewDelegate <NSObject>
- (void)didOutputMetadataString:(NSString *)qrString;
@end


@interface WARQRView : UIView

@property (nonatomic, assign) id<WARQRViewDelegate> delegate;

- (instancetype)initWithView:(UIView *)view;
- (void)startStopReading;

@end
