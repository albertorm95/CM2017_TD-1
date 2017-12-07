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

@property NSMutableArray *ArrayNames;
@property NSMutableArray *ArrayDescription;
@property NSMutableArray *ArrayImagenes;
@property NSMutableArray *ArrayURL;
@property NSMutableArray *ArrayColors;

@property NSString *nombres;
@property NSString *descripcion;
@property NSString *cellimagenes;
@property NSString *URL;

@end

@implementation Participants

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
    
    self.ArrayColors = [[NSMutableArray alloc] initWithObjects:
                          @"00a8f0",
                          @"f00000",
                          @"f01878",
                          @"007830",
                          @"781818",
                          @"004890",
                          @"f01818",
                          @"48a890",
                          @"a8c060",
                          @"00a890",
                          @"00a8d8",
                          @"f06030",
                          @"003060",
                          @"000000",
                          @"60a848",
                          @"f04830",
                          @"006090",
                          @"f07818",
                          @"004890",
                          @"0078c0",
                          @"304890",
                          @"000000",
                          @"f0f0f0",
                          @"00a8ff",
                          @"90c018",
                          @"30a8f0",
                          @"006090",
                          @"18d8a8",
                          @"304890",
                          @"90a8c0",
                          @"783018",
                          @"0060a8",
                          @"00a890",
                          @"1878c0",
                          @"001830",
                          @"001890",
                          @"486060",
                          @"3078a8",
                          @"0030a8",
                          @"001830",
                          @"480000",
                          @"c0a878",
                          @"f01848",
                          @"f0f0f0",
                          @"0078c0",
                          @"f00048",
                          @"004878",
                          @"603090",
                          @"004890",
                          @"004878",
                          @"009060",
                          @"306078",
                          @"004878",
                          @"483018",
                          @"0060a8",
                          @"ffc000",
                          @"607878",
                          @"c0d818",
                          @"484860",
                          @"186090",
                          @"f00000",
                          @"1878a8",
                          @"f03048",
                          @"ff0000",
                          @"009030",
                          @"c0c0c0",
                          @"009090",
                          @"78c030",
                          @"0090d8",
                          @"F07330",
                          @"183060",
                          @"183030",
                          @"1890c0",
                          @"181860",
                          @"c06060",
                          @"f06000",
                          @"181830",
                          @"480000",
                          @"d83018",
                          @"f09018",
                          @"f0a860",
                          @"f0c060",
                          @"ff1818",
                          @"d83030", nil
                           ];
    
    self.ArrayDescription = [[NSMutableArray alloc] initWithObjects:@"Alestra es una marca de soluciones empresariales y de gobierno de Axtel; provee las más innovadoras Tecnologías de Información y Comunicación en México para habilitar a las organizaciones a ser más productivas.",
                             @"Alstom es una multinacional francesa que opera en todo el mundo en mercados de transporte ferroviario activa en los sectores del transporte de pasajeros señalización y locomotoras con productos que incluyen los trenes de alta velocidad AGV TGV Eurostar y Pendolino además de suburbanos regionales y metropolitanos. trenes y tranvías Citadis.",
                             @"Proveedores para el sector  de telecomunicaciones",
                             @"La Asociación Mexicana de Capital Privado A.C. (AMEXCAP) fundada en 2003 es una organización sin fines de lucro cuya misión es fomentar el desarrollo de la industria de capital privado y capital emprendedor en México. Actualmente representa a más de 110 Firmas de Capital Emprendedor Capital de Crecimiento Bienes Raíces Infraestructura y Energía; asimismo agremia a más de 70 firmas de asesoría especializada.",
                             @"Somos un Gobierno Municipal cercano a la gente enfocado en generar condiciones de bienestar social en el municipio bajo un desempeño eficaz y eficiente de nuestra labor y guiados siempre por el principio de la honestidad.",
                             @"BBVA Bancomer es una institución financiera de banca múltiple mexicana fundada en 1932 como Banco de Comercio (Bancomer)",
                             @"Empresa dedicada a la tecnología automotriz",
                             @"CANIETI es una institución de interés público autónoma con personalidad jurídica  y patrimonio propio diferente al de cada uno de sus afiliados; constituída conforme a lo dispuesto en la Ley de Cámaras Empresariales y sus Confederaciones.",
                             @"El CIDE es un centro de investigación y educación superior especializado en ciencias sociales orientado por estándares internacionales de calidad y financiado con recursos públicos. La producción y difusión del conocimiento constituyen el eje de la vida del Centro. Nuestro compromiso a favor de una mejor y más sólida comprensión de los grandes temas económicos políticos y sociales de nuestro tiempo nos exige abrirnos al mundo.",
                             @"El Centro de Investigación y de Estudios Avanzados del Instituto Politécnico Nacional (Cinvestav) es una institución pública mexicana dedicada al desarrollo de ciencia tecnología y a la educación a nivel de posgrado.",
                             @"Cisco es el líder mundial en TI y red. Ayudamos a las empresas de todos los tamaños a transformar la manera en la que las personas se conectan se comunican y colaboran.",
                             @"Citelum North America combina las mejores practicas de iluminación para guiar las ciudades hacia un mundo de luz mas verde mas inteligente y mas seguro.",
                             @"Citibanamex te ofrece los mejores productos y servicios financieros tarjetas de crédito créditos hipotecarios personales de nómina y cuentas de ahorro.",
                             @"Ciudad Creativa Digital (CCD) es la renovación de un entorno urbano para consolidar un espacio ideal para las personas un escenario moderno e interconectado donde el talento y la creatividad generan conocimiento impulsan el uso de nuevas tecnologías y mejoran la calidad de vida en la Zona Metropolitana de Guadalajara.",
                             @"Cognizant es una compañía de servicios profesionales líder en el mundo que transforma los negocios los modelos operativos y de TI para la era digital.",
                             @"Canadá y México son socios estratégicos en América del Norte con fuertes lazos económicos políticos sociales y culturales. ",
                             @"El distrito del Consulado General en Guadalajara continúa creciendo en importancia como un centro industrial y comercial en el oeste de México así como las inversiones directas e indirectas desde los Estados Unidos especialmente desde que empezó el TLC hace 13 años.  Nuestra oficina de Comercio trabaja muy de cerca con los negocios tanto de Estados Unidos como con los de México para facilitar el comercio y está alerta a todos los problemas que pudieran obstaculizar o impedir el crecimiento económico.",
                             @"Continental Automotive Guadalajara fabrica módulos sistemas electrónicos y electromecánicos así como componentes para la industria automotriz",
                             @"The 3DEXPERIENCE Company es una compañía de software multinacional francesa que desarrolla software de diseño 3D maqueta digital en 3D y gestión del ciclo de vida del producto (PLM).",
                             @"Desarrollo fabricación comercialización y soporte a computadoras personales servidores switches de red programas informáticos periféricos y otros productos relacionados con la tecnología.",
                             @"Compartimos perspectivas y contenidos de negocio relacionados a Auditoría Impuestos Consultoría Administración de Riesgos y Asesoría Financiera.",
                             @"DXC Technology es la empresa de servicios y soluciones de TI independiente líder en el mundo que ayuda a los clientes a aprovechar el poder de la innovación para prosperar en el cambio.",
                             @"Egutz IT es una empresa dedicada a la integración de soluciones de tecnologías de informacion.",
                             @"Estamos comprometidos con la responsabilidad social por lo mismo a lo largo de los años hemos implementado diferentes proyectos de voluntariado y programas comunitarios para reforzar el crecimiento sustentable en México.",
                             @"Ofrece sistemas que pueden ser utilizados con solo contar con una conexión como: Seguridad Informática Ruteo Telefonía Servidores de Correo Servidores y Servicios Web Virtualización.",
                             @"Fabricación ensamble y maquila de todo tipo de equipos electrónicos circuitos y componentes para la Industria de computación telecomunicaciones cibernética y todo tipo de industria electrónica. Tarjetas Electrónicas Impresoras Modems.",
                             @"Gartner ofrece investigación tecnológica a los líderes empresariales de tecnología global para tomar decisiones informadas sobre iniciativas clave.",
                             @"Startup GDL es una organización sin fines de lucro comprometida a hacer de Guadalajara un líder mundial en innovación de alta tecnología. Obtenga más información sobre nuestros programas para empresas de alta tecnología empresarios locales y estudiantes. Ilustración mundial Haga crecer su empresa desde Guadalajara. Ilustración Sprout. Trabaja en las startups más populares de Guadalajara.",
                             @"Soluciones integrales en Tecnologías de la Información y Comunicación.",
                             @"Empresa orgullosamente mexicana con más de 12 años de trayectoria contamos con el privilegio de ver en nuestro andar un rastro de resultados satisfactorios tanto para nuestros clientes y socios tecnológicos como para nuestro valioso grupo de colaboradores que en conjunto y siempre comprometidos con la calidad y el servicio de clase mundial nos esforzamos en potencializar los esfuerzos de cada una de las organizaciones que nos han brindado su confianza integrando tecnología de vanguardia y desarrollando soluciones de valor agregado.",
                             @"Hackers/Founders es la red más grande de emprendedores del mundo y es el hogar de H/F Co-op una cooperativa de aceleradores y fundadores para startups de alto crecimiento.",
                             @"Líder Offshore de TI y desarrollo de software de Outsourcing ofrece varios servicios como consultoría de software desarrollo de aplicaciones.",
                             @"Fabricación comercialización ensamble distribución y venta de artículos hardware y software además de brindar servicios de asistencia relacionados con la informática. ",
                             @"Fabricación ensamble distribución y venta de artículos: Computadoras Personales Notebooks Thinpad Subensamble de Disco Duro.",
                             @"Artículos de análisis indicadores herramientas y calculadoras útiles para el cumplimiento de obligaciones fiscales legales laborales de seguridad social y de comercio exterior.",
                             @"IEEE.org sirve a profesionales técnicos y estudiantes que buscan tanto fomentar las relaciones laborales como acceder a la última investigación y conocimiento técnico.",
                             @"El Instituto Jalisciense de Tecnologías de la Información es una Asociación Civil cuya misión es fomentar e impulsar de manera equitativa en los sectores productivos de la sociedad el desarrollo y aprovechamiento de las TIC's y sus aplicaciones en Internet procurando la productividad el crecimiento y la mejora continua de dichos sectores por medio de la investigación desarrollo y asimilación tecnológica la capacitación y la asistencia técnica.",
                             @"La innovación en las comunicaciones y el espacio nació de una gran experiencia y conocimiento en los sectores de telecomunicaciones y espacio.",
                             @"La Red de Incubadoras de Empresas del Tecnológico de Monterrey surge a raíz de la necesidad de fomentar el desarrollo y difusión de la cultura emprendedora.",
                             @"La Incubadora de Empresas Tecnológicas detona y consolida ideas de los emprendedores materializándolas en empresas de alto impacto.",
                             @"El Centro de Inteligencia para Apoyo a Emprendedores de la Universidad Autónoma de Guadalajara promueve la transformación de ideas/proyectos en nuevos negocios de tecnología mediante un mecanismo de incubación que disminuye el riesgo inherente a las etapas iníciales de la creación de empresas.",
                             @"Inicia operaciones en el año 2006 como incubadora de empresas de la Universidad Panamericana Campus Guadalajara con el objetivo de: Impulsar ideas de negocio innovadoras y que aporten valor a la sociedad que generen riqueza y empleos de alto valor",
                             @"Infineon Technologies ofrece una amplia gama de soluciones de semiconductores microcontroladores controladores LED sensores y circuitos integrados de administración de energía y energía.",
                             @"Desarrollamos emprendimientos tecnológicos escalables que ayudan a transformar nuestra sociedad y nuestros negocios en toda América Latina. Queremos ser la mayor plataforma de emprendimiento digital para pymes que promueva el desarrollo económico sostenible en la región.",
                             @"Diseño y creación de tecnologías fundamentales que sirven de base para los dispositivos informáticos de todo el mundo. Mayor fabricante de circuitos integrados del mundo.",
                             @"En Intelligent-Knowledge nos dedicamos a dar consultoría especializada sobre todos los aspectos concernientes al eficaz aprovechamiento de la información desde su extracción y tratamiento hasta su explotación y generación de conocimiento.",
                             @"Producción y comercialización de software desarrollo de sistemas de computación asesoría y capacitación. Soluciones tecnológicas personalizadas como ventas desarrollo de aplicaciones manufactura consultoría de procesos y ERP’s (Enterprise Resource Planning) asesoría administrativa y logística servicios técnicos entrenamiento y capacitación especializada así como piezas de repuesto local.",
                             @"Interconectamos el mundo físico con el digital",
                             @"El Instituto Tecnológico y de Estudios Superiores de Monterrey (ITESM) popularmente también conocido como Tecnológico de Monterrey Tec de Monterrey o el Tec es una universidad privada con sede en Monterrey Nuevo León.",
                             @"El Instituto Tecnológico y de Estudios Superiores de Occidente (ITESO) institución que pertenece al Sistema Universitario Jesuita (SUJ)  integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara. ",
                             @"Diseño y servicios de fabricación de productos electrónicos. Diseño de cadena de suministro para sus clientes de manera inteligente para que sea ágil económica y efectiva aún en tiempos inciertos.",
                             @"JALTEC es un organismo del Consejo de Cámaras Industriales de Jalisco (CCIJ) cuya principal función es fungir como enlace entre los sectores industriales y la academia.",
                             @"Luxoft es una compañía internacional de desarrollo de software personalizado con más de 13000 empleados 42 oficinas en 21 países en América del Norte México Europa Occidental y Oriental Asia Pacífico y Sudáfrica. Está constituida en Tortola  Islas Vírgenes Británicas  tiene su sede central operativa en Zug  Suiza con domicilio fiscal en Londres  y cotiza en la Bolsa de Nueva York .",
                             @"Somos una red de comunidades de tecnología innovación y emprendimiento.",
                             @"Televisión por cable Internet de banda ancha Telefonía fija Telefonía móvil. Telecomunicaciones.",
                             @"En Microsoft nuestra misión y valores son ayudar a que las personas y los negocios alrededor del mundo reconozcan todo su potencial.",
                             @"ModusLink es un proveedor confiable e integrado de soluciones de cadena de suministro y logística para las principales compañías del mundo en electrónica de consumo comunicaciones informática dispositivos médicos y venta minorista.",
                             @"NXP y Freescale se combinan para llevar soluciones completas a sus retos de diseño en RF seguridad conectividad Automoción Analógica sensores y redes.",
                             @"Ooyala va más allá de las plataformas tradicionales de video en línea ofreciendo el mejor análisis de video en línea y soluciones de monetización que aumentan los ingresos del video.",
                             @"Haga que sus datos sean procesables. Las ciudades y las empresas utilizan OpenDataSoft para simplificar la publicación y el procesamiento de sus datos Smart City Open Data y datos internos. Ahorran tiempo y pueden enfocarse en usar sus datos para crear nuevos servicios y encontrar nuevas oportunidades de negocios.",
                             @"Empresa especializada en comercialización diseño e implementación de  sistemas.",
                             @"Servicio de desarrollo soluciones IOT y soporte personalizado de aplicaciones de SWG",
                             @"Fabricación ensamble y prueba de tarjetas electrónicas para circuitos impresos con Tecnología SMT-PIH. Servicios de fabricación integrados incluyendo sistemas completos y diseño de componentes la industrialización integración de sistemas logística y reparación.",
                             @"Banco Santander conocido comercialmente como Santander es una compañía bancaria española con sede en la ciudad de Santander (Cantabria) cuyas primeras actividades financieras datan del 15 de mayo de 1857.",
                             @"Schneider Electric especialista global en manejo de energía y con operaciones en más de 100 países ofrece soluciones integrales para diferentes segmentos de mercado.",
                             @"El objetivo general de la Secretaría de Innovación Ciencia y Tecnología es crear las condiciones propicias para impulsar coordinar y coadyuvar al desarrollo regional a través de la Innovación y el desarrollo educativo científico y tecnológico del Estado.",
                             @"La electrificación automatización y digitalización necesitan soluciones ingeniosas. Descubre en Siemens a un fuerte aliado pionero tecnológico y empleador responsable.",
                             @"Softtek es un proveedor global de servicios de TI y soluciones de procesos de negocio con 12000 asociados en 30 oficinas en América del Norte América Latina Europa y Asia.",
                             @"Soluciones innovadoras de semiconductores para Smart Driving y IoT (Internet of Things). ST ofrece una de las carteras de productos más amplias de la industria.",
                             @"Svitla Systems se enorgullece de ser muy receptivo en el servicio al cliente fuerte en la calidad y eficaz para hacer el trabajo.",
                             @"Telcel es la compañía líder de telefonía celular en México además de ser la marca comercial utilizada por la empresa mexicana Radiomóvil Dipsa S.A. de C.V. Cuenta con una amplia cobertura en territorio nacional en servicios de voz y datos.",
                             @"Telefónica es la primera multinacional española por capitalización bursátil y una de las mayores compañías de telecomunicaciones privadas del mundo.",
                             @"Teléfonos de México S.A.B. de C.V. mejor conocida como Telmex es una empresa mexicana de telecomunicaciones con sede en Ciudad de México México",
                             @"Compañía de sistemas electrónicos que actúan en áreas tales como la defensa la aeronáutica la seguridad y la seguridad de las compañías aéreas tecnología de la información y el transporte.",
                             @"El Centro Universitario de Ciencias Económico-Administrativas frecuentemente abreviado CUCEA es la división de la Universidad de Guadalajara en México donde se ofrece educación superior relacionada con los campos de la economía la administración de empresas y ciencias complementarias.",
                             @"El Centro Universitario de Ciencias Exactas e Ingenierías (CUCEI) es la división de la Universidad de Guadalajara en México destinada a la educación superior relacionada con los campos de ingenierías ciencias físicas químicas y matemáticas. Cuenta con una de las mayores poblaciones dentro de la universidad.",
                             @"El Centro Universitario de Tonalá (CUTONALÁ) abrió sus puertas en 2012 se encuentra en la Zona Metropolitana de Guadalajara (ZMG) es multitemático y su oferta académica abarca diferentes áreas del conocimiento; ofrece carreras de larga tradición como Abogado Administración de Negocios Contaduría Pública y Medicina además carreras innovadoras y especializantes como Diseño de Artesanías Historia del Arte Estudios Liberales Ingeniería en Nanotecnología e Ingeniería en Agua y Energía cuya maestría ya es reconocida por CONACyT dentro del Programa Nacional de Posgrados de Calidad.",
                             @"Universidad Autónoma de Guadalajara 75 años formando profesionales exitosos con valores habilidades y conocimientos que los hacen destacar profesionalmente.",
                             @"Universidad Marista de Guadalajara comunidad universitaria cuya misión es formar personas responsables y libres con sentido de trascendencia comprometidas en la búsqueda y difusión de la verdad sirviendo a la sociedad desde la perspectiva de los valores maristas con el lema “Se para servir”.",
                             @"La Universidad del Valle de Atemajac es una comunidad educativa católica comprometidos en formar personas y profesionales de calidad en lo humano científico y tecnológico.",
                             @"La Universidad Panamericana es una universidad laica de formación cristiana privada localizada en México cuya formación espiritual está encomendada a la prelatura del Opus Dei.",
                             @"Creatividad Producción de Video Marketing Motion Graphics",
                             @"Consultoría de Tecnologías de la Información  especializada en procesos de TI bajo la metodología “ITIL” y herramientas de gestión de entrega de servicios.",
                             @"Entrega de productos estrategia inteligente de productos y software de Roadmapping", nil];
    
    self.ArrayImagenes = [[NSMutableArray alloc] initWithObjects:
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
                          @"City Banamex.png",
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
                          @"Hackers and Founders.png",
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
                          @"WIZELINE.png", nil
                          ];

    self.ArrayURL = [[NSMutableArray alloc] initWithObjects:
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
                              @"www.wizeline.com", nil
                              ];
    
    self.ArrayNames = [[NSMutableArray alloc] initWithObjects:
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
                          @"WIZELINE", nil
                          ];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ArrayNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
    //return 64    ;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    participantsCellComponent *cell = (participantsCellComponent *)[tableView dequeueReusableCellWithIdentifier:@"participantsCellComponent"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"participantsCellComponent" bundle:nil] forCellReuseIdentifier:@"participantsCellComponent"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"participantsCellComponent"];
    }
    //Fill cell with info from arrays
    
    cell.participantName.text = self.ArrayNames[indexPath.row];
    cell.imgLogo.image = [UIImage imageNamed:self.ArrayImagenes[indexPath.row]];
    UIColor *color =[self colorWithHexString:self.ArrayColors[indexPath.row]];
    cell.viewColor.backgroundColor = color;
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"==>didSelectRowAtIndexPath %li",(long)indexPath.row);
    self.nombres = self.ArrayNames[indexPath.row];
    self.descripcion = self.ArrayDescription[indexPath.row];
    self.cellimagenes = self.ArrayImagenes[indexPath.row];
    self.URL = self.ArrayURL[indexPath.row];
    
    
    [self performSegueWithIdentifier:@"segueComponentsToDetails" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"_EDGE_ prepareForSegue... ");
    ParticipantsDetails *cd = [segue destinationViewController];
    
    cd.imagen = self.cellimagenes;
    cd.nombre = _nombres;
    cd.url = _URL;
    cd.descripcion = _descripcion;
}
-(UIColor*)colorWithHexString:(NSString*)hex
{
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor grayColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return  [UIColor grayColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}
@end

