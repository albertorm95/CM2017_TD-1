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
    [self setName:(NSString *)_nombre setImg:(NSString *)_imagen setURL:(NSString *)_url setDescripcion:(NSString *)_descripcion];
    
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setName:(NSString *)nombre setImg:(NSString *)imagen setURL:(NSString *)url setDescripcion:(NSString *)descripcion
{
    //_segZapModelo = modelo;
    self.nameDetails.text = [NSString stringWithFormat:@"%@", nombre];
    self.decriptionDetails.text = [NSString stringWithFormat:@"%@", descripcion];
    self.imgDetails.image = [UIImage imageNamed:imagen];
    //self.decriptionDetails.text = [NSString stringWithFormat:@"Modelo %@", modelo];
}


- (IBAction)backBtn:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController setNavigationBarHidden:NO];
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
