//
//  SayWhatViewController.h
//  Say What
//
//  Created by Sam La on 8/13/17.
//  Copyright © 2017 Sam La. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface SayWhatViewController : UIViewController
@property (strong, nonatomic) AVAudioPlayer *player;

-(void)playSound:(NSString*)soundName;

@end
