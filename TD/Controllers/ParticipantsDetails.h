//
//  ParticipantsDetails.h
//  TD
//
//  Created by econfig on 12/4/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Participants.h"

@interface ParticipantsDetails : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgDetails;
@property (weak, nonatomic) IBOutlet UILabel *nameDetails;
@property (weak, nonatomic) IBOutlet UITextView *decriptionDetails;


@property (weak, nonatomic) ParticipantsCellComponent *participantsCellComponent;

@end
