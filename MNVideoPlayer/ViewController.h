//
//  ViewController.h
//  MNVideoPlayer
//
//  Created by Mrunalini on 10/10/16.
//  Copyright © 2016 Mrunalini Nemade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    AVPlayer *player;
    
    AVPlayerLayer *moviePlayerLayer;
    
    NSURL *fileURL;
}
@property (strong, nonatomic) IBOutlet UIButton *playButton;

@property (strong, nonatomic) IBOutlet UIButton *stopButton;

- (IBAction)actionPlay:(id)sender;

- (IBAction)actionStop:(id)sender;

@end

