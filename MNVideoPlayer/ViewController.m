//
//  ViewController.m
//  MNVideoPlayer
//
//  Created by Mrunalini on 10/10/16.
//  Copyright © 2016 Mrunalini Nemade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    fileURL = [[NSBundle mainBundle]URLForResource:@"bavra" withExtension:@"mp4"];
    
    NSLog(@"%@",fileURL);
    
    player = [[AVPlayer alloc]initWithURL:fileURL];
    
    moviePlayerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionPlay:(id)sender {
    
    UIButton *button = sender;
        if(button.tag == 100)
        {
            button.tag = 101;
            [player play];
    
            [moviePlayerLayer setFrame:CGRectMake(50, 100,300, 500)];
    
            [self.view.layer addSublayer:moviePlayerLayer];
    
                }
        else if(button.tag == 101)
        {
            button.tag =100;
            [player pause];
        }

}

- (IBAction)actionStop:(id)sender {
    [player pause];
    
    player = [[AVPlayer alloc]initWithURL:fileURL];
    moviePlayerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    
}
@end
