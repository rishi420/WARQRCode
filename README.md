# WARQRCode
QR code using iOS SDK library


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
