//
//  ViewController.m
//  Demo_Audio_1
//
//  Created by csning－pc on 15/8/26.
//  Copyright (c) 2015年 csning. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (nonatomic,assign) SystemSoundID systemID;


@property(nonatomic,strong) AVAudioPlayer *player;

@end

@implementation ViewController

- (AVAudioPlayer *)player {
    if (!_player) {
        
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"Liekkas.mp3" withExtension:nil];
        
        _player = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
        
    }
    return _player;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)playShortSound:(id)sender {
    
    //播放短音频
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"audio" ofType:@"wav"];
    NSURL *soundUrl = [NSURL fileURLWithPath:soundPath];
    
    //创建systemSoundID
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)(soundUrl), &_systemID);
    //播放
    AudioServicesPlaySystemSound(_systemID);
    
}
- (IBAction)playAudio:(id)sender {
    //
    [self.player play];
    
    
    
    
}
- (IBAction)pauseAudio:(id)sender {
    if (self.player.playing) {
        [self.player pause];
    }
    
    
}
- (IBAction)cancelAudio:(id)sender {
    [self.player stop];
    self.player = nil;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
