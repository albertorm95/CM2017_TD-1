//
//  ParticipantsViewController.m
//  TD
//
//  Created by Walter Gonzalez Domenzain on 29/11/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import "Participants.h"
#import "participantsCellComponent.h"
#import "ParticipantsDetails.h"

@interface Participants ()

@property (strong, nonatomic) NSMutableArray<ParticipantsCellComponent *> *listaParticipantes;

@end

@implementation Participants

int indice=0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    _listaParticipantes = [[NSMutableArray alloc] init];
    
    ParticipantsCellComponent *c1=[[ParticipantsCellComponent alloc] init];
    
    c1.participantName=@"Inteligencia Artificial";
    c1.participantDescription=@"¿Es posible construir máquinas inteligentes? ¿Es el cerebro una máquina? Estas dos preguntas han sido la obsesión de grandes pensadores durante siglos. Pero con el desarrollo de la inteligencia artificial, ambas cuestiones se han acercado e incluso se han unificado pues utilizan los mismos conceptos, técnicas y experimentos en los intentos de diseñar máquinas inteligentes y en investigar la naturaleza de la mente. El objetivo último de la inteligencia artificial —lograr que una máquina tenga una inteligencia de tipo general similar a la humana— es de los más ambiciosos que se ha planteado la ciencia. Por su dificultad, es comparable a otros grandes objetivos científicos como explicar el origen de la vida, el del universo o conocer la estructura de la materia. Actualmente, todavía sabemos poco acerca del cerebro; sin embargo, estamos siguiendo un camino que pasa por considerarlo un sistema computacional y hemos empezado a explorar el espacio de posibles modelos computacionales que permitan emular su funcionamiento.";
    
    //c1.image=[UIImage imageNamed:@"Artificial-Intelligence.jpg"];
    
    //c1.image= [UIImage imageNamed:@"imagen jpg"]; // EDGE example
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    
    [_listaParticipantes addObject:c1];
    
    [self.participantTableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _listaParticipantes.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
    //return 64    ;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellComponents *cell = (cellComponents *)[tableView dequeueReusableCellWithIdentifier:@"participantsCellComponent"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"participantsCellComponent" bundle:nil] forCellReuseIdentifier:@"participantsCellComponent"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"participantsCellComponent"];
    }
    //Fill cell with info from arrays
    ParticipantsCellComponent *comp = [_listaParticipantes objectAtIndex:indexPath.row];
    
    cell.lblName.text = comp.participantName;
    //if(comp.image != nil)
    //    cell.imageCell.image=comp.image;
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    indice=(int)indexPath.row;
    NSLog(@"==>didSelectRowAtIndexPath %li",(long)indexPath.row);
    
    [self performSegueWithIdentifier:@"segueComponentsToDetails" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"_EDGE_ prepareForSegue... ");
    ParticipantsDetails *cd = [segue destinationViewController];
    ParticipantsCellComponent *comp = [_listaParticipantes objectAtIndex:indice];
    
    cd.participantsCellComponent=comp;
}

@end

@implementation ParticipantsCellComponent

@end
