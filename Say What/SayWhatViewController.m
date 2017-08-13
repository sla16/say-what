//
//  SayWhatViewController.m
//  Say What
//
//  Created by Sam La on 8/13/17.
//  Copyright © 2017 Sam La. All rights reserved.
//

#import "SayWhatViewController.h"

@interface SayWhatViewController ()

@end

@implementation SayWhatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSound1Tap {
    [self playSound: @"AnotherOne"];
}

- (IBAction)onSound2Tap {
    [self playSound: @"AirHorn"];
}

- (IBAction)onSound3Tap {
    [self playSound: @"Aw"];
}

- (void)playSound: (NSString*)soundName {
    NSString *soundFilePath = [NSString stringWithFormat:@"%@/%@.mp3",
                               [[NSBundle mainBundle] resourcePath], soundName];
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:nil];
    _player.numberOfLoops = 0;
    
    [_player play];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
