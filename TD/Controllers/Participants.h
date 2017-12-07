//
//  ParticipantsViewController.h
//  TD
//
//  Created by Walter Gonzalez Domenzain on 29/11/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Participants : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *participantTableView;

@end

@interface ParticipantsCellComponent : NSObject

@property (weak, nonatomic) NSString *participantName;
@property (weak, nonatomic) NSString *participantDescription;
@property (weak, nonatomic) NSString *participantColor;
@property (weak, nonatomic) NSString *participantURL;
@property (weak, nonatomic) UIImage *image;

@end






