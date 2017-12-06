//
//  ParticipantsDetails.m
//  TD
//
//  Created by econfig on 12/4/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import "ParticipantsDetails.h"
#import "Participants.h"

@interface ParticipantsDetails ()

@end

@implementation ParticipantsDetails

@synthesize participantsCellComponent;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initController];
    
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    NSLog(@"Init with  %@", participantsCellComponent.participantName);
    //_imageMain.image = participantsCellComponent.imgURL;
    //_lblName.text = participantsCellComponent.participantName;
    //_textViewDetails.text = participantsCellComponent.participantDescription;
}
- (IBAction)backBtn:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
