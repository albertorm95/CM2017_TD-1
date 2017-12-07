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
    
    NSArray *imagenes = @[
                          @"Alestra.png",
                          @"Alstom.png",
                          @"AMDOCS.png",
                          @"AMEXCAP.png",
                          @"Ayuntamiento.png",
                          @"BBVA_Bancomer.png",
                          @"BOSCH.png",
                          @"CANIETI.png",
                          @"CIDE.png",
                          @"CINVESTAV.gif",
                          @"CISCO.png",
                          @"Citelum.gif",
                          @"City_Banamex.png",
                          @"ccd.png",
                          @"COGNIZANT.png",
                          @"ConsuladoCND.png",
                          @"ConsuladoUSA.png",
                          @"CONTINENTAL.png",
                          @"Dassault System.png",
                          @"DELL.png",
                          @"DELOITTE.png",
                          @"DXC.png",
                          @"Egutz.jpg",
                          @"Engie.png",
                          @"EVOLUTEL.png",
                          @"Flex.png",
                          @"GARTNER.png",
                          @"startip.png",
                          @"GOPAC.png",
                          @"Hemac.png",
                          @"Hackers_and_Founders.png",
                          @"HCL.png",
                          @"HPE.png",
                          @"IBM.png",
                          @"IDC.png",
                          @"IEEE.png",
                          @"IJALTI.png",
                          @"InComSpace.jpg",
                          @"ITESM.png",
                          @"ITESO.png",
                          @"UAG.png",
                          @"UP.png",
                          @"Infineon.png",
                          @"InnoHub.png",
                          @"Intel.png",
                          @"Intkno.png",
                          @"Interlatin.png",
                          @"IOTNET.png",
                          @"ITESM.png",
                          @"ITESO.png",
                          @"Jabil.png",
                          @"JALTEC.png",
                          @"LuxSoft.png",
                          @"Meetroopers.png",
                          @"Megacable.png",
                          @"Microsoft.png",
                          @"Modus_Link.png",
                          @"NXP.png",
                          @"Ooyala.jpg",
                          @"OpenDataSoft.png",
                          @"ORACLE.png",
                          @"Persistent.png",
                          @"Sanmina.png",
                          @"Santander.png",
                          @"Schneider_Electric.png",
                          @"SICYT.jpg",
                          @"Siemens.png",
                          @"SOFTTEK.png",
                          @"STMicro.png",
                          @"Svitla.png",
                          @"Telcel.png",
                          @"Telefonica.png",
                          @"Telmex.png",
                          @"THALES.png",
                          @"cucea.png",
                          @"CUCEI.png",
                          @"CUTonala.jpg",
                          @"UAG.png",
                          @"UMG.jpg",
                          @"UNIVA.png",
                          @"UP.png",
                          @"Videns.png",
                          @"Volteo.jpg",
                          @"WIZELINE.png"
                          ];

    NSArray *url = @[
                              @"http//alestra.mx/",
                              @"http//www.alstom.com/",
                              @"https//www.amdocs.com/",
                              @"https//amexcap.com/",
                              @"https//guadalajara.gob.mx/",
                              @"https//www.bancomer.com/",
                              @"www.bosch.com.mx/",
                              @"www.canieti.com.mx/",
                              @"https//cidecyd.wordpress.com",
                              @"www.cinvestav.mx/",
                              @"https//www.cisco.com/",
                              @"citelum.com/mx/",
                              @"https//www.banamex.com/citibanamex/",
                              @"ccdguadalajara.com",
                              @"https//www.cognizant.com/",
                              @"http//www.canadainternational.gc.ca/mexico-mexique/index.aspx?lang=spa",
                              @"https//mx.usembassy.gov/es/",
                              @"https//www.continental-corporation.com/en",
                              @"https//www.3ds.com/es",
                              @"http//www.dell.com.mx/",
                              @"https//www2.deloitte.com/mx/es.html",
                              @"http//www.dxc.technology/",
                              @"http//egutz.com/",
                              @"https//www.engiemaxigas.com.mx/",
                              @"evolutel.com.mx",
                              @"http//www.flextronics.com",
                              @"https//www.gartner.com/technology/home.jsp",
                              @"https//www.startupgdl.com",
                              @"http//www.gopac.com.mx/",
                              @"http//www.grupohemac.mx/index.php",
                              @"https//www.hf.cx",
                              @"www.hcltech.com",
                              @"http//www8.hp.com/mx/es/home.html",
                              @"http//www.ibm.com/connect/ibm/mx/es/branch/guadalajara/",
                              @"https//www.idc.com/",
                              @"https//www.ieee.org/index.html",
                              @"http//www.ijalti.org.mx/",
                              @"www.incomspace.com",
                              @"http//gda.itesm.mx/incubatec/",
                              @"https//cegint.iteso.mx/incubadora-de-empresas-tecnologicas",
                              @"http//cipae.uag.mx/",
                              @"http//www.sparkup.mx/",
                              @"https//www.infineon.com/",
                              @"http//www.innohubmexico.com/",
                              @"http//www.intel.la/content/www/xl/es/homepage.html",
                              @"http//www.intkno.com/",
                              @"http//interlatin.com.mx/",
                              @"www.iotnet.mx",
                              @"tec.mx/",
                              @"https//www.iteso.mx/",
                              @"http//origin-www.jabil.com/espanol/",
                              @"jaltec.mx",
                              @"https//www.luxoft.com/",
                              @"www.meetroopers.com",
                              @"www.megacable.com.mx",
                              @"https//www.microsoft.com/es-mx",
                              @"https//www.moduslink.com",
                              @"http//www.nxp.com",
                              @"www.ooyala.com",
                              @"https//www.opendatasoft.com",
                              @"www.oracle.com",
                              @"https//www.persistent.com/",
                              @"http//www.sanmina.com/",
                              @"www.santander.com.mx",
                              @"https//www.schneider-electric.com.mx",
                              @"https//sicyt.jalisco.gob.mx",
                              @"https//www.siemens.com/mx",
                              @"www.softtek.com",
                              @"www.st.com",
                              @"https//svitla.com",
                              @"https//www.telcel.com",
                              @"https//www.telefonica.com.mx",
                              @"telmex.com",
                              @"www.thalesgroup.com",
                              @"www.cucea.udg.mx",
                              @"www.cucei.udg.mx",
                              @"www.cutonala.udg.mx",
                              @"uag.mx",
                              @"umg.edu.mx",
                              @"www.univa.mx",
                              @"www.up.edu.mx",
                              @"http//www.videns.mx",
                              @"volteo.com",
                              @"www.wizeline.com"
                              ];
    
    NSArray *nombres = @[
                          @"Alestra",
                          @"Alstom",
                          @"AMDOCS",
                          @"AMEXCAP",
                          @"Ayuntamiento de Guadalajara",
                          @"BBVA Bancomer",
                          @"BOSCH",
                          @"CANIETI",
                          @"CIDE e Instituto Mario Molina",
                          @"CINVESTAV",
                          @"CISCO",
                          @"Citelum",
                          @"Citibanamex",
                          @"Ciudad Creativa Digital",
                          @"COGNIZANT",
                          @"Consulado Canada",
                          @"Consulado USA",
                          @"CONTINENTAL",
                          @"Dassault System",
                          @"DELL EMC",
                          @"DELOITTE",
                          @"DXC Technologies",
                          @"Egutz",
                          @"ENGIE",
                          @"EVOLUTEL",
                          @"Flex",
                          @"GARTNER",
                          @"GDL Startups",
                          @"GOPAC",
                          @"Grupo HEMAC",
                          @"Hackers/Founders",
                          @"HCL",
                          @"HPE",
                          @"IBM",
                          @"IDC",
                          @"IEEE",
                          @"IJALTI",
                          @"InComSpace",
                          @"Incubadora ITESM",
                          @"Incubadora ITESO",
                          @"Incubadora UAG",
                          @"Incubadora UP",
                          @"Infineon",
                          @"Innohub",
                          @"Intel",
                          @"Intelligent-Knowledge",
                          @"Interlatin",
                          @"IOTNET Mexico (SIGFOX)",
                          @"ITESM",
                          @"ITESO",
                          @"Jabil",
                          @"JALTEC",
                          @"LuxSoft",
                          @"Meetroopers",
                          @"Megacable",
                          @"Microsoft",
                          @"ModusLink",
                          @"NXP (Qualcomm)",
                          @"Ooyala",
                          @"OpenDataSoft",
                          @"ORACLE",
                          @"Persistent",
                          @"Sanmina",
                          @"Santander",
                          @"Schneider Electric",
                          @"SICYT",
                          @"Siemens",
                          @"SOFTTEK",
                          @"STMicroelectronics",
                          @"Svitla",
                          @"Telcel",
                          @"Telefónica",
                          @"Telmex",
                          @"THALES",
                          @"U de G - CUCEA ",
                          @"U de G - CUCEI",
                          @"U de G - CUTONALA",
                          @"UAG",
                          @"UMG",
                          @"UNIVA",
                          @"UP",
                          @"Videns",
                          @"Volteo",
                          @"WIZELINE"
                          ];
    
    
    _listaParticipantes = [[NSMutableArray alloc] init];

    ParticipantsCellComponent *c1=[[ParticipantsCellComponent alloc] init];
    
    c1.participantName = nombres[0];
    c1.participantDescription = nombres[0];
    //c1.participantColor = nombres[0];
    c1.participantURL = url[0];
    c1.image = nombres[0];
    
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
