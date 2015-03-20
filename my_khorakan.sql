# phpMyAdmin MySQL-Dump
# version 2.3.3pl1
# http://www.phpmyadmin.net/ (download page)
#
# Host: localhost
# Generato il: 04 Nov, 2004 at 02:17 PM
# Versione MySQL: 4.00.21
# Versione PHP: 4.3.9
# Database : `my_khorakan`
# --------------------------------------------------------

#
# Struttura della tabella `abilita`
#

CREATE TABLE abilita (
  abilita varchar(50) NOT NULL default '',
  descrizione text,
  costo int(2) default NULL,
  indice varchar(255) default NULL,
  razze varchar(255) default NULL,
  prerequisiti varchar(255) default NULL,
  PRIMARY KEY  (abilita)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `abilita`
#

# --------------------------------------------------------

#
# Struttura della tabella `archetipi`
#

CREATE TABLE archetipi (
  archetipo varchar(30) NOT NULL default '',
  descrizione text,
  mod_livello char(2) NOT NULL default '0',
  str char(2) NOT NULL default '0',
  des char(2) NOT NULL default '0',
  cst char(2) NOT NULL default '0',
  intl char(2) NOT NULL default '0',
  sag char(2) NOT NULL default '0',
  car char(2) NOT NULL default '0',
  PRIMARY KEY  (archetipo)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `archetipi`
#

INSERT INTO archetipi VALUES ('Nessuno', NULL, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO archetipi VALUES ('Vampiro', 'Solo dalle incerte parole di qualche leggenda popolare si possono estrappolare informazioni sulle creature soprannaturali chiamate Vampiri. Si dice che essi siano creature maledette che odiano la luce del sole e che si aggirano nelle notti più buie in cerca di qualche sventurato mortale al quale strappare ogni goccia del suo sangue. Molti sono convinti che l\'aglio, presunto talismano contro gli spiriti maligni, o i simboli sacri possano tenere lontani questi demoni della notte. Pare che questi vampiri abbiano un corpo freddo come la morte stessa, dotato di poteri incredibili, come una forza sovrumana o un\'innaturale influenza sulla mente altrui, oltre che immortale. Gli anziani sostengono che solo un paletto di legno piantato nel cuore di un Vampiro possa ucciderlo. Reali conoscenze su queste creature sono possedute solo da segretissime sette di adoratori e seguaci delle vie oscure, o da qualche ardito cacciatore di vampiri, ma in entrambi i casi i soggetti si guardano bene dallo spargere voci sui principi della notte. Molti scettici sostengono che siano solo favole inventate da qualche pauroso, altri sono convinti che qualcosa o qualcuno muova silenziosi passi nelle notti più buie, chi abbia ragione è tutto da dimostrare.....', '0', '0', '0', '0', '0', '0', '0');
# --------------------------------------------------------

#
# Struttura della tabella `chat`
#

CREATE TABLE chat (
  id int(50) unsigned NOT NULL auto_increment,
  data int(11) default NULL,
  autore varchar(30) default NULL,
  messaggio text,
  luogo varchar(30) default NULL,
  idaut int(5) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `chat`
#

INSERT INTO chat VALUES (1, 1098994356, 'Itzamna', 'La serata trascorre tranquilla nei pressi del bosco. Un vento fresco spira da ovest, mentre il sole artificiale si è oramai spento quasi del tutto. Poca gente circola ancora per la zona e, ad eccezione di qualche elfo folle, nessuno osa più inoltrarsi troppo nel bosco a quest\'ora...', 'BOSCO', 1);
INSERT INTO chat VALUES (2, 1098994406, 'Lorelei', '[la giovane femmina prosegue nel suo incedere...abiti gitani, stracci a dir di qualcuno..... ] Mpf..[borbotta a veder qualche creatura allontanarsi dal bosco mentre lei ama arrivare a quell\'ora]', 'BOSCO', 11);
INSERT INTO chat VALUES (3, 1098994513, 'Itzamna', 'Un paio di figuri, vestiti di scuro, vengono visti inoltrarsi nel bosco. Essi sono chiaramente riconoscibili a tutti come guardiani del confine, anche se è curioso il fatto che essi circolino per la zona a quest\'ora...', 'BOSCO', 1);
INSERT INTO chat VALUES (4, 1098994563, 'Lorelei', '[la giovane ragazzina assottiglia lo sguardo osservando quel che accade...uno sguardo smeraldino a volte assente, a volte presente] chi ...[mormora appena iniziando così a seguirli seppur a debita distanza]', 'BOSCO', 11);
INSERT INTO chat VALUES (5, 1098994723, 'Moltovon', '[dall\'accadeima giunge spostando le steppaglie del bosco]', 'BOSCO', 10);
INSERT INTO chat VALUES (6, 1098994908, 'Itzamna', 'Anche Moltovon riesce a notare i due figuri, essendo essi provenienti dalla sua stessa direzione. I due si inoltrano nel bosco, seguendo una sorta di sentiero, stretto e buio, anche se è riparato dal vento...', 'BOSCO', 1);
INSERT INTO chat VALUES (7, 1098994974, 'Lorelei', '+si morde le carnose labbra la giovane ragazza che si atteggia quasi da lupa...China sul suo corpo, ginocchie flesse continua a seguirli non accorgendosi di Moltovon...', 'BOSCO', 11);
INSERT INTO chat VALUES (8, 1098995041, 'Moltovon', '[segue le due figure notando nel buio del bosco una ragazzina dall\'aria stranza]', 'BOSCO', 10);
INSERT INTO chat VALUES (9, 1098995107, 'Itzamna', 'D\'improvviso, giunti nei pressi di un bivio, i due si fermano, cominciando a guardarsi attorno, come se stessero cercando qualcuno...', 'BOSCO', 1);
INSERT INTO chat VALUES (10, 1098995165, 'Lorelei', 'Aaalt..[bisbiglia a se stessa mentre si china in maniera di non farsi vedere, dietro ad un albero...ma la testa spunta fuori per guardar dove essi possino andare..]', 'BOSCO', 11);
INSERT INTO chat VALUES (11, 1098995196, 'Moltovon', '[rimane leggermente indietro non fidandosi completamente della situazione creatasi...continua da dietro ad osservar la ragazza]', 'BOSCO', 10);
INSERT INTO chat VALUES (12, 1098995328, 'Itzamna', 'I due, dopo aver lanciato una rapida occhiata all\'indietro, non notando ne Lorelei ne Moltovon, si scambiano un paio di parole, a voce molto bassa, prendendo poi il sentiero di destra...', 'BOSCO', 1);
INSERT INTO chat VALUES (13, 1098995415, 'Lorelei', '+quel che vede Moltovon è solamente una gonna leggermente stracciata ed un sedere bello ampio....Un sederone che appar da una schiena larga nascosta in parte da lunghi capelli corvini...] Destra destra..[mugola mentre zompetta...]', 'BOSCO', 11);
INSERT INTO chat VALUES (14, 1098995467, 'Moltovon', '[nascondendosi tra un albero e l\'altro in completa armonia con la natura segue il percorso verso destra]', 'BOSCO', 10);
INSERT INTO chat VALUES (15, 1098995631, 'Itzamna', 'Dopo poco tempo i due tipi giungono ad un\'ampia radura. Ben visibili sono a tutti i presenti, le scariche elettriche che passano lungo la barriera che protegge la città. Queste scariche, d\'un colore arancione, si susseguono ad un ritmo regolare ed incalzante. Lorelei nota i due sgattaiolare tra gli alberi, inoltrandosi nel bosco...', 'BOSCO', 1);
INSERT INTO chat VALUES (16, 1098995718, 'Lorelei', 'Ma..Ma..[portando le mani ai fianchi mentre continua a procedere or vedendo quel che non vorrebbe..le scariche elettriche che le incutono paura..Deglutisce svoltando anche lei nel bnosco] impossibile..impossibile..[posta ditro ad una corteccia cercando di vederli]', 'BOSCO', 11);
INSERT INTO chat VALUES (17, 1098995789, 'Moltovon', '[rimanendo inoltrato nel bosco scorge la radura non ha alcuna paura,ma al contrario volge un sorriso e in un balzo silenzioso segue la ragazza]', 'BOSCO', 10);
INSERT INTO chat VALUES (18, 1098995899, 'Itzamna', 'I due scompaiono, complice la boscaglia e l\'oscurità, alla vista di Lorelei, la quale comunque è ben capace di intuire quale strada i due possano aver preso...', 'BOSCO', 1);
INSERT INTO chat VALUES (19, 1098995944, 'Lorelei', 'Vabbè [muovendo la mano destra come una bella portuale] o questa...[guardandosi attorno nel bosco non scorgendo Moltovon]o questa..[muovendo il capo a destra e sinistra] e quindi..[avviandosi per la strada nel bosco inizia a seguirla ]', 'BOSCO', 11);
INSERT INTO chat VALUES (20, 1098996020, 'Moltovon', '[silenzioso come il silenzio stesso forse ancora di più prosegue nel suo inseguimento]', 'BOSCO', 10);
INSERT INTO chat VALUES (21, 1098996226, 'Itzamna', 'Lorelei giunge ben presto in prossimità di un grosso masso, sul quale è ben visibile - seppure vi siano alcune sterpaglie atte a celarla - un uscio, una porta di legno, sulla quale è riportata una strana incisione, insensata agli occhi dei più <br> <img src="http://www.akkuaria.com/americhesconosciute/imm/estela-maya.jpg">', 'BOSCO', 1);
INSERT INTO chat VALUES (22, 1098996289, 'Lorelei', 'E questa? [allarga gli occhietti del color del mare mentre la guarda] ma per il dio bacco [la giovane ragazzina sui tredici anni assottiglia lo sguardo] so leggere appena i  bandi dei bardi..figurarsi sta roba..[ridacchiando mentre guarda la porta di legno] entrare ono? [si morde il labbro carnoso] a morte la mia curiosità!!!', 'BOSCO', 11);
INSERT INTO chat VALUES (23, 1098996407, 'Moltovon', '[rimane pensoso,e titubante si avvicina alla ragazzina prima che possa entrare da sola]', 'BOSCO', 10);
INSERT INTO chat VALUES (24, 1098996462, 'Itzamna', 'Lorelei nota benissimo Moltovon, anche perchè questi, avvicinandosi, pesta alcuni sassolini, provocando una discreta quantità di rumore...', 'BOSCO', 1);
INSERT INTO chat VALUES (25, 1098996465, 'Lorelei', '+sobbalza] aaaah [gridando proprio in faccia a Moltovon] e voi???', 'BOSCO', 11);
INSERT INTO chat VALUES (26, 1098996515, 'Moltovon', 'bionasera ragazzina [leggero inchino]non e pericoloso er una ragazzina come voi aggirarsi di sera nel bosco??', 'BOSCO', 10);
INSERT INTO chat VALUES (27, 1098996632, 'Lorelei', 'Non è pericoloso per voi non farvi gli affari vostri? [tuona la giovane ragazzina...molto pienotta sul sedere, cosce e fianchi, ma bella....Un lieve sorriso appar] ho seguito delle creature sinoa qua..[mostrando la porta]', 'BOSCO', 11);
INSERT INTO chat VALUES (28, 1098996735, 'Moltovon', 'già anche io e temendo per voi vi ho seguita[silenzio]già che siamo qua potremmo continuare ma se non ti dispiace ragazzina...vado avanti io]', 'BOSCO', 10);
INSERT INTO chat VALUES (29, 1098996836, 'Lorelei', 'Prego prego..Almeno se vi ammazzano avrò pioù tempo per guardare..[muovendo mano ad invitarlo ad entrar nella porta] come vi chiamate?', 'BOSCO', 11);
INSERT INTO chat VALUES (30, 1098996881, 'Moltovon', '[tira fuori la spada dalla guaina e ridendo tra se e se spalanca il portone di legno]', 'BOSCO', 10);
INSERT INTO chat VALUES (31, 1098996961, 'Itzamna', 'La porta risulta essere chiusa, non si apre, inoltre, non appena Moltovon tocca il legno, questo inizia a brillare di una luce azzurrina, molto debole, ma comunque ben distinguibile...', 'BOSCO', 1);
INSERT INTO chat VALUES (32, 1098997037, 'Lorelei', 'O ssanta birra..[guardando la luce azzurrina sulla porta] ma che è? [volgendosi indietro per veder se è qualcosa che da il riflesso alla porta]', 'BOSCO', 11);
INSERT INTO chat VALUES (33, 1098997066, 'Moltovon', '[manifesta tutto il suo stupore sotto l\'ombra del cappuccio ma balza all\'indietro osservando attentamente la luce]', 'BOSCO', 10);
INSERT INTO chat VALUES (34, 1098997143, 'Itzamna', 'Dietro Lorelei non pare esservi nulla. Non appena Moltovon si allontana dalla porta, anche minimamente, questa riassume il suo aspetto originale, mentre nella zona si sparge un forte odore di zolfo e di cadaveri in putrefazione...', 'BOSCO', 1);
INSERT INTO chat VALUES (35, 1098997195, 'Lorelei', 'Belah....Ma se dovete fare certe cose..[muovendo la destra mano come ad allontanarlo] andate più in là..[sentendo la puzza...] guardate..[indicando la porta] non è più azzurrina...', 'BOSCO', 11);
INSERT INTO chat VALUES (36, 1098997287, 'Moltovon', '[non considera la ragazzina e le sue battutine stranito dall\'odore si guarda attorno e prova a concentrarsi,nell\'aria non riesce ad avvertir pericolo alcuno e si riavvicina alla porta sempre con la spada in mano]', 'BOSCO', 10);
INSERT INTO chat VALUES (37, 1098997344, 'Lorelei', '+la ragazzina si scosta per paura di sentir maggiormente la puzza visto che Moltovon le si avvicina dinuovo..] perchè non date un calcio alla porta?', 'BOSCO', 11);
INSERT INTO chat VALUES (38, 1098997361, 'Itzamna', 'La puzza permane, ma niente sembra accadere attorno....', 'BOSCO', 1);
INSERT INTO chat VALUES (39, 1098997432, 'Moltovon', '[tocca la porta e bussa un paio di volte per sentire se la porta potrebbe essere abbattuta]', 'BOSCO', 10);
INSERT INTO chat VALUES (40, 1098997526, 'Lorelei', '+scoppia a ridere...guardando che l\'uomo batte sulla porta ] ah ah ah..ora vi apre la nonnina [tenendosi la pancia dalle risate]', 'BOSCO', 11);
INSERT INTO chat VALUES (41, 1098997573, 'Itzamna', 'la porta appare molto solida, ma non appena Moltovon tocca la porta questa prende ad emanare una forte luce blu, che abbaglia i due presenti per qualche istante. Quando i due riprendono a vedere normalmente la porta non è più presente e dietro di essa si nota una piccola stanza con una botola sul pavimento', 'BOSCO', 1);
INSERT INTO chat VALUES (42, 1098997660, 'Lorelei', 'O sssanto bacco [chiudendo gli occhi a quel bagliore portando anche il braccio a nasconder il viso aggraziato] ma che succede oggi? [infine riapre gli occhi osservando la stanza] ehi..ehi..guardate...', 'BOSCO', 11);
INSERT INTO chat VALUES (43, 1098997716, 'Moltovon', '[osserva la ragazzina]poverina[dice con tono severo proseguendo verso la botola ]', 'BOSCO', 10);
INSERT INTO chat VALUES (44, 1098997776, 'Itzamna', 'La botola appare essere una normalissima botola, se non altro da chiusa...', 'BOSCO', 1);
INSERT INTO chat VALUES (45, 1098997778, 'Lorelei', 'Ma non lasciatemi sola..[zompettandogli attorno mentre si sistema la gonna che stava per cadere sui suoi fianchi] ehi..sono dimagrita..[un turpiloquio petulante di parole mentre guarda la botola] scendiamo?', 'BOSCO', 11);
INSERT INTO chat VALUES (46, 1098997866, 'Moltovon', '[con calma e tranquillita osserva se la botola si possa apripre normalmente]', 'BOSCO', 10);
INSERT INTO chat VALUES (47, 1098997911, 'Itzamna', 'La botola possiede un anello, e non pare essere dotata di particolari meccanismi di chiusura...', 'BOSCO', 1);
INSERT INTO chat VALUES (48, 1098998016, 'Moltovon', '[mano alla spada tende con cautela ad aprir la botola dando un occhiata alla ragazzina ]', 'BOSCO', 10);
INSERT INTO chat VALUES (49, 1098998033, 'Lorelei', 'Dai dai.....Apritela [sgambetta esaltata mentre attende..]', 'BOSCO', 11);
INSERT INTO chat VALUES (50, 1098998069, 'Itzamna', 'Moltovon riesce ad aprire la botola e sotto di essa è visibile una scala che scende verso il basso.', 'BOSCO', 1);
INSERT INTO chat VALUES (51, 1098998069, 'Moltovon', '[apre totalmente la botola e cerca di osservare l\'interno]', 'BOSCO', 10);
INSERT INTO chat VALUES (52, 1098998111, 'Lorelei', 'Oooh...[muovendo le carnose labbra con interesse mentre gli occhi argentati brillano]', 'BOSCO', 11);
INSERT INTO chat VALUES (53, 1098998139, 'Moltovon', '[sorride]se vuoi ragazzina,,,prima le signore[piccola risata opaca e comincia a scendere la scala]', 'BOSCO', 10);
INSERT INTO chat VALUES (54, 1098998199, 'Lorelei', 'Paura eh? [portando le manine alla gonna iniziando a scendere dopo di lui..attenta a non cadere..cercando di percepire che cisia sotto, anche qualche rumore]', 'BOSCO', 11);
INSERT INTO chat VALUES (55, 1098998265, 'Itzamna', 'L\'ambiente sottostante risulta illuminato d\'una luce pallida, proveniente da un luogo non ben precisato. La puzza aumenta man mano che i due scendono e Moltovon, arrivato al suolo, lo sente come qualcosa di viscido e fangoso...', 'BOSCO', 1);
INSERT INTO chat VALUES (56, 1098998354, 'Lorelei', '[non scende dalla scala] che vedete? [prta la mano destra coprirsi il naso] baaaahhh!', 'BOSCO', 11);
INSERT INTO chat VALUES (57, 1098998403, 'Moltovon', '[rimane un attimo impietrito poi senza tirar fuori alcuna parola osserva il pavimento]', 'BOSCO', 10);
INSERT INTO chat VALUES (58, 1098998440, 'Lorelei', 'Vi sentite bene? [preoccupata la fanciulla attende risposta]', 'BOSCO', 11);
INSERT INTO chat VALUES (59, 1098998452, 'Itzamna', 'Quello che Moltovon nota è un enorme ammasso di cadaveri in putrefazione, sui quali egli stesso cammina. Sono presenti qua e la anche parti di scheletri. I corpi risultano essere di sesso e razza varie...', 'BOSCO', 1);
INSERT INTO chat VALUES (60, 1098998526, 'Moltovon', '[se pur elfo la pellle gli si ringrizisce]meglio per te che non guardi ragazzina [dice volgendo lo sguardo in alto]', 'BOSCO', 10);
INSERT INTO chat VALUES (61, 1098998539, 'Itzamna', 'La stanzina con la botola è circa un metro per un metro, mentre quella di sotto è di cinque metri per cinque', 'BOSCO', 1);
INSERT INTO chat VALUES (62, 1098998603, 'Lorelei', 'Rimango qua? [ancor esaltata ma l puzza non la fa scender maggiormente] mamma mia che odore...', 'BOSCO', 11);
INSERT INTO chat VALUES (63, 1098998676, 'Moltovon', 'sali ragazzina[dice puntando la spada in alto facendolo per non fargli vedere tale orrore]', 'BOSCO', 10);
INSERT INTO chat VALUES (64, 1098998719, 'Lorelei', 'Va bene..[salendo in fretta seppur la gonna le sia di impiccio...rispunta nella stanza ove c\'era la botola]', 'BOSCO', 11);
INSERT INTO chat VALUES (65, 1098998777, 'Moltovon', '[anche lui molto velocemente raggiunge il capo della scala sospirando per il sollievo]', 'BOSCO', 10);
INSERT INTO chat VALUES (66, 1098998802, 'Itzamna', 'Non appena Lorelei sbuca di sopra s\'avvede di una cosa strana e spaventosa al tempo stesso: la porta dalla quale erano entrati non esiste più, la stanza è completamente chiusa, eccezion fatta per la botola...', 'BOSCO', 1);
INSERT INTO chat VALUES (67, 1098998908, 'Lorelei', 'aaaaaaaa [grida mentre cammina per la stanza non vedendo la porta] nonc\'è..non c\'è...[grida verso Molvoton] moriremo quaaaaaa', 'BOSCO', 11);
INSERT INTO chat VALUES (68, 1098998909, 'Moltovon', 'ragazzina apettami quà[dice quasi abituato a tali scherzi ricordando l\'esordio in accademia con volo nel vuoto,scende nuovamente nella botola come a cercare un altra uscita]', 'BOSCO', 10);
INSERT INTO chat VALUES (69, 1098998989, 'Itzamna', 'La stanza di sotto appare a Moltovon priva di uscite, se non altro in apparenza, mentre la stanza di sotto è troppo stretta per contenere comodamente entrambi i presenti', 'BOSCO', 1);
INSERT INTO chat VALUES (70, 1098999028, 'Itzamna', '// La stanza di sopra è troppo stretta....', 'BOSCO', 1);
INSERT INTO chat VALUES (71, 1098999039, 'Lorelei', 'O santa birra ed ora? [inizia a tastare i muri della stanza con la botola]', 'BOSCO', 11);
INSERT INTO chat VALUES (72, 1098999134, 'Moltovon', '[osserva in alto]ora sei tu che chiami la nonna ragazzina?[sorride]', 'BOSCO', 10);
INSERT INTO chat VALUES (73, 1098999161, 'Itzamna', 'Le pareti della stanza superiore appaiono tutte di solida roccia...', 'BOSCO', 1);
INSERT INTO chat VALUES (74, 1098999185, 'Lorelei', 'Beh e voi che fareste? [borbotta] niente..le pareti son solide [osserva lsoffitto]', 'BOSCO', 11);
INSERT INTO chat VALUES (75, 1098999226, 'Itzamna', 'La stanza termina a volta, a circa 3 metri dal terreno', 'BOSCO', 1);
INSERT INTO chat VALUES (76, 1098999268, 'Lorelei', 'Forse là sopra...[assottigliando lo sguardo con attenzione]', 'BOSCO', 11);
INSERT INTO chat VALUES (77, 1098999283, 'Moltovon', 'non c\'è nulla da fare [osserva il soffitto cercandone una crepa o qualcosa di simile]', 'BOSCO', 10);
INSERT INTO chat VALUES (78, 1098999326, 'Lorelei', 'Ma nonpossiamorimanere qua...[poi curiosa corruga la fronte] che c\'è sotto?', 'BOSCO', 11);
INSERT INTO chat VALUES (79, 1098999431, 'Moltovon', 'monnezza ragazzina,non c\'è altro che monnezza e sterco di anomale[dice titubante]', 'BOSCO', 10);
INSERT INTO chat VALUES (80, 1098999460, 'Itzamna', 'D\'improvviso Moltovon s\'avvede che quello che poteva sembrare un cadavere in putrefazione si muove; esso ha l\'aspetto di un elfo, completamente sporco di sangue, pieno di ferite e mezzo nudo. Costui emette un gemito udibile ad entrambi] aaahhh...', 'BOSCO', 1);
INSERT INTO chat VALUES (81, 1098999601, 'Itzamna', 'L\'elfo apre gli occhi, tirandosi a sedere barcollando, non appena nota Moltovon esclama [scappate] poi sviene. Contemporaneamente, da sotto il mucchio di cadaveri, sembra salire una nebbia molto strana...', 'BOSCO', 1);
INSERT INTO chat VALUES (82, 1098999612, 'Lorelei', '+sente un gemitop nella stanza.] ma siete stato voi? [verso Molvoton mentre curiosa s\'affaccia dentro la botola]', 'BOSCO', 11);
INSERT INTO chat VALUES (83, 1098999645, 'Moltovon', 'ragazzina non ti muovere di lì[si getta senza timore a capofitto giù di sotto tenendo dolcemente il corpo sollevato per la nuca comincia ad osservare la nebbia salire]', 'BOSCO', 10);
INSERT INTO chat VALUES (84, 1098999682, 'Moltovon', 'siete un elfo?[grida al corpo]', 'BOSCO', 10);
INSERT INTO chat VALUES (85, 1098999704, 'Itzamna', 'La nebbia avvolge completamente Moltovon il quale sente un forte dolore alla testa, insopportabile, quasi da svenimento...', 'BOSCO', 1);
INSERT INTO chat VALUES (86, 1098999729, 'Lorelei', 'Co..cosa succede? TORNATE SU:.[grida all\'uomo mentre la ragazzina cerca nella stanza qualcosa.......non capisce]', 'BOSCO', 11);
INSERT INTO chat VALUES (87, 1098999737, 'Moltovon', '[cerca di salire le scale trascinando sopra l\'elfo]', 'BOSCO', 10);
INSERT INTO chat VALUES (88, 1098999835, 'Itzamna', 'Moltovon cade svenuto, rovinando su altri corpi, la nebbia sale poi di sopra e Lorelei, vedendola, prova una inspiegabile pulsione a scendere al piano sottostante...', 'BOSCO', 1);
INSERT INTO chat VALUES (89, 1098999849, 'Itzamna', ' Puoi resistere alla pulsione se vuoi, ma è molto faticoso', 'BOSCO:Lorelei', 1);
INSERT INTO chat VALUES (90, 1098999887, 'Lorelei', 'Ah...No..[scuote il capo mentre osserva la nebbiolina..Cadendo a terra..con la testa vicino alla botola..inizia a sudar freddo..La paura e\' tanto..ed è forse quello che la fa desistere..] ahhm...[mugola appena mentre incerta cerca di sdraiarsi invece che scendere]', 'BOSCO', 11);
INSERT INTO chat VALUES (91, 1099000011, 'Itzamna', 'Lorelei sente una forte nausa, quasi irresistibile, e sente dentro di se che scendere al piano sottostante la farà sentire meglio; intanto Moltovon comincia a riprendersi...', 'BOSCO', 1);
INSERT INTO chat VALUES (92, 1099000052, 'Lorelei', '+la nausea le chiude il stomaco facendola quasi vomitare.......muov la gamba destra verso la botola seppur le mani tremanti si tengano strette al pavimento...appar confusa..non sa più dove aggrapparsi...', 'BOSCO', 11);
INSERT INTO chat VALUES (93, 1099000065, 'Moltovon', '[affannosamente non vedendo quasi piu si attacca alla scala cercando di trascinarsi su]', 'BOSCO', 10);
INSERT INTO chat VALUES (94, 1099000157, 'Itzamna', 'Moltovon si sente molto debole, non riesce a salire le scale, mentre riesce a tirarsi a sedere. Lorelei sente aumentare la nausea, ed è sempre più convinta che scendendo questa possa svanire', 'BOSCO', 1);
INSERT INTO chat VALUES (95, 1099000165, 'Moltovon', '[scruta la ragazza in procinto di scendere]STAI Sù[grida fortissimo]', 'BOSCO', 10);
INSERT INTO chat VALUES (96, 1099000204, 'Lorelei', 'Perchè?...Voi siete giù e state bene...[languida quella voce mentre muove anche l\'altra gamba sulla scala]', 'BOSCO', 11);
INSERT INTO chat VALUES (97, 1099000248, 'Moltovon', '[allo stremo delle forze tenta l\'ultima volta la salita delle scale]', 'BOSCO', 10);
INSERT INTO chat VALUES (98, 1099000314, 'Itzamna', 'La scala risulta essere incandescente alle mani di Moltovon, sebbene essa sia fatta di legno. La situazione di Lorelei non cambia...', 'BOSCO', 1);
INSERT INTO chat VALUES (99, 1099000343, 'Lorelei', 'io scendooo..[ruggisce mentre inizia a scivolar verso la scalinata con tutto ilcorpo]', 'BOSCO', 11);
INSERT INTO chat VALUES (100, 1099000369, 'Moltovon', '[rinuncia rimanendo seduto ad osservare i corpi che gli pargono sempre piu parte di lui]', 'BOSCO', 10);
INSERT INTO chat VALUES (101, 1099000443, 'Itzamna', 'Lorelei si lascia cadere di sotto, atterrando rovinosamente sui cadaveri e su Moltovon, la nebbia gli avvolge entrambi, per poi distaccarsene ed andare a materializzarsi davanti a loro in una figura umanoide, ma dai tratti non ancora definiti', 'BOSCO', 1);
INSERT INTO chat VALUES (102, 1099000481, 'Lorelei', '+ha sensi di vomito dall\'odore che c\'è mentre cade su Molvoton e gli altri..La giovane figura brilla come una stella negli occhi piangenti]', 'BOSCO', 11);
INSERT INTO chat VALUES (103, 1099000513, 'Moltovon', '[senza forze stringe la spada la vista ormai e cupa e  violacea]', 'BOSCO', 10);
INSERT INTO chat VALUES (104, 1099000592, 'Itzamna', 'La figura che si materializza ha l\'aspetto di un umano, di statura appena sopra la media, vestita completamente di nero, con abiti che appaiono ai due fuori uso da secoli. [Salve mortali] Esclama sorridendo verso i due. Ha il volto pallido e gli occhi affossati. I capelli sono corti ed incolti', 'BOSCO', 1);
INSERT INTO chat VALUES (105, 1099000639, 'Moltovon', '[senza fiato e completamente sudato tenta un cenno]', 'BOSCO', 10);
INSERT INTO chat VALUES (106, 1099000683, 'Lorelei', '+la giovane ragazzina alza lo sguardo verso l\'umanoide osservandolo attentamente....] fateci uscire..[bisbiglia la giovane femmina dall\'innocenza ancor prossima]', 'BOSCO', 11);
INSERT INTO chat VALUES (107, 1099000809, 'Itzamna', 'La figura accentua il suo sorriso scuotendo il capo[No ragazzina, voi ora siete di mia proprietà] Con uno sguardo malvagio, poi osserva Moltovon [Voi invece... beh, andatevene di qui al più presto se ci tenete alla vita] Freddo e risoluto, indicando l\'elfo...', 'BOSCO', 1);
INSERT INTO chat VALUES (108, 1099000860, 'Lorelei', '+si guarda attorno osserva Moltovon..] non abbandonatemi..[la ragazzina trema mentre le mani pallide si portano ai capelli scuri]', 'BOSCO', 11);
INSERT INTO chat VALUES (109, 1099000951, 'Moltovon', 'st st stai tr tr tranquilla ragazzina,mo mo molt sono indistruttibile[dice a voce fioca]', 'BOSCO', 10);
INSERT INTO chat VALUES (110, 1099001053, 'Moltovon', '[con le ultime forze ripone la spada si alza e tira fuori l\'arco lasciando partire una moltitudine di frecce]', 'BOSCO', 10);
INSERT INTO chat VALUES (111, 1099001086, 'Itzamna', 'Lo sguardo dell\'essere si fa serio e pieno d\'ira[HO DETTO DI ANDARVENE] tuona verso Moltovon [andatevene!] gli occhi gli si illuminano di rosso mentre pronuncia queste parole, e Moltovon prova una immensa voglia di andarsene...', 'BOSCO', 1);
INSERT INTO chat VALUES (112, 1099001114, 'Itzamna', 'Le frecce di Moltovon sembrano passare attraverso alla creatura...', 'BOSCO', 1);
INSERT INTO chat VALUES (113, 1099001132, 'Moltovon', 'no non me ne vado [tuona]la ragazzina viene via con me!', 'BOSCO', 10);
INSERT INTO chat VALUES (114, 1099001191, 'Lorelei', '+chiude gli occhi mentre si accuccia tutta rannicchiata su se stessa ansimando terribilmente.] andate via..andate via...', 'BOSCO', 11);
INSERT INTO chat VALUES (115, 1099001232, 'Itzamna', 'La figura principia a muoversi rapidamente verso Moltovon, molto rapidamente... in pochissimo tempo Moltovon riceve un pungo allo stomaco, uno alla schiena, uno in faccia ed uno sul braccio che tiene l\'arco, senza che egli veda chi o cosa lo colpisca... i colpi non sono forti, non arrecano dolore. La creatura ritorna poi nella sua posizione iniziale...', 'BOSCO', 1);
INSERT INTO chat VALUES (116, 1099001362, 'Moltovon', '[impotente si avvicina alla ragazzina si stringe a lei chiudendo gli occhi e cercando concentrandosi di invocare in loro aiuto itzamna Il "Grande serpente piumato" colui che tutto può, il creatore del mondo e dell\'universo]', 'BOSCO', 10);
INSERT INTO chat VALUES (117, 1099001494, 'Itzamna', '[Bene, l\'avete voluto voi] Tuona il vampiro, tornando in forma gassosa e avvolgendo i due... entrambi sentono fortissima nausea, forte mal di testa, e sentono che i sensi li stanno abbandonando... la vista si ottenebra, i rumori svaniscono e l\'odore di morto scompare del tutto...', 'BOSCO', 1);
INSERT INTO chat VALUES (118, 1099001503, 'Lorelei', 'Scappate.[grida la ragazzina guardando l\'umanoide poi davanti a lei...]', 'BOSCO', 11);
INSERT INTO chat VALUES (119, 1099001561, 'Lorelei', '+chiude gli occhi cercando di rimanere coscente seppur respira lentamente e con fatica per tutto il nervosismo accumulato ed i continui sforzi di vomito...', 'BOSCO', 11);
INSERT INTO chat VALUES (120, 1099001621, 'Moltovon', '[gia debole da prima tende allo svenimento ma continua a mantenersi sveglio]', 'BOSCO', 10);
INSERT INTO chat VALUES (121, 1099001658, 'Itzamna', 'Sia Moltovon che Lorelei sono coscienti che se quella sensazione non dovesse svanire subito svenirebbero, e la sensazione non accenna a svanire, anzi, aumenta...', 'BOSCO', 1);
INSERT INTO chat VALUES (122, 1099001725, 'Lorelei', '+si tiene la mano sullo stomaco ] vi prego andate via..[tossisce esasperata verso Moltovon..] ci salveremo...', 'BOSCO', 11);
INSERT INTO chat VALUES (123, 1099001763, 'Moltovon', 'no ragazzina io mi salveò', 'BOSCO', 10);
INSERT INTO chat VALUES (124, 1099001808, 'Itzamna', 'L\'intensità della sensazione di nause a smarrimento continua ad aumentare............', 'BOSCO', 1);
INSERT INTO chat VALUES (125, 1099001809, 'Moltovon', 'non vi lascio sola  sono un elfo non conosco la calugna di voi umani', 'BOSCO', 10);
INSERT INTO chat VALUES (126, 1099001844, 'Moltovon', '[continua ad invocare itzamna]', 'BOSCO', 10);
INSERT INTO chat VALUES (127, 1099001861, 'Lorelei', 'Ahaaa vi prego...[straziante la sua voce] scomparite da qua..Moriremo tutti e due...', 'BOSCO', 11);
INSERT INTO chat VALUES (128, 1099001925, 'Moltovon', 'laciate la ragazza prendete me!prendete me![grida alla creatura svanita]', 'BOSCO', 10);
INSERT INTO chat VALUES (129, 1099001948, 'Itzamna', 'Moltovon sa, in cuor suo, che l\'unica cosa che potrebbe far cessare quella sensazione è la fuga, mentre Loriel perde i sensi egli resiste, ma ancora per pochissimi istanti...', 'BOSCO', 1);
INSERT INTO chat VALUES (130, 1099002049, 'Lorelei', '+sviene la giovane tredicenne dal corpo leggermente rotondetto...Non un segno più di coscenza...', 'BOSCO', 11);
INSERT INTO chat VALUES (131, 1099002055, 'Moltovon', 'prendete me vi prego,piuttosto la  morte ma non vi lascio una ragazzin[grida osservando i cadaveri a terra]', 'BOSCO', 10);
INSERT INTO chat VALUES (132, 1099002105, 'Itzamna', 'Anche Moltovon sviene... vi comunicherò via Khoramail lo sviluppo della vostra situazione...', 'BOSCO', 1);
INSERT INTO chat VALUES (133, 1099002623, 'Itzamna', 'clearthischat', 'BOSCO', 1);
INSERT INTO chat VALUES (136, 1099080288, 'Itzamna', 'Lorelei si sveglia nuovamente di soprassalto, il solito incubo: lei violentata ed uccisa dal vampiro, ne ha causato il risveglio. Non sa da quanto tempo si trova legata su quel letto completamente nuda, potrebbero essere tre giorni come una settimana... benchè nei suoi sogni la cosa sia differente, ella non riporta segni di alcun tipo di violenza, apparte i brutti ricordi...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (137, 1099080398, 'Lorelei', '+si desta di colpo tremante...la sua fronte è imperlata di sudore..non grida perchè non ne ha più le forze....Cerca di muoversi da quella posizione ma ovviamente non riesce...vorrebbe coprirsi ma rimane in un tacito dramma dei suoi incubi...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (138, 1099080484, 'Itzamna', 'All\'improvviso avviene una cosa che non era mai avvenuta nei giorni precedenti: Lorelei sente dei rumori lontani provenire da oltre la porta che vede davanti a se...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (139, 1099080529, 'Lorelei', 'Chi...chissà [tremante] che non sia il buon uomo che..che [rimane con il fiato sospeso sentendo i rumori mentre passa la lingua sulle labbra cercando di inumidirle...Sentendone la secchezza dei giorni]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (140, 1099080651, 'Itzamna', 'Dei passi sembrano avvicinarsi alla porta...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (141, 1099080709, 'Lorelei', '+cerca di sollevare il capo per vedere la porta.....seppur non sia felice ed abbia paura...emana un sospiro di liberazione..Almeno scoprirà la sua fine...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (142, 1099080836, 'Itzamna', 'Lorelei posa lo sguardo sulla porta nel momento stesso in cui essa si spalanca, andando a sbattere con forza contro il muro, dal lato interno. Nessuna figura sembra presente, per lo meno agli occhi di Lorelei, mentre una cosa strana attira l\'attenzione della donna: la porta non ha rimbalzato sul muro, come se fosse stata trattenuta da qualcosa... la stanza ripiomba nel silenzio...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (143, 1099080929, 'Lorelei', '+osserva con occhi attenti non tanto la porta quando quel che apparirà..Spalanca lo sguardo smeraldino..]nulla..[bisbiglia mentre si passa la lingua sulle labbra nervosamente..] ah..[osservando la porta] perchè non ha fatto BAM?', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (144, 1099081106, 'Itzamna', 'La porta aveva fatto rumore nell\'urtare contro il muro, ma un rumore sordo, quasi come se il muro fosse leggermente imbottito... nulla sembra muoversi d\'intorno. Oltre la porta è appena visibile una sorta di corridoio, completamente buio, mentre la stanza di Lorelei è illuminata da una luce che non pare aver provenienza...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (145, 1099081168, 'Lorelei', '+si morde il llabbro inferiore curiosa..mentre guarda il corridoio buio...infine osserva la porta aperta..] sarà stato il vento..[poi corruga la fronte la giovane ragazzina legata su quel letto] ma io non ho sentito freddo...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (146, 1099081239, 'Itzamna', 'Lorelei sente una lieve carezza alla guancia destra ed una voce che gli bisbiglia all\'orecchio [Ben alzata ragazzina] con tono affettuoso...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (147, 1099081285, 'Lorelei', '+si irrigidisce di colpo sentendo il calore sulla guancia...si volge di scatto di lato con il collo..] Chi..chi ha parlato?', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (148, 1099081429, 'Itzamna', 'La ragazza nota, al suo fianco, il volto del vampiro che le sorride e continua ad accarezzarle la guancia col dorso dell\'indice della mano destra... egli è freddo al contatto, ma Lorelei si sente quasi tranquillizzata da quel dito...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (149, 1099081519, 'Lorelei', '+il cuore le batte forte mentre si vergogna terribilmente di quello stato una vota visto il vampiro..Deglutisce seppur la carezza le faccia bene....e un lieve sorriso s\'aprofitti delle sue labbra carnose...]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (150, 1099081589, 'Itzamna', '[Ciao ragazzina] Esclama il vampiro [non mi hai ancora detto il tuo nome] sorride, continuando a carezzarla, rallentando un pò i movimenti...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (151, 1099081622, 'Lorelei', 'Lorelei [prontamente risponde la ragazza non volendo mandare in collera quella creatura] e vo?', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (152, 1099081789, 'Itzamna', 'Il vampiro sorride, alzandosi dalla sponda alla quale era appoggiato e portandosi a poca distanza dal braccio destro di Lorelei [Oh beh, il mio nome ha poca importanza... molti mi chiamano demonio, altri il maligno... il mio vero nome comunque è Teldaran] Pensoso... [ed ho una missione per voi] abbozzando ora un sorriso verso la ragazza...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (153, 1099081946, 'Lorelei', 'Per me? [spalancando lo sguardo smeraldino e sensuale della giovane ed innocente ragazzina] Io..Non ho fatto nulla per meritarmelo..[sospira mentre lo guarda..impaurita alle sue parole]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (154, 1099082208, 'Itzamna', '[si, per te] esclama il vampiro sorridendo, poi si china presso il braccio di Lorelei ed estrae un pugnale dalla forma serpentina, recidendo di colpo le vene del polso di Lorelei... quest\'ultima non prova tanto dolore, quanto una strana sensazione di svuotamento...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (155, 1099082288, 'Lorelei', 'Ma ma...[la paura è tanta mentre inizia a tremare vedendo quel che accade al suo polso.] che..che mi succede? [trema la giovane mentre vede il sangue fuori uscire e sporcare il letto]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (156, 1099082352, 'Itzamna', 'Il sangue fuoriesce copiosamente, ed il vampiro porta la sua bocca a berne un pò...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (157, 1099082383, 'Lorelei', '+sentendo le labbra del vampiro si irrigidisce completamente mentre il petto è un continuo salire e scendere frettoloso ...la ragazzina ansima....', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (158, 1099082510, 'Itzamna', 'Il vampiro beve ancora un pò, poi lecca la ferita e questa si rimargina immediatamente, ponendo fine alla perdita di sangue... il letto è parecchio sporco, ma il vampiro sembra pulito, apparte alcune gocce sulle labbra [stai tranquilla Lorelei] sorride [ho detto che mi servi, non ti ucciderò di certo così noiosamente] lo sguardo del vampiro sembra emanare male...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (159, 1099082591, 'Lorelei', '+si sente debole..poggia la testa sul cuscino cornice di scuri capelli.......Il ventre trema, mentre annuisce al vampiro seppur sconvolta nel veder la ferita reimarginarsi.. ] perchè sono nuda? [una domanda che le preme da molto tempo]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (160, 1099082692, 'Itzamna', 'Il vampiro sorride ancora [perchè così sei più bella] esclama come battuta... [e soprattutto perchè i tuoi vestiti puzzavano di carogna...]', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (161, 1099082743, 'Lorelei', '[la seconda affermazione la convince...Ma si sente male così legata su gambe e braccia a mostra r le sue intimità..L\'innocente figura osserva gli occhi del vampiro] cosa volete da me? [bisbiglia mentre le rosse labbra si tendono appena ]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (162, 1099082891, 'Itzamna', '[Te] facendosi ora serio [Sai, dopo tanti anni di non morte si inizia a fare difficoltà a capire i tempi in cui si vive] scrolla le spalle, come ad allontanare qualcosa [tu dovrai aiutarmi a comprendere, poi sarai libera] la osserva per qualche istante [e se ti comporterai bene ti farò anche un dono', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (163, 1099082933, 'Lorelei', 'Un dono? [or la ragazzina appar interessata..Ancor infantile annuisce al vampiro]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (164, 1099083061, 'Itzamna', '[Nei prossimi giorni vedrai come vivo io la mia eternità... poi se ti piacerà ti farò dono di essa] sorride, sapendo che probabilmente la ragazza non sarà disponibile [per ora siete al mio servizio, e vi prego di non fare scherzi] sorridendo e avvicinandosi al volto della ragazza, sempre col pugnale in mano', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (165, 1099083133, 'Lorelei', '[cerca di ritrarsi indietro vedendo quel pugnale ma non riesce essendo legata al letto] Va bene...[non si rende conto di quel che succede...Il suocorpo seppur appena rotondo è molto sensuale]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (166, 1099083236, 'Itzamna', 'Il vampiro porta il proprio braccio sinistro sopra il volto di Lorelei, a circa trenta centimetri, mentre il destro recide le vene di quel braccio... il sinistro viene poi portato vicino alla bocca della ragazza [Bevete, e vi convincerete meglio] col tono con cui si da un consiglio ad un grande amico...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (167, 1099083337, 'Lorelei', '[assorta nei suoi dubbi e nei suoi pensieri la giovane ragazzina dischiude le carnose labbra iniziando così a suggere il sangue che scivola via dal vampiro....Una scossa di piacere in quel momento....Un irrigidirsi degli arti..]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (168, 1099083475, 'Itzamna', 'La sensazione che la ragazzina prova è di molte volte più piacevole di qualsiasi altra sensazione ella abbia mai provato, il vampiro mantiene ancora il braccio presso la bocca di Lorelei', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (169, 1099083527, 'Lorelei', '+succhia avidamente il sangue..ingoiandolo mntre gli occhi son chiusi...Le mani non si possono muovere essend i polsi legati..ma sembra contorcersi dal piacere...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (170, 1099083582, 'Itzamna', 'Il vampiro sorride nuovamente, distaccando ora, dolcemente, il braccio dalle labbra di Lorelei...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (171, 1099083648, 'Lorelei', '+le labbra sono sporche di sangue..la ragazzina apre gli occhi..L\'espressione sembra mutare in lei..mentre con lenta malizia lal ingua scivoli sulle labbra a pulire...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (172, 1099083737, 'Itzamna', 'Teldaran lecca il suo stesso braccio, ponendo fine alla perdita di sangue, poi si dirige verso i piedi di Lorelei, continuando ad osservarla', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (173, 1099083774, 'Lorelei', '+gli occhi smeraldini della ragazzina osservano il vampiro che procede verso i suoi piedi..Curiosa, tediata dalla novità lo segue avida...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (174, 1099083823, 'Itzamna', 'Il vampiro principia a sciogliere le corde che tengono legati i piedi della ragazza', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (175, 1099083860, 'Lorelei', '+festante di questo rimane ferma per poi nuovamente sorride al piacere che proverà a muover nuovamente le gambe..Sospira..', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (176, 1099083940, 'Itzamna', 'Il vampiro scioglie poi anche le altre corde che legavano la ragazza, invitandola ad alzarsi [avanti, sono dodici giorni che state li, seguitemi] restando immobile e attendendo che Lorelei lo segua...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (177, 1099084017, 'Lorelei', 'Dodici? [spalanca gli occhi smeraldini mentre si sente libera..Porta subito le mani ai seni di appena terza misura coprendoseli..] Ma..[deglutndo mentre le gambe fan fatica a reggerla]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (178, 1099084110, 'Itzamna', 'La creatura della notte si fa serio [beh, il tempo è un concetto abbastanza relativo quando si è immortali, ora seguitemi] incamminandosi verso la porta...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (179, 1099084185, 'Lorelei', '+cerca di trattenere il fiato mentre una mano va a nasconder il seno e l\'altra le sue intimità...Annuisce mentre si avvia deitro al vampiro...Si morde il labbro inferiore..]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (180, 1099084313, 'Itzamna', 'Il vampiro s\'avanza verso il corridoio, varcando la porta... Lorelei s\'accorge di riuscire a vedere tranquillamente nel buio, anche se le immagini le giungono prive di colori... il corridoio si dilunga per circa una decina di metri, concludendosi con una rampata di scale...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (181, 1099084358, 'Lorelei', '[porta entrambe le mani ai suoi occhi sfregandoseli mentre vede che il buio per lei non è più un problema..Il suo volto èpallido, non capisce...Che le succede? ] dove stiamo andando?', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (182, 1099084481, 'Itzamna', 'Il vampiro, senza voltarsi, esclama [fuori...] principiando oramai a salire le scale...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (183, 1099084588, 'Lorelei', 'Ma sono nuda..[la ragazza lo segue mentre inizia a salire le scale..Sente ancora freddo...sospira]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (184, 1099084688, 'Itzamna', 'Lorelei non sente freddo, mentre il vampiro sale le scale, sopra le quali vi è una piccola casupola, con una porta che da sull\'esterno e altre che danno ad altre stanze [ancora per poco] risponde il vampiro', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (185, 1099084830, 'Lorelei', '+la giovane ragazza continua a proseguire il suo incedere lasciando poco spazione fra lei ed il vampiro...Annuisce mentre si guarda il corponudo e prova comunque timidezza...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (186, 1099084914, 'Itzamna', 'Il vampiro esce all\'esterno. La casa è situata presso alcuni alberi, il sole artificiale sembra essersi spento da poco...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (187, 1099085135, 'Lorelei', '+osserva la casa...appare stranita mentre si guarda attorno dischiudendo le carnose labbra...Un lieve sorriso mentre accellera il passo]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (188, 1099085199, 'Itzamna', 'Il luogo circostante è immerso nella boscaglia, solo un sentiero si diparte dalla casa... il vampiro annusa l\'aria, poi bisbiglia a Lorelei [forza, seguimi, rapida e silenziosa] mentre si muove rapidamente lungo il sentiero...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (189, 1099085278, 'Lorelei', '+silenziosa...si trattiene nel non parlare come è suo solito esser chiacchierona e loquace...Ma continua a procederementre si guarda le braccia nude..Non prova freddo..Continua a camminare dietro di lui muovendosi veloce...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (190, 1099085393, 'Itzamna', 'Lorelei non prova nemmeno dolore per il fatto di camminare a piedi scalzi, ella è completamente nuda, ma l\'unica sensazione che prova collegata a questo fatto è un pò di vergogna, neanche eccessiva... d\'improvviso, in vicinanza di una strada più grande, il vampiro si nasconde dietro un cespuglio ed invita la ragazza a fare lo stesso con un gesto della mano...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (191, 1099085517, 'Lorelei', '+sospira mentre si nasconde...La timidezza sale per la paura che qualcuno la possa vedere così...Che direbbe? Non lo sa nemmeno lei mentre si accuccia nascondendosi.....Assottiglia lo sguardo felino...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (192, 1099085659, 'Itzamna', 'Ad un tratto il vampiro indica due figure, un uomo ed una donna, che stanno passeggiando mano nella mano, ora sono udibili anche le risate della donna e le indistinte parole dell\'uomo, il vampiro bisbiglia a Lorelei [Quelli saranno i tuoi nuovi vestiti] indicando la donna, vestita di un abito viola con una grossa gonna dall\'orlo bianco, il tutto ben ricamato...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (193, 1099085752, 'Lorelei', 'Non mi piace..[distorcendo le carnose labbra] voglio dimagrire..[non è grassa assolutamente..solamente leggermente rotonda di fianchi, forse il troppo pane nobiliare] Ma va bene..[sorride armoniosamente ma innocente ancora] glieli vado a chiedere?', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (194, 1099085886, 'Itzamna', 'Il vampiro fa cenno a Lorelei di tacere, mentre la ragazza può notare distintamente gli occhi della creatura illuminarsi di un colorito giallastro; nel contempo l\'uomo prende ad urlare terrorizzato e scappa in direzione opposta, a quella che stava seguendo, mentre la donna è ora esattamente di fronte al cespuglio dietro al quale i due sono nascosti...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (195, 1099086069, 'Lorelei', '+spalanca gli occhi mentre osserva il vampiro or cambiar di color degli occhi..Deglutisce rimanendo in silenzio....Si morde le carnose labbra osservando la dama sola...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (196, 1099086083, 'Itzamna', 'Teldaran scatta fuori dal cespuglio e la donna, dalle fattezze molto simili a quelle di Lorelei, che fino ad un momento fa rideva alle battute dell\'uomo della sua vita ed ora lo guarda con sguardo attonito fuggire, viene aggredita dal vampiro che in breve le porta un morso al collo. Ella si dimena fortemente dapprima ma poi piano piano le energie e, forse, anche le speranze, sembrano abbandonarla, finchè cade inerme al suolo...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (197, 1099086209, 'Lorelei', '+vedendola cadere inerme al suolo la giovane fanciulla corre dietro al vampiro....Il cuore le batte all\'impazzata mentre osserva la fine della donna a terra...Si morde ambedue lel abbra annuendo ad aver capito che è successo...Attende che sia lui a parlare..', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (198, 1099086389, 'Itzamna', 'Il vampiro si asciuga le poche gocce di sangue che gli sporcano le labbra con la lingua, nessun segno di quanto avvenuto è rimasto sulla donna, apparte il suo sguardo terrorizzato ed il suo pallore. Teldaran afferra il corpo della donna e lo scaraventa tra i cespugli, poi lo indica a Lorelei [vai a vestirti] sorridendo [questo consideralo un\'assaggio]si guarda poi attorno, attendendo che la ragazza faccia ciò che deve fare', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (199, 1099086476, 'Lorelei', '+annuisce...sembra che comunque andar a profanar un corpo morto non le dia disagio..Si nasconde dietro al cespuglio indossando prima il corpetto edinfine la gonna.....rubando anche le scarpe..ma non l\'intimo quasi fosse leggermente schifiltosa...Che non sia una gitana come s\'era presentata? Infine dopo essersi sistemata nel vestito viola s\'avvia fuori dal cespuglio verso il vampiro...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (200, 1099086617, 'Itzamna', '[Bene, ed ora possiamo tornare a casa... da oggi tu vivi con me e dovrai scordarti tutta la tua vita precedente] Parla freddo, come se dicesse qualcosa che non vorrebbe dire, ma che è costretto a dire... s\'incammina poi verso il sentiero dal quale è appena provenuto...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (201, 1099086663, 'Lorelei', 'Tutta..[mormora mentre sente una lacrima scender dalla guancia destra per poi seguire il vampiro] Potrò avere altri abiti?', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (202, 1099086803, 'Itzamna', 'Il vampiro annuisce [certamente, ma non troppo presto... è bene evitare di farsi vedere in città più di tanto... a meno che tu non voglia eliminare tutte le persone che conosci...] Il vampiro si volta poi di scatto [ah, un\'altra cosa: non devi camminarmi dietro, ma affianco... questo consideralo un piccolissimo regalo] sorridendo e riprendendo a camminare...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (203, 1099086866, 'Lorelei', 'Che cambia? [ la giovane non riesce a capire mentre si sposta al suo fianco..Cerca di abituarsi all\'abito mentre trattiene il fiato a sistemarsi il corpetto]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (204, 1099087029, 'Itzamna', '[Cambia che dietro camminano i servi, e non voglio che tu ti senta tale...] Il vampiro osserva ora Lorelei che si trova al suo fianco [tu sei libera di andare dove vuoi, ma tutte le sere dovrai rientrare qui e nessuno dovrà sapere nulla ne di me ne di questo luogo] giungendo oramai a pochi passi dalla casa...', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (205, 1099087068, 'Lorelei', 'Va bene..[prosegue il suo dire mentre s\'avvia al suo fianco verso la casa che oramai sarà sua dimora] Dormirò con voi?', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (206, 1099087182, 'Itzamna', '[Io dormo di giorno, mentre tu credo sia abituata a dormire di notte...] sorride [vedi tu se vuoi adattarti ai miei ritmi oppure vivere i tuoi... ovviamente se decidessi per quest\'ultima il tempo per il quale dovrai stare con me si allungherà...]', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (207, 1099087263, 'Lorelei', 'Vivo di notte da parecchi anni..[non vuole dire il perchè di questa sua affermazione] Anche...Beh avete visto...Giravo il bosco di notte...[mentre passa una mano ai suoi fianchi felice dell\'abito]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (208, 1099087321, 'Teldaran', '+annuisce] come preferisci... riguardo al dormire assieme... il mio modo di dormire assomiglia più a quello dei morti che a quello dei vivi, quindi direi che sarebbe meglio che tu dormissi da sola...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (209, 1099087404, 'Lorelei', 'Ah..[annuendo mentre si guarda attorno] giusto..[un lieve sorriso arcua le carnose labbra della ragazzina..Dal volto pallido ed innocente ma accattivante]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (210, 1099087493, 'Teldaran', 'Ora direi che sia giunto il momento di ritirarci [esclama sempre sorridende ed aprendo la porta della casa] Non possiamo abitare i piani alti, poichè la casa deve sembrare disabitata, ma sotto si può fare quasi tutto...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (211, 1099087534, 'Lorelei', '[un altro sorriso mentre entra nella casa iniziando a discendere le scale] Nessuno sa della vostra esistenza?', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (212, 1099087657, 'Teldaran', '+scuote il capo] Beh, ci siete voi... e l\'elfo eroe dell\'altra sera [facendosi serio] ed infine qualche cacciatore... [discendendo le scale assieme a Lorelei] però i più ignorano la mia posizione...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (213, 1099087704, 'Lorelei', 'Che fine ha fatto quell\'elfo? [mormora mentre discende le scale celere..no volendo farlo aspettare]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (214, 1099087757, 'Teldaran', 'Oh... niente di che... ha perduto la capacità di tirare con l\'arco... ed un pò di memoria... per il resto è ancora vivo e libero... avrò bisogno di lui più avanti [ammiccando a Lorelei]', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (215, 1099087795, 'Lorelei', 'Meno male..[sospirando mentre ora guarda il corridoio] dove devo andare? [spaesata]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (216, 1099087960, 'Teldaran', '+indica una porta a destra, subito prima della stanza di prima...] La, quella sarà la vostra stanza, io giacerò in quella di fronte, tuttavia... beh, la notte è ancora lunga...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (217, 1099088014, 'Lorelei', '[un sorriso mentre fissa il vampiro negli occhi..Occhi vivi solari..del color del verde intenso] si...[interrogativa per farlo proseguir nelle ue parole]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (218, 1099088092, 'Teldaran', '+sorride] ...beh, potreste cominciare a spiegarmi qualcosa sul mondo attuale...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (219, 1099088121, 'Lorelei', 'Volentieri...[mentre continua a guardarsi attorno] rimaniamo qua? O ci mettiamo comodi...[mentre si stiracchia leggermente il corpo sinuoso e femminile]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (220, 1099088166, 'Teldaran', 'Vieni [le fa cenno di seguirla, mentre entra in una porta accanto a quella della stanza di Lorelei] possiamo stare qua...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (221, 1099088324, 'Lorelei', '+annuisce mentre aspetta che la porta s\'apra...Un far affascinante e pacato in quella femmina che prima interpretava la ragazzina gitana...Mistero nella sua storia ccedendo alla stanza...', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (222, 1099088428, 'Teldaran', '+apre la porta e la stanza oltre questa appare una normale sala, con un tavolo quadrato attorno al quale sono disposte tre sedie, qualcosa che ricorda vagamente una cucina, ma senza pentole od utensili vari...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (223, 1099088471, 'Teldaran', '', 'PRIVATA: Building a mistery:', 13);
INSERT INTO chat VALUES (224, 1099088475, 'Teldaran', '', 'PRIVATA: Building a mistery:', 13);
INSERT INTO chat VALUES (225, 1099088574, 'Lorelei', '+si avvia verso il tavolo prendendo posto..mentre poggia le mani sul piano orizzontale in legno carezzandolo...attendendo così Teldaran....', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (226, 1099088639, 'Teldaran', '+si siede anch\'egli al tavolo e prende a parlare] Suvvia dunque, parti dallo spiegarmi che ci facevi da sola nel bosco...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (227, 1099088818, 'Lorelei', 'Passeggiavo come ogni sera..mentre ho visto due figure che camminavano..così le ho seguite..ma temo di averle perse..Anzi sicuramente..] sospira....', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (228, 1099088916, 'Teldaran', '+sorride] No, non le hai perse, semplicemente esse non esistevano, avevano il solo scopo di condurti fino a quella stanza... [osserva la ragazza] purtroppo non avevo previsto quello stupido elfo, ma credo che la prossima voltà ci penserà meglio prima di inoltrarsi nei boschi...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (229, 1099089105, 'Lorelei', 'da..Davvero? [stupita da quel dire la ragazzina appar ritrarsi] è stato tutto progettato..[il labbro inferiore trema per contener le sue parole]', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (230, 1099089206, 'Teldaran', '+annuisce] ...beh, in realtà non proprio tutto... però sono stato io a volerti far arrivare a me... altrimenti non credo proprio che ci saresti mai arrivata... se non come preda...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (231, 1099089322, 'Lorelei', 'Ma perchè proprio io? [guardandosi le vesti per poi osservar gliocchi del vampiro..Degli occhi freddi ma particolari allo stesso momento] che altro volete sapere?', 'PRIVATA: Building A Mistery', 11);
INSERT INTO chat VALUES (232, 1099089494, 'Teldaran', '+sorride] Perchè così voleva il fato [restando volutamente ambiguo, poi continua a porre domande sulla società e sui modi di fare di Lorelei...', 'PRIVATA: Building a mistery', 13);
INSERT INTO chat VALUES (233, 1099089994, 'Itzamna', 'clearthischat', 'PRIVATA: Building a mistery', 1);
INSERT INTO chat VALUES (234, 1099325578, 'Uriel', '[i passi del guerriero lo portano davanti all\'entrata delle taverna e appogiando la destra guantata sulla porta la apre entrando', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (235, 1099325779, 'Uriel', '[entrato dentro si avvia verso il bancone con passo sicuro e guardandosi attorno notando la taverna poco affollata oridana da bere] oste mi porti un bicchiere di vino', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (236, 1099325917, 'Uriel', '[attendendo che l\'oste gli porti da bere si volta avendo cosi le spalle al bancone e lo sguardo sulla porta', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (237, 1099325917, 'Itzamna', 'L\'oste consegna ad Uriel ciò che ha ordinato entro breve...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (238, 1099325965, 'Uriel', '[all\'arrivo dell\'oste lo ringrazia e prende a sorseggiare il vino continuando a guardare la porta chiedendosi che fine abbiano fatto i suoi compagni di viaggio', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (239, 1099326602, 'Itzamna', 'La taverna è abbastanza ampia e vuota, oltre ad Uriel vi è solo un altro gruppo di avventori, di quattro persone (due umani, un elfo ed un\'elfa), seduti ad un tavolo abbastanza distante dal bancone...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (240, 1099326687, 'Uriel', '[finito il suo vino e scorgendo l\'unico tavolo affollato decide di avvicinarsi cercando informazioni su i suoi amici', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (241, 1099326799, 'Itzamna', 'I quattro avventori non sembrano accorgersi di Uriel...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (242, 1099326897, 'Uriel', '[arrivato ormai in prossimita del tavolo dice] salve scusatemi se vi interrompo potrei chiedervi delle informazioni [la sua voce e carismatica e spera che questa gente non si malvagia', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (243, 1099327033, 'Itzamna', 'I quattro bloccano improvvisamente i loro discorsi e si voltano verso Uriel con aria interrogativa, ma non proferiscono parola alcuna, l\'elfa sorride allo straniero, mente gli altri l\'osservano curiosi...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (244, 1099327306, 'Uriel', '[nota l\'elfa che sorride ma non facendogli caso dice] mi presento sono Uriel e sono partito con un gruppo di miei compangi d\'avventura dalla nostra patria di nome [attende un attimo come se i ricordi fossero vaghi e poi prosegue] WinterSpring e poi non so come e ne quando sono finito qui, voi per caso avete incrociato altri umani come me che vi hanno raccontato una storia simile [nella sua voce c\'è una vene di speranza ', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (247, 1099327663, 'Uriel', '[guarda il gruppo sbigottito nelle sue parole c\'era solo verita pensa scuotendo la testa e dice] allora scusatemi se vi ho interrotto [per poi allontanarsi e sedersi ad un tavolo portando i due gomiti sul tavolo e le mani tra i capelli', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (248, 1099327731, 'Itzamna', 'I quattro continuano a ridacchiare per un pò, poi tornano ai loro discorsi, mentre l\'elfa lancia un\'ultima occhiata ad Uriel, probabilmente riuscendo a non farsi notare...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (246, 1099327487, 'Itzamna', 'Tutti scoppiano a ridere alle parole di Uriel e solo l\'elfa, che appare piuttosto giovane... seppur elfa... sembra tentare di limitarsi un pò... uno dei due umani esclama, ridendo [Vai a raccontare frottole a qualcun\'altro] tutto ciò non sembra proferito con cattiveria...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (249, 1099327880, 'Uriel', '[restando sempre seduto al tavolo e continuando a cercare di pensare ai suoi ricordi ma quello che gli vieni in mente sono solo delle veloci immagini della sua citta e dei suoi amici e poi niente', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (250, 1099328397, 'Itzamna', 'I quattro tornano a farsi gli affari propri ed ogni tanto Uriel li sente scoppiare a ridere, probabilmente non per causa sua...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (251, 1099328625, 'Uriel', '[ogni tanto sentendo le risate si volta a guardarli sperando che non ridano di lui e pensando che potevano comportarsi anche meglio, poi pensa che della citta non ne sa molto anzi quasi niente e allora si alza e si dirige verso l\'oste', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (252, 1099328711, 'Itzamna', 'L\'oste osserva Uriel silenzioso, sta seduto dietro al bancone ad osservare i presenti, non sembra aver nulla di troppo importante da fare se non rilassarsi...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (253, 1099328795, 'Uriel', '[arrivato al bancone dice] mi scusi oste potrebbe darmi qualche informazione sulla citta [detto questo si volta a guardare nuovamete il gruppo di amici al tavolo invidiandoli un po per quella amicizia che lui non ha piu', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (254, 1099328967, 'Itzamna', 'L\'oste guarda dubbioso Uriel [Mi prendete in giro? [domanda abbastanza freddo...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (255, 1099329041, 'Uriel', 'non mi permetterei mai [dice con tono serio guardando l\'oste con aria seria', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (256, 1099329158, 'Itzamna', 'L\'oste sorride, trattenendosi vistosamente dallo scoppiare a ridere, cosa che si intuisce anche dal modo in cui proferisce le seguenti parole:[E cosa desiderereste sapere di questa città?', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (257, 1099329277, 'Uriel', 'non so da cosa è composta, chi la comanda e roba del genere [nelle sue parole c\'è curiosita mista alla serieta con cui proferisce le parole', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (258, 1099329455, 'Itzamna', 'Scuote il capo facendosi serio, apre la bocca per parlare, ma s\'interrompe notando l\'elfa che giunge al bancone, appoggiandosi ad esso affianco ad Uriel, domandando all\'oste, con voce gentile ed aggraziata [Desidereremo ancora da bere] l\'oste le annuisce e si allontana dal bancone... l\'elfa si volta verso Uriel sorridendogli...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (259, 1099329593, 'Uriel', '[notando l\'elfa sopraggiungere si volta e la guarda dicendogli] sapete siete fortunata ad avere ancora degli amici voi [nella sua voce c\'è un velo di malinconia detto questo abbassa leggermente il capo', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (260, 1099329833, 'Itzamna', 'L\'elfa sorride, anche se sembra esservi una punta di malinconia anche nei suoi occhi marroni, poi avvicina le labbra ad Uriel, cominciando a parlare a bassa voce [Gli amici vanno e vengono] fa una breve pausa [ed io gradirei avere informazioni sulla vostra storia...] la voce si direbbe quasi musica, mentre ella sorride...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (261, 1099329991, 'Uriel', '[quasi affascinato dalla voce dell\'elfa si volta dicendogli sottovoce] farebbe piacere anche a me poterla raccontare a qualcuno senza che questo mi rida in faccia e avrei anche bisogno di un amico in questa citta [dice questo con voce malinconica guardandola negli occhi con i suoi occhi verdi', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (262, 1099330187, 'Itzamna', 'La giovane elfa continua a sorridere [vi aspetto questa sera dopo lo spengimento del sole artificiale nei pressi del bosco] esclama rapidamente, sempre sottovoce e con tono gentile, poi s\'interrompe non appena vede giungere l\'oste con l\'ordinazione, l\'afferra e si allontana, senza proferi altra parola...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (263, 1099330367, 'Uriel', '[alle parole dell\'elfa compare un leggero sorriso sul volto pur non capendo il significato di tutte le parole che l\'elfa a pronunciato una gli è rimasta in mente molto bene sole e artificiale poi notando l\'oste si volta attendendo che risponda alla sua domanda', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (264, 1099330498, 'Itzamna', 'L\'oste torna ad osservare Uriel, sorridendo... [andatevene, non ho tempo da perdere con i pazzi io] tornando serio [se volete altro da bere o da mangiare chiedete, altrimenti sapete dov\'è l\'uscita] osservandolo, attendendo risposta...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (265, 1099330567, 'Uriel', '[guarda l\'oste con aria seria pensando che forse è pazzo davvero poi dice] cosa avete da mangiare', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (266, 1099330765, 'Itzamna', 'L\'uomo, che si direbbe abbastanza anziano, scrolla le spalle[Che domande! Quello che sta scritto la] Indicando un foglio appeso al muro dietro al bancone, sul quale sembrano essere riportati dei prezzi...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (267, 1099330854, 'Uriel', '[guarda attentamente il foglio cercando di capire cosa ci sia scritto', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (268, 1099330985, 'Itzamna', 'Uriel s\'avvede che il foglio riporta alcuni cibi col rispettivo prezzo, la lingua in cui il foglio è scritto è differente da quella usata di solito dall\'umano, ma egli riesce comunque ad intuire il significato delle parole, data la poca differenza...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (269, 1099331133, 'Uriel', '[dopo aver letto il foglio si volta verso l\'oste e ordina una bottiglia d\'acqua un piatto di carne e un po di pane e poi si va a sedere al tavolo di prima dove ha pensato', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (270, 1099331213, 'Itzamna', 'L\'oste annuisce, poi si volta e va in cucina.... Nel frattempo Uriel nota che il gruppetto di prima si sta alzando e muovendo verso il bancone...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (271, 1099331295, 'Uriel', '[segue con lo sguardo il gruppo che si sta avvicinando al bancone', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (272, 1099331415, 'Itzamna', 'Il gruppo si avvicina all\'oste, appena riuscito, e, dopo aver scambiato con lui qualche parola, paga una certa somma di denaro e si allontana. L\'elfa non volge nemmeno lo sguardo verso Uriel...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (273, 1099331493, 'Uriel', '[segue sempre con lo sguardo il gruppo che esce dalla taverna chiedendosi dove sara mai il bosco', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (274, 1099331714, 'Itzamna', 'L\'oste si siede nuovamente ad osservare lo spazio difronte a se, osservando praticamente sempre Uriel, non essendovi altri presenti...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (275, 1099331821, 'Uriel', '[mentre attende che l\'oste gli porti la cena continua a giocherellare con la collana a forma di leone', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (276, 1099331880, 'Itzamna', 'A breve dalla cucina esce una cameriera, piuttosto in carne e bruttarella, con in mano un vassoio... lo porta ad Uriel e glielo poggia sul tavolo per poi allontanarsi...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (277, 1099331973, 'Uriel', '[quando la cameriera le porta il cibo le dice] grazie ecco questo è per voi [consegnandogli qualche moneta in piu rispetto a quello che dovrebbe pagare per poi mettersi a mangiare', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (278, 1099332000, 'Itzamna', 'La cameriera si allontana sorridendo...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (279, 1099332087, 'Itzamna', 'Il cibo non è di altissimo livello, comunque è meglio di ciò che Uriel ha mangiato negli ultimi giorni, durante il viaggio coi suoi amici...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (280, 1099332170, 'Uriel', '[nota che il cibo è molto buono e mangia di gusto anche perche era da stamattina che non mangiava e quindi qualsiasi cosa gli sarebbe risultata migliore di quella che ha mangiato con i suoi amici in viaggio, ripensando ai momenti con cui era con gli amici in viaggio viene colto da un mal di testa e preferisce almeno per adesso non pensarci piu e finisce il suo pasto', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (281, 1099332279, 'Itzamna', 'Nulla di nuovo sembra accadere nella taverna...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (282, 1099332446, 'Uriel', '[finito di mangiare si alza e si avvicina al bancone', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (283, 1099332472, 'Itzamna', 'L\'oste osserva Uriel, sorridendo mentre lo vede avvicinarsi...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (284, 1099332569, 'Uriel', '[arrivato al bancone dice] mi scusi oste saprebbe indicarmi dove posso trovare il bosco [e aggiunge] e potreste fare da parte mia i complimenti al cuoco era da un po che non mangiavo cosi bene', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (285, 1099332639, 'Itzamna', 'L\'oste annuisce ad Uriel [Il bosco si trova oltre il tempio, e riferirò al cuoco i vostri complimenti] Sorridendo un pò per l\'insolita domanda...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (286, 1099332712, 'Uriel', 'la ringrazio molto potrei porvi un altra domanda sapete dove posso trovare un posto per dormire la notte', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (287, 1099332788, 'Itzamna', 'L\'oste sorride, indicando una rampa di scale presente all\'interno del salone [Qui, ad un prezzo modico]', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (288, 1099333027, 'Uriel', 'bene allora se mi servira un posto per dormire verro da voi [gli dice con un sorriso poi lo saluta dicendo] buonasera è stato un piacere essere stato ospitato nella vostra taverna [per incamminarsi per uscire dalla taverna', 'TAVERNA PUBBLICA', 12);
INSERT INTO chat VALUES (289, 1099333190, 'Itzamna', 'L\'oste annuisce e segue i passi di Uriel fino a quando questi non è uscito dalla taverna, per poi tornare ai propri affari...', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (290, 1099333241, 'Uriel', '[quando vede l\'entrata del bosco pensa dopo molto pellegrinare sono riuscito a trovare il bosco per poi guardarsi intorno in cerca di un posto abbastanza comodo per sedersi', 'BOSCO', 12);
INSERT INTO chat VALUES (291, 1099333262, 'Itzamna', 'Il bosco appare tranquillo e disabitato, solo poche persona azzardate si avvicinano ad esso ora che il sole artificiale è quasi spento... una leggera brezza spira, come solito, da ovest, rinfrescando l\'aria...', 'BOSCO', 1);
INSERT INTO chat VALUES (292, 1099333475, 'Itzamna', 'clearthischat', 'TAVERNA PUBBLICA', 1);
INSERT INTO chat VALUES (293, 1099333573, 'Uriel', '[notando un masso abbastanza comodo all\'infuori del bosco si avvia verso quello per poi sedersi ed estrarre la sciabola guardandone l\'elsa e riportando a volte nella sua mente ricordi di combattimenti con i suoi amici', 'BOSCO', 12);
INSERT INTO chat VALUES (294, 1099333960, 'Uriel', '[dopo un po si rialza e rinfodera la spada e si mette a guardare il paesaggio intorno', 'BOSCO', 12);
INSERT INTO chat VALUES (295, 1099334076, 'Itzamna', 'Il paesaggio si sta scurendo rapidamente con lo spegnersi del sole, mentre i pochi presenti cominciano ad allontanarsi...', 'BOSCO', 1);
INSERT INTO chat VALUES (296, 1099334159, 'Uriel', '[si guarda intorno per vedere se tra i presenti c\'è anche l\'elfa della taverna', 'BOSCO', 12);
INSERT INTO chat VALUES (297, 1099334232, 'Itzamna', 'Uriel non nota l\'elfa, anche se in lontananza nota una figura incappucciata, che potrebbe quindi essere l\'elfa...', 'BOSCO', 1);
INSERT INTO chat VALUES (298, 1099334327, 'Uriel', '[al vedere la figura incappucciata  si avvolge con il mantello portando pero la mano destra sull\'elsa della sciabola il suo movimento è nascosto dal mantello', 'BOSCO', 12);
INSERT INTO chat VALUES (299, 1099334430, 'Itzamna', 'Uriel nota che la figura si sta lentamente dirigendo nella sua direzione...', 'BOSCO', 1);
INSERT INTO chat VALUES (300, 1099334494, 'Uriel', '[continua a tenere la presa con la destra sull\'elsa della sciabola avvolto nel mantello e fissando la figura cercando di riconoscerla magari dal modo di camminare', 'BOSCO', 12);
INSERT INTO chat VALUES (301, 1099334690, 'Itzamna', 'La figura continua ad avvicinarsi... ella è totalmente coperta da un mantello marrone e si muove lentamente, diretta esattamente verso Uriel, ciò sembra ormai evidente, pochi rumori si sentono d\'intorno, quasi nessuno...', 'BOSCO', 1);
INSERT INTO chat VALUES (302, 1099334773, 'Uriel', '[la tensione ormai ha il sopravvento su Uriel non sapendo chi sia è pronto ad estrarre l\'arma se mai ce ne fosse bisogno', 'BOSCO', 12);
INSERT INTO chat VALUES (303, 1099334948, 'Itzamna', 'La figura s\'arresta improvvisamente ad osservare l\'umano, a circa 5 metri da quest\'ultimo, non proferisce favella alcuna, ma sotto il manto è notabile uno strano movimento...', 'BOSCO', 1);
INSERT INTO chat VALUES (304, 1099335048, 'Uriel', '[porta la sinistra a fingere di grattarsi il collo pronta a prendere lo scudo posizionato sulla spalla sinistra', 'BOSCO', 12);
INSERT INTO chat VALUES (305, 1099335221, 'Itzamna', 'Uriel sente la stessa voce femminile che aveva sentito in taverna proferire alcune parole[seguitemi, e senza dare nell\'occhio] poi la figura si volta e s\'inoltra nella boscaglia...', 'BOSCO', 1);
INSERT INTO chat VALUES (306, 1099335345, 'Uriel', '[sentendo la voce dell\'elfa ma non fidandosi ancora di lei aspetta due secondi e poi la segue da una certa distanza ma tenendola sempre sotto il suo sguardo e con la destra sempre a stringere l\'elsa', 'BOSCO', 12);
INSERT INTO chat VALUES (307, 1099335529, 'Itzamna', 'La boscaglia comincia a farsi più fitta ed Uriel, di tanto in tanto, perde di vista per qualche istante l\'elfa, che procede a velocità sostenuta e, pare, senza alcun fastidio da parte di sterpaglie...', 'BOSCO', 1);
INSERT INTO chat VALUES (309, 1099335648, 'Uriel', '[vedendo che ogni tanto perde l\'elfa accelera il passo spostando ogni tanto con la sinistra alcuni arbusti o rami che gli danno fastidio', 'BOSCO', 12);
INSERT INTO chat VALUES (310, 1099336746, 'Itzamna', 'Uriel riesce ad arrivare a poca distanza dall\'elfa, che comunque continua ad addentrarsi nel bosco, nonostante l\'infoltirsi della vegetazione...', 'BOSCO', 1);
INSERT INTO chat VALUES (311, 1099336884, 'Uriel', '[continua a seguirla pensando dove cavolo lo vuole portare', 'BOSCO', 12);
INSERT INTO chat VALUES (312, 1099337243, 'Itzamna', 'L\'elfa si ferma, d\'un tratto, innanzi un folto cespuglio che impedisce il passaggio, si volta a cercare Uriel...', 'BOSCO', 1);
INSERT INTO chat VALUES (313, 1099337319, 'Uriel', '[vedendo l\'elfa fermarsi si ferma anche lui a qualche passo di distanza da lei stringendo ancora con piu forza l\'elsa non sapendo cosa possa volere l\'elfa', 'BOSCO', 12);
INSERT INTO chat VALUES (314, 1099337515, 'Itzamna', 'L\'elfa, sempre ammantata, fa cenno ad Uriel di seguirla, scanzando gli arbusti ed attraversandoli, tenendoli scostati attendendo l\'ingresso dell\'umanio', 'BOSCO', 1);
INSERT INTO chat VALUES (315, 1099337572, 'Uriel', '[domandosi cosa ci sia dopo quegli arbusti si sorpassa stringendo sempre l\'elsa e guardando l\'elfa mentre passa', 'BOSCO', 12);
INSERT INTO chat VALUES (316, 1099337700, 'Itzamna', 'Oltre ai cespugli si apre un piccolo spiazzo di circa tre metri per cinque, l\'elfa, una volta entrato Uriel, fa richiudere i cespugli, portandosi al centro dello spiazzo e cominciando a slacciarsi il mantello, senza parlare...', 'BOSCO', 1);
INSERT INTO chat VALUES (317, 1099337763, 'Uriel', '[rimane a qualche passo dall\'elfa domandandosi che posto sia questo guardandosi un attimo intorno per poi tornare con lo sguardo sulla graziosa elfa', 'BOSCO', 12);
INSERT INTO chat VALUES (318, 1099338009, 'Itzamna', 'L\'elfa si toglie il mantello, mettendo in mostra, sotto di esso, un vestito piuttosto attillato, di colore che par essere verde, ed una gonna abbastanza corta, di colore vagamente gialleggiante... i capelli castani sono legati dietro la testa, mentre un paio di stivali che partono da sotto le gionocchia, di colore simile a quello del vestito, concludono il tutto... Ella stende a terra il mantello, e si siede ad una estremità a gambe incrociate, sorridendo e guardando Uriel...', 'BOSCO', 1);
INSERT INTO chat VALUES (319, 1099338105, 'Uriel', '[nota le graziose forme dell\'elfa e poi fa lo stesso con il poprio mantello e quando è seduto le chiede] potreste dirmi il vostro nome', 'BOSCO', 12);
INSERT INTO chat VALUES (320, 1099338255, 'Itzamna', 'Ella sorride, chiudendo, con le mani, l\'apertura che la gonna aveva creato con le gambe, dalla quale comunque Uriel non aveva intravisto nulla di particolare [Sedetevi, il mio nome è Laraian, ed il vostro?', 'BOSCO', 1);
INSERT INTO chat VALUES (321, 1099338395, 'Uriel', 'cos\'è ve lo siete per caso gia dimenticato [dice con aria allegra e sorridendo] comunque sono Uriel, ma che posto è questo e perche mi avete portato qui [chiede con aria molto incuriosita', 'BOSCO', 12);
INSERT INTO chat VALUES (322, 1099338492, 'Itzamna', 'Continua a sorridere [Oh, scusate, non avevo fatto caso al fatto che me l\'aveste già detto... comunque vi ho portato qui perchè è qui che uso ritirarmi quando ho bisogno di un pò di.. intimità diciamo]', 'BOSCO', 1);
INSERT INTO chat VALUES (323, 1099338574, 'Uriel', 'ah capisco è un posto molto bello [dice guardandosi intorno', 'BOSCO', 12);
INSERT INTO chat VALUES (324, 1099338676, 'Itzamna', 'Scrolla le spalle [bah, non più di tanto... comunque avanti, raccontantemi la vostra storia] incoraggiandolo anche coi gesti...', 'BOSCO', 1);
INSERT INTO chat VALUES (325, 1099338877, 'Uriel', '[si passa una mano sui capelli e la faccia allegra di prima vieni sostituita da una malinconica e incomincia a raccontare la storia] ecco io un giorno sono partito dalla mia citta natale di nome Isiyar con un gruppo di miei amici in tutto eravamo in cinque, mi ricordo che eravamo partiti all\'avventura per un qualche motivo che ora mi sfugge e stamattina mi sono ritrovato qui non sapendo ne come ne quando sono arrivato e se provo a ricordarmi del mondo oltre questa citta vengo colto da un forte mal di testa ', 'BOSCO', 12);
INSERT INTO chat VALUES (326, 1099339077, 'Itzamna', 'Annuisce... [ascoltami] il passaggio dal voi al tu è brusco e, soprattutto, senza troppi complimenti [avrei bisogno di sapere cosa vi ricordate di ciò che vi è fuori della barriera...] avida di conoscenza...', 'BOSCO', 1);
INSERT INTO chat VALUES (327, 1099339206, 'Uriel', 'non saprei domandatemi voi cosa volete sapere [dice notando il cambiamento molto brusco dell\'elfa', 'BOSCO', 12);
INSERT INTO chat VALUES (328, 1099339284, 'Itzamna', 'Sorride [come funziona la società al di la?]', 'BOSCO', 1);
INSERT INTO chat VALUES (329, 1099339438, 'Uriel', 'bè nel mio villaggio il comando era posto sotto un circolo di persone chiamato il circolo dei tre tra cui c\'era il capo della milizia, il sacerdote piu anziano e il nobile piu importante qui invece come è formata [chiede molto interresato ', 'BOSCO', 12);
INSERT INTO chat VALUES (330, 1099339614, 'Itzamna', 'L\'elfa sorride [beh, anche qui comanda il sacerdote più anziano... poi il nobile più importante funge da consigliere di quest\'ultimo, mentre i miliziani non hanno autorità... per lo meno non ufficialmente] il suo sguardi si rattrista... [e dimmi, che fine hanno fatto gli illithid??', 'BOSCO', 1);
INSERT INTO chat VALUES (331, 1099339679, 'Uriel', 'illit... che scusa [chiede con aria spaesata non avendo mai sentito quella parola', 'BOSCO', 12);
INSERT INTO chat VALUES (332, 1099339724, 'Itzamna', '[gli illithid] ripete portandosi la mano alla bocca e facendo il gesto dei tentacoli...', 'BOSCO', 1);
INSERT INTO chat VALUES (333, 1099339847, 'Uriel', 'non so cosa siano mi dispiace [dice cercando di pensare a cosa possano essere', 'BOSCO', 12);
INSERT INTO chat VALUES (334, 1099340087, 'Itzamna', 'Laraian esclama [d\'accordo, forse è meglio così] portando le mani a slacciarsi i capelli, che ricadono lunghi sulle di lei spalle, andando a cadere poi a terra, essendo evidentemente più lunghi del suo busto... [ti chiedo queste cose perchè alcuni di noi si sono stufati di vivere dentro questa barriera e vorrebbero uscirne... però prima dobbiamo sapere cosa ci aspetti fuori da essa...] aggiustandosi elegantemente i capelli dietro le puntute orecchie...', 'BOSCO', 1);
INSERT INTO chat VALUES (335, 1099340225, 'Uriel', 'mi dispiace non posso aiutarti piu di tanto scusami [dice questo abbassando leggermente il capo', 'BOSCO', 12);
INSERT INTO chat VALUES (336, 1099340333, 'Itzamna', 'Si alza in ginocchio allungandosi verso Uriel e poggiandogli la mano destra sulla spalla, mentre la sinistra poggia al suolo [tranquillo, hai fatto già abbastanza capitando in questo luogo] gli sorride. Ad uriel risulterebbe ben visibile la scollatura del vestito di lei, che ora gli si para praticamente dinanzi agli occhi...', 'BOSCO', 1);
INSERT INTO chat VALUES (337, 1099340418, 'Uriel', '[alzando la testa lo sguardo passa per un attimo nella scollatura arrosendo un po le dice] bè finora solo tu mi hai trattato in un modo gentile', 'BOSCO', 12);
INSERT INTO chat VALUES (338, 1099340574, 'Itzamna', 'Laraian sorride, portando la destra a carezzare la guancia dell\'uomo [beh, non tutti sanno che è possibile "venire da fuori"... non so se mi spiego] movendosi poi a gattoni e portandosi seduta accanto ad Uriel, guardando in un punto innanzi a se...', 'BOSCO', 1);
INSERT INTO chat VALUES (339, 1099340714, 'Uriel', '[segue con lo sguardo il punto che sta guardando l\'elfa e poi le chiede] sapete dove posso trovare un posto per dormire stanotte', 'BOSCO', 12);
INSERT INTO chat VALUES (340, 1099340820, 'Itzamna', 'L\'elfa resta pensosa per qualche istante, poi esclama, voltandosi verso Uriel [beh, potreste dormire qui] indicando il terreno [capisco che possa non apparire comodissimo, ma dopo un pò ci si fa l\'abitudine] con aria gioiosa, quasi come se fosse una bambina....', 'BOSCO', 1);
INSERT INTO chat VALUES (341, 1099341004, 'Uriel', 'se per te va bene posso dormire qui tanto ho il mio giaciglio con cui penso di aver dormito con i miei amici durante il nostro girovagare [nella sua voce si nota una vena malinconica', 'BOSCO', 12);
INSERT INTO chat VALUES (342, 1099341062, 'Itzamna', 'Laraian annuisce [d\'accordo, dovremmo entrarci tutti e due senza difficoltà] sorride', 'BOSCO', 1);
INSERT INTO chat VALUES (343, 1099341177, 'Uriel', '[rimane un attimo disorientato dalla risposta dell\'elfa poi dice] si dovremmo starci ma voi vi fidate sempre di tutti in questo modo', 'BOSCO', 12);
INSERT INTO chat VALUES (344, 1099341210, 'Itzamna', 'L\'elfa sorride [e voi?] si limita a domandare...', 'BOSCO', 1);
INSERT INTO chat VALUES (345, 1099341304, 'Uriel', 'avete ragione comunque io solo di quelli che mi danno da subito una buona impressione [gli dice sorridendole', 'BOSCO', 12);
INSERT INTO chat VALUES (346, 1099341514, 'Itzamna', 'Laraian raccoglie da terra il proprio mantello e lo ripiega su se stesso, in modo da ottenere una maggiore imbottitura, per quello che vale... [Idem] proferisce poi tranquilla, dando ora le spalle ad Uriel [se volete un conisglio: dormirete più comodo senza quella sciabola al fianco] eslama voltandosi e sorridendogli...', 'BOSCO', 1);
INSERT INTO chat VALUES (347, 1099341674, 'Uriel', '[alle parole dell\'elfa slaccia la cintura con attaccata la spada mettendola pero molto vicino a lui e facendo come l\'elfa e cioè ripiegando il mantello per poi mettere a terra il giaciglio', 'BOSCO', 12);
INSERT INTO chat VALUES (348, 1099341952, 'Itzamna', 'Laraian ridistende a terra il suo mantello, affianco a quello di Uriel, poi torna a dirgli [immagino tu sia curioso di sapere qualcosa riguardo questa città?! [l\'osserva con uno sguardo strano, che prima l\'umano non aveva mai visto nei di lei occhi...', 'BOSCO', 1);
INSERT INTO chat VALUES (349, 1099342026, 'Uriel', 'si molto mi piacerebbe sapere il possibile su questa citta [dice per poi posare a terra vicino a lui l\'arco corto, la faretra e lo scudo e poi aggiunge] mi dareste una mano a togliere questa armatura [indicando il giacco di maglia', 'BOSCO', 12);
INSERT INTO chat VALUES (350, 1099342259, 'Laraian', '+sorride alla domanda di Uriel] certamente [si avvicina all\'umano e principia ad aiutarlo nello svestirsi, nel mentre che parla] beh, questa città nacque molto tempo addietro, quando i nostri avi dovettero trovare una via di fuga dalle loro vecchie città [mentre aiuta, con grande grazia, Uriel]', 'BOSCO', 16);
INSERT INTO chat VALUES (351, 1099342364, 'Uriel', '[si slaccia le cinture che tengono ferma l\'armatura sul davanti ascoltando molto interessato l\'elfa', 'BOSCO', 12);
INSERT INTO chat VALUES (352, 1099342568, 'Laraian', '+continua ad aiutare Uriel] Gli Illithid infatti [continua] degli esseri cattivissimi e terribilissimi avevano cominciato a conquistare i loro villaggi, radendoli al suolo tutti, senza possibilità di salvezza [si ferma qualche istante]', 'BOSCO', 16);
INSERT INTO chat VALUES (353, 1099342727, 'Uriel', '[alla parole dell\'elfa cerca di ricordare ma con il risultato di un gran mal di testa', 'BOSCO', 12);
INSERT INTO chat VALUES (354, 1099342876, 'Laraian', '+ha ormai rimosso la parte superiore dell\'armatura quasi completamente e, senza richiedere nulla, comincia a rimuovere quella inferiore] alcuni di loro, per mettersi in salvo decisero di erigere una grande barriera magica... e tutto questo è il risultato...', 'BOSCO', 16);
INSERT INTO chat VALUES (355, 1099342950, 'Uriel', '[incomincia a togliere la parte superiore e appoggiarla a terra e poi dice] ma non si possono fermare questi illitihd mi sembra che si pronunci cosi [chiede con curiosita', 'BOSCO', 12);
INSERT INTO chat VALUES (356, 1099343080, 'Laraian', '+chiude gli occhi fermandosi qualche istante, poi li riapre e riprende a lavorare] ci provarono... ma il solo risultato fu di riunire assieme tutti i guerrieri e facilitare il compito agli invasori... [tace qualche istante] ora stiamo cercando indicazioni sulla attuale situazione sterna a questo... buco... [esclama con un pò di disprezzo]', 'BOSCO', 16);
INSERT INTO chat VALUES (357, 1099343151, 'Uriel', 'ma sono cosi forti [chiede con un misto di curiosita e paura attendendo che Laraian finisca', 'BOSCO', 12);
INSERT INTO chat VALUES (358, 1099343363, 'Laraian', '+annuisce, continuando a svestire Uriel] sono troppo forti per noi tutti...', 'BOSCO', 16);
INSERT INTO chat VALUES (359, 1099343466, 'Uriel', 'ma che poteri hanno [chiede molto incuriosito', 'BOSCO', 12);
INSERT INTO chat VALUES (360, 1099343606, 'Laraian', '+ha finito oramai anche di rimuovere la parte inferiore dell\'armatura] oh beh, qui storia e leggenda si mescolano in modo indistinguibile... si sa di per certo che hanno dei poteri immensi... sembra abbiano la capacità di modellare a proprio piacere le mente delle persone...', 'BOSCO', 16);
INSERT INTO chat VALUES (361, 1099343704, 'Uriel', 'capisco [dice mentre appoggia a terra anche la parte inferiore dell\'armatura per poi voltarsi verso Laraian dicendole] grazie sia per la spiegazione sia per l\'armatura', 'BOSCO', 12);
INSERT INTO chat VALUES (362, 1099343814, 'Laraian', 'Di niente [dice sorridendogli]', 'BOSCO', 16);
INSERT INTO chat VALUES (363, 1099343884, 'Uriel', 'ora possiamo sdraiarci [dice indicando il giaciglio', 'BOSCO', 12);
INSERT INTO chat VALUES (364, 1099343915, 'Laraian', '+inarca un sopracciglio] In che senso?? [osservandolo incerta...', 'BOSCO', 16);
INSERT INTO chat VALUES (365, 1099343964, 'Uriel', 'nel senso che ora possiamo dormire [dice con aria tranquilla', 'BOSCO', 12);
INSERT INTO chat VALUES (366, 1099344018, 'Laraian', '+sorride] ah, bene... come vuoi... [va a sedersi sul suo giaciglio...', 'BOSCO', 16);
INSERT INTO chat VALUES (367, 1099344127, 'Uriel', '[si siede affianco all\'elfa nel proprio giaciglio e gli chiede] ma sono stelle quelle cose che lampeggiano lassu in cime [indicandole con la mano', 'BOSCO', 12);
INSERT INTO chat VALUES (368, 1099344183, 'Laraian', '+scuote il capo] no, sono anomalie nella barriera... [sorridendogli] che aspetto hanno le stelle??? [domanda osservandolo con occhi curiosi e bellissimi...', 'BOSCO', 16);
INSERT INTO chat VALUES (369, 1099344267, 'Uriel', 'bè ecco.. sono tipo le anomalie nella barriera solo che risplendono di piu e io molte volte sono stato notti intere a studiarne le varie costellazioni', 'BOSCO', 12);
INSERT INTO chat VALUES (370, 1099344363, 'Laraian', '+annuisce] capisco... anche io sono stata notti intere ad osservare quelle anomalie, convincendomi che fossero stelle... d\'altra parte da qui saltano particolarmente alla vista...', 'BOSCO', 16);
INSERT INTO chat VALUES (371, 1099344502, 'Uriel', 'ma queste anomalie a cosa sono dovute [chiede preoccupato che questi illithid possano entrare da quelle anomalie', 'BOSCO', 12);
INSERT INTO chat VALUES (372, 1099344548, 'Laraian', '+sorride] beh, sono punti in cui l\'energia magica si comporta in modo strano... non sembra che siano pericolosi comunque...', 'BOSCO', 16);
INSERT INTO chat VALUES (373, 1099344603, 'Uriel', 'bè speriamo che questi illithid non possano entrare da quei punti [poi voltandosi verso Laraian dice] sapete siete molto simpatica e gentile', 'BOSCO', 12);
INSERT INTO chat VALUES (374, 1099344767, 'Laraian', '+sorride alle parole di Uriel] No, se avessero potuto l\'avrebbero già fatto [poi, dopo breve] Non vedo perchè non dovrei essere gentile [esclama sempre sorridendo ', 'BOSCO', 16);
INSERT INTO chat VALUES (375, 1099344891, 'Uriel', 'bè i tuoi amici in taverna non lo sono stati molto [dice ricordandosi la giornata passata in taverna per poi sdraiarsi a guardare la volta cieleste', 'BOSCO', 12);
INSERT INTO chat VALUES (376, 1099345001, 'Laraian', 'Beh... non li definirei propriamente amici... più compagni direi [sorride] mi sento più amica tua che di quei tre la...', 'BOSCO', 16);
INSERT INTO chat VALUES (377, 1099345053, 'Uriel', '[alle parole dell\'elfa sorride grattandosi i capelli dall\'imbarazzo e arrosendo un po poi dice] grazie', 'BOSCO', 12);
INSERT INTO chat VALUES (378, 1099345140, 'Laraian', '+si limita a sorridere, senza proferir favella...', 'BOSCO', 16);
INSERT INTO chat VALUES (379, 1099345195, 'Uriel', 'fa sempre cosi caldo qui [chiede all\'elfa venendo lui da una citta a nord situata sulle montagne', 'BOSCO', 12);
INSERT INTO chat VALUES (380, 1099345250, 'Laraian', 'Uff... non dirlo a me [sta al gioco] t\'offendi se mi spoglio un pò? [chiede timidamente...', 'BOSCO', 16);
INSERT INTO chat VALUES (381, 1099345287, 'Uriel', 'uhm... no [dice imbarazzato] se volete mi volto', 'BOSCO', 12);
INSERT INTO chat VALUES (382, 1099345355, 'Laraian', 'Oh, come preferisci... [gli dice sorridendo] se vuoi puoi spogliarti anche tu... [cominciando a togliersi la parte superiore del vestito...', 'BOSCO', 16);
INSERT INTO chat VALUES (383, 1099345413, 'Uriel', '[quando Laraian incomincia a spogliarsi abbassa legermente il capo incominciando a sbottonarsi i bottoni della camicia', 'BOSCO', 12);
INSERT INTO chat VALUES (384, 1099345488, 'Laraian', '+si toglie la maglia e sotto di essa appaiono ben visibili i seni, non eccessivamente grandi, ma ben proporzionati al resto del corpo...', 'BOSCO', 16);
INSERT INTO chat VALUES (385, 1099345545, 'Uriel', '[arrivato ormai a metà camicia continua a sbottonarsela non notando ancora il busto nudo dell\'elfa', 'BOSCO', 12);
INSERT INTO chat VALUES (386, 1099345690, 'Laraian', 'si sdraia su di un fianco, poggiandosi col gomito destro a terra, osservando Uriel] serve una mano? [domanda con non poca malizia...', 'BOSCO', 16);
INSERT INTO chat VALUES (387, 1099345745, 'Uriel', 'no no faccio da solo [dice non avendo ancora notato l\'elfa poi quando ha finito di sbottonare la camicia incomincia a togliersela', 'BOSCO', 12);
INSERT INTO chat VALUES (388, 1099345829, 'Laraian', 'D\'accordo [esclama sorridendo ed accavallando, da stesa, le gambe, osservando il volto di Uriel', 'BOSCO', 16);
INSERT INTO chat VALUES (389, 1099345969, 'Uriel', '[il volto del guerriero non avendo ancora notato l\'elfa è tranquillo poi poggiando a terra la camicia e girandosi verso Laraian e vedendola nuda le guance incominciano a divenire un po rosse e le chiede] ora state meglio', 'BOSCO', 12);
INSERT INTO chat VALUES (390, 1099346038, 'Laraian', '+muove appena il capo in segno di diniego] continuo ad avere ancora caldo... e voi? [sorridendogli e facendoglisi più vicina...', 'BOSCO', 16);
INSERT INTO chat VALUES (391, 1099346162, 'Laraian', 'Allora spogliatevi [sussurra appena portando la propria faccia molto vicina a quella di Uriel...', 'BOSCO', 16);
INSERT INTO chat VALUES (392, 1099346229, 'Uriel', 'sicura che per voi non è un problema [chiede leggermente imbarazzato dal comportamento dell\'elfa', 'BOSCO', 12);
INSERT INTO chat VALUES (393, 1099346486, 'Laraian', '+sorride] oh, no, non preoccupatevi [avvicinando le proprie labbra a quelle di Uriel e dandogli un rapido bacio...', 'BOSCO', 16);
INSERT INTO chat VALUES (394, 1099346579, 'Uriel', '[si lascia trasportare dal bacio portando il proprio corpo su quello di lei accarezzandole i capelli', 'BOSCO', 12);
INSERT INTO chat VALUES (395, 1099346778, 'Laraian', '+abbraccia anch\'ella Uriel, prendendo a baciarlo...', 'BOSCO', 16);
INSERT INTO chat VALUES (396, 1099346932, 'Uriel', '[perso nei baci della graziosa elfa e nel suo calore incomincia a baciarla dappertutto e nel frattempo accarezzandola', 'BOSCO', 12);
INSERT INTO chat VALUES (397, 1099347082, 'Laraian', '+in breve riesce a raggiungere il suo obbiettivo, avvinghiandosi all\'umano e raggiungendo, assieme a questo, un particolare stato di estasi... che è proprio dell\'idillio dell\'amore...', 'BOSCO', 16);
INSERT INTO chat VALUES (398, 1099347208, 'Uriel', '[sente il calore emanato dall\'elfa e dal suo estasi ritrovandosi ben presto in uno stato di piacere che non provava da molto tempo', 'BOSCO', 12);
INSERT INTO chat VALUES (399, 1099347299, 'Laraian', '+finito il tutto si sdraia, felice, sul suo giaciglio, col volto sorridente rivolto verso Uriel...', 'BOSCO', 16);
INSERT INTO chat VALUES (400, 1099347390, 'Uriel', '[guarda l\'elfa e gli sorride accarezzandole i capelli e le chiede il perche di questo gesto guardandola con occhi pieni di carisma', 'BOSCO', 12);
INSERT INTO chat VALUES (401, 1099347718, 'Laraian', '+resta silente, non volendo disturbare il silenzio creatosi...', 'BOSCO', 16);
INSERT INTO chat VALUES (402, 1099347808, 'Uriel', '[continua ad accarezzarla e a guardarla perdendosi nei suoi occhi, le carezze sono soffici ma allo stesso tempo piene di passione', 'BOSCO', 12);
INSERT INTO chat VALUES (403, 1099348007, 'Laraian', '+ricambia le carezze di Uriel, sempre sorridendo...', 'BOSCO', 16);
INSERT INTO chat VALUES (404, 1099348177, 'Uriel', '[si avvicina e baciandola un po sul collo le chiede] avresti voglia di raccontarmi un po di te [continuando a mordicchiare il collo dolcemente', 'BOSCO', 12);
INSERT INTO chat VALUES (405, 1099348211, 'Laraian', '+sorride] che vuoi sapere [domanda allegra...', 'BOSCO', 16);
INSERT INTO chat VALUES (406, 1099348264, 'Uriel', 'non so puoi raccontarmi la tua vita, cosa fai come lavoro [continuando sempre a mordicchiare e baciare il coll', 'BOSCO', 12);
INSERT INTO chat VALUES (407, 1099348441, 'Laraian', '+sorride] Oh beh, mi occupo di istruzione [carezzando, quasi distrattamente, Uriel', 'BOSCO', 16);
INSERT INTO chat VALUES (408, 1099348507, 'Uriel', 'e cosa insegni chiede [guardandola ora negli occhi accarezzandola', 'BOSCO', 12);
INSERT INTO chat VALUES (409, 1099348586, 'Laraian', 'Oh beh, non direi propriamente che insegno... mi occupo dell\'insegnamento della magia arcana...', 'BOSCO', 16);
INSERT INTO chat VALUES (410, 1099348838, 'Uriel', '[alle parole magia arcane rimane un attimo stupito e dice] ho sempre voluto impararle ma provengo da una famiglia militare e mi hanno iscritto sin da piccolo ad la caserma della citta [dice con aria malinconica al ricordo dei suoi cari', 'BOSCO', 12);
INSERT INTO chat VALUES (411, 1099349021, 'Laraian', '+sorride] beh, qui si possono frequentare più scuole contemporaneamente... e comunque credo che non sia mai troppo tardi per scoprire la magia [sorride, accarezzando ancora Uriel', 'BOSCO', 16);
INSERT INTO chat VALUES (412, 1099349089, 'Uriel', 'se avro come maestra voi certamente verro a frequentare la vostra scuola [le dice sorridendo per poi darle un bacio in bocca', 'BOSCO', 12);
INSERT INTO chat VALUES (413, 1099349202, 'Laraian', '+accoglie con piacere il bacio di Uriel] Sarò ben lieta di istruirti... [sorride] chiudi gli occhi [chiude anch\'ella gli occhi...', 'BOSCO', 16);
INSERT INTO chat VALUES (414, 1099349353, 'Uriel', '[alle parole dell\'elfa chiude gli occhi non sapendo cosa attendere', 'BOSCO', 12);
INSERT INTO chat VALUES (415, 1099349425, 'Laraian', 'Ora [parlando lentamente e scandendo bene le parole] pensa intensamente ai tuoi amici...', 'BOSCO', 16);
INSERT INTO chat VALUES (416, 1099349469, 'Uriel', '[non capisce il perche ma fa quello che le dice l\'elfa pensando intensamente ai suoi amici', 'BOSCO', 12);
INSERT INTO chat VALUES (417, 1099349531, 'Laraian', 'ecco... [sempre parlando lentamente e facendo ora una pausa, poi riprende] ora immagina di essere accanto a loro...', 'BOSCO', 16);
INSERT INTO chat VALUES (418, 1099349598, 'Uriel', '[si concentra pensando che gli amici siano li accanto', 'BOSCO', 12);
INSERT INTO chat VALUES (419, 1099349666, 'Laraian', 'bene... ora salutali, digli che stai bene e che ti mancano tanto...', 'BOSCO', 16);
INSERT INTO chat VALUES (420, 1099349786, 'Uriel', '[sempre mentalmente li saluta dicendogli che lui sta bene e senza che se ne accorga una lacrima gli scende da un occhio', 'BOSCO', 12);
INSERT INTO chat VALUES (421, 1099349918, 'Laraian', '[sorride, anche se nessuno la può vedere] ora salutali e digli che tornerai a trovarli presto... [breve pausa] poi riapri gli occhi, lentamente...', 'BOSCO', 16);
INSERT INTO chat VALUES (422, 1099349997, 'Uriel', '[facendo sempre come dice Laraian dice che li verra a trovare presto e poi riapre gli occhi ancora leggermente bagnati dalle lacrime', 'BOSCO', 12);
INSERT INTO chat VALUES (423, 1099350090, 'Laraian', '+sorride, guardando Uriel] bene, hai appena utilizzato la magia... certo non di eccessivo livello... non sei ancora riuscito a riportare qui i tuoi amici, ma se riuscito a riportarli nella tua mente... e ciò non è poco...[sorride, continuando ad accarezzarlo...', 'BOSCO', 16);
INSERT INTO chat VALUES (424, 1099350209, 'Uriel', '[alle parole e alle carezze dell\'elfa si rincuora e rassicura un po facendosi coccolare dall\'elda', 'BOSCO', 12);
INSERT INTO chat VALUES (425, 1099350322, 'Laraian', '+continua ad accarezzare Uriel, rilassandosi anch\'ella...', 'BOSCO', 16);
INSERT INTO chat VALUES (426, 1099350382, 'Itzamna', 'I due si addormentano a breve, presi dalla stanchezza...', 'BOSCO', 1);
INSERT INTO chat VALUES (427, 1099350901, 'Itzamna', 'clearthischat', 'BOSCO', 1);
INSERT INTO chat VALUES (428, 1099496850, 'Itzamna', ' Ciao', 'PRIVATA: Building a mistery:It', 1);
INSERT INTO chat VALUES (429, 1099496924, 'Itzamna', ' Ciao', 'TEMPIO:Itzamna', 1);
INSERT INTO chat VALUES (430, 1099496939, 'Itzamna', ' + Ciao!!!', 'TEMPIO:Itzamna', 1);
INSERT INTO chat VALUES (431, 1099496960, 'Itzamna', 'clearthischat', 'TEMPIO', 1);
INSERT INTO chat VALUES (432, 1099497332, 'Itzamna', '[ciao]', 'TEMPIO:Itzamna', 1);
INSERT INTO chat VALUES (433, 1099497343, 'Itzamna', 'clearthischat', 'TEMPIO', 1);
INSERT INTO chat VALUES (434, 1099504440, 'Moltovon', '[scende dal suo letto dirigendosi nei corridoi vuoti e lucidi,ancora convalescente per i colpi presi+', 'ACCADEMIA GUERRIERI', 10);
INSERT INTO chat VALUES (435, 1099504738, 'Moltovon', '[decide di avviarsi alla locanda]', 'ACCADEMIA GUERRIERI', 10);
INSERT INTO chat VALUES (436, 1099504913, 'Moltovon', '[seduto al bancone ordina da bere e osserva la sua  mano ancora fasciata]', 'PRIVATA: blizz', 10);
INSERT INTO chat VALUES (439, 1099505845, 'Moltovon', '[dopo alcuni bicchieri si addormenta sbronzo]', 'PRIVATA: blizz', 10);
INSERT INTO chat VALUES (440, 1099508888, 'Uriel', '[si alza dal suo tormentato sogno e la prima cosa che fa guarda se al suo fianco c\'è ancora l\'elfa o se era stato solo un sogno e se ci sono le sue armi', 'BOSCO', 12);
INSERT INTO chat VALUES (441, 1099508910, 'Itzamna', ' Vado a cena, torno a breve...', 'BOSCO:Uriel', 1);
INSERT INTO chat VALUES (442, 1099510309, 'Moltovon', '[esce barcollante e si avvia al bosco]', 'PRIVATA: blizz', 10);
INSERT INTO chat VALUES (443, 1099510395, 'Moltovon', '[sverso come una spugna si aggira per le buie boscaglie cantando inni contro i vampiri]', 'BOSCO', 10);
INSERT INTO chat VALUES (444, 1099510676, 'Itzamna', 'Il luogo è quasi del tutto vuoto di visitatori, come al solito a quest\'ora... il sole artificiale s\'è oramai spento da un pezzo, ed una timida luna si scorge in lontananza, bassa sull\'orizzonte...', 'BOSCO', 1);
INSERT INTO chat VALUES (445, 1099510956, 'Uriel', '[non notando l\'elfa si alza stiracchiandosi per poi incominciare a mettersi l\'armatura', 'BOSCO', 12);
INSERT INTO chat VALUES (446, 1099510972, 'Moltovon', '[si siede su un masso alcool a porata di mano e osserva la luna all\'orizzonte come uno che non ha piu nulla da chiedere alla vita]', 'BOSCO', 10);
INSERT INTO chat VALUES (447, 1099511053, 'Uriel', '[finito di indossara l\'armatura si allaccia il cinturone con le armi e scudo e arco in spalle si dirige fuori dal bosco', 'BOSCO', 12);
INSERT INTO chat VALUES (448, 1099511184, 'Moltovon', '[i canti d\'ira contro gli dei e i loro esseri sono sempre piu alti e coinsistenti,poi si appoggia ad un albero e sembra addormentarsi..]', 'BOSCO', 10);
INSERT INTO chat VALUES (449, 1099511363, 'Uriel', '[uscito dal bosco nota una figura sembrerebbe un elfo addormentato accanto ad un albero e non volendo svegliarlo si perde a guardare la luna', 'BOSCO', 12);
INSERT INTO chat VALUES (450, 1099511607, 'Moltovon', '[il sonno sembra agitato e rovinoso]', 'BOSCO', 10);
INSERT INTO chat VALUES (451, 1099511673, 'Uriel', '[si avvicina alla figura portando una mano sull\'elsa stando pronta ad estrarla, arrivato vicino la guarda meglio', 'BOSCO', 12);
INSERT INTO chat VALUES (452, 1099511869, 'Moltovon', '[di scatto si alza e in un balzo fulmineo estrae la spada e la punta al collo dell essere avvicinato,osservando che e solo un uomo tranquillizzato si lascia cadere  tutto sudato schiena all\'albero]', 'BOSCO', 10);
INSERT INTO chat VALUES (453, 1099511988, 'Moltovon', '[torna come in stato di sbronza e ricomincia a canticchiare]', 'BOSCO', 10);
INSERT INTO chat VALUES (454, 1099512039, 'Itzamna', 'Uriel sente qualcosa svolazzargli a poca distanza dall\'orecchio...', 'BOSCO', 1);
INSERT INTO chat VALUES (455, 1099512084, 'Uriel', '[sta per estrarre la sciabola quando vede che è solo uno sbronzo poi sente qualcosa che gli svolazza a poca distanza dell\'orecchio si volta cercando di visualizzarne la causa', 'BOSCO', 12);
INSERT INTO chat VALUES (456, 1099512267, 'Moltovon', 'un dito [urla in direzione di uriel]', 'BOSCO', 10);
INSERT INTO chat VALUES (457, 1099512328, 'Itzamna', 'Uriel non nota nulla alla sua destra (la direzione nella quale aveva sentito il battere d\'ali) probabilmente si è trattato di una farfalla...', 'BOSCO', 1);
INSERT INTO chat VALUES (458, 1099512379, 'Uriel', '[rimane un attimo disorientato e poi sentendo l\'elfo che gli dice un dito  gli chiede] amico di cosa state parlando', 'BOSCO', 12);
INSERT INTO chat VALUES (459, 1099512427, 'Moltovon', '[risata fioca]un dito perso a causa di una ragazzina che manco so se viva ancora[continua la risata rimanendo al quanto misterioso]', 'BOSCO', 10);
INSERT INTO chat VALUES (460, 1099512468, 'Uriel', '[non comprende appieno le parole dell\'elfo e prova a chiedere] potete essere piu preciso', 'BOSCO', 12);
INSERT INTO chat VALUES (461, 1099512537, 'Moltovon', 'un maledetto vampiro,una bambina cadaveri cadaveri e nient\'altro sangue e nebbia[la risata aumenta di di volta in volta di respiro in respiro]', 'BOSCO', 10);
INSERT INTO chat VALUES (462, 1099512622, 'Uriel', '[incomincia a pensare che quel povero elfo sia solo un pazzo e guarda le sue mani avendo sentito parlare di dita poi lo guarda in faccia e gli dice] tutto questo quando è successo', 'BOSCO', 12);
INSERT INTO chat VALUES (463, 1099512727, 'Moltovon', '[torna serio]ha importanza?[silenzio]non lo so neanche io...[si concentra cercando di  diventare un tutt\'uno con la natura]', 'BOSCO', 10);
INSERT INTO chat VALUES (464, 1099512856, 'Uriel', '[è sempre piu convinto si tratti di un pazzo comunque prova  a dargli corda e gli dice] piacere io sono Uriel e voi [porgendogli la mano', 'BOSCO', 12);
INSERT INTO chat VALUES (465, 1099513024, 'Moltovon', '[non porge la mano tenendola nascosta nel mantello ]il mio nome e moltovon...[scruta l\'uomo]voi non siete di queste parti vero??[getta la bottiglia presa in taverna a terra]', 'BOSCO', 10);
INSERT INTO chat VALUES (466, 1099513090, 'Itzamna', '// La città è chiusa in se stessa, nessuna creatura vivente può entrare od uscire da essa...', 'BOSCO', 1);
INSERT INTO chat VALUES (467, 1099513170, 'Uriel', '[incomincia a ridere] no non sono di qui ma non pensavo che qualcuno di voi ci credesse [continua a ridere pensando a il messaggio di risposta in bacheca e riporta la mano affianco al busto per poi avvolgersi con il mantello', 'BOSCO', 12);
INSERT INTO chat VALUES (468, 1099513356, 'Moltovon', 'stupito omuncolo,spero che tu non stia ridendo di me [si avvicina a pochi cm dal uomo]', 'BOSCO', 10);
INSERT INTO chat VALUES (469, 1099513429, 'Uriel', '[guarda l\'elfo dritto negli occhi dicendogli con voce seria e carismatica] non mi permetterei mai', 'BOSCO', 12);
INSERT INTO chat VALUES (470, 1099513971, 'Moltovon', 'lo spero non sopporto gli sbruffoni[volteggia la spada e la riposa nella guaina]', 'BOSCO', 10);
INSERT INTO chat VALUES (471, 1099514112, 'Lorelei', '+[interno bosco-sentiero non visibile] la giovane ragazzina fa la sua uscita da un cespuglio mentre si sistema il lungo abito viola...Uno sguardo privo di anima..Suadente perfezione della sua innocenza...Non sente freddo, nemmeno il caldo tepore di chissà qual vento caldo...Si morde il labbro inferiore per trattenere il sorriso cordiale che un tempo donava a tutti', 'BOSCO', 11);
INSERT INTO chat VALUES (472, 1099514194, 'Lorelei', '**interno bosco**', 'BOSCO', 11);
INSERT INTO chat VALUES (473, 1099514259, 'Lorelei', '+**interno bosco- sentiero non visibile** la femminea figura or si palesa nell\'oscurità...passi attenti e ben distinti dai rumori notturni...La pelle stranamente pallida rispetto al suo solito colorito..Una sedicenne dall\'aspetto, che serba maggior innocenza di quella che dovrebbe dimostrare la sua età]', 'BOSCO', 11);
INSERT INTO chat VALUES (474, 1099514275, 'Uriel', 'voi che abitate qui conoscete per caso una certa Laraian [chiede con voce gentile', 'BOSCO', 12);
INSERT INTO chat VALUES (475, 1099514382, 'Moltovon', 'no mi dispiace le mie conoscenze si limitano ad una ragazzina con la quale ho rischiato la vita a causa della mia cocciutaggine[silenzio]', 'BOSCO', 10);
INSERT INTO chat VALUES (476, 1099514431, 'Uriel', 'ah capisco [chiedendosi quando potra rivedere l\'elfa che ha aperto una breccia nel suo cuore', 'BOSCO', 12);
INSERT INTO chat VALUES (477, 1099514463, 'Moltovon', 'come mai ora hai la faccia da pesce lesso caro uriel..?', 'BOSCO', 10);
INSERT INTO chat VALUES (478, 1099514532, 'Uriel', '[si volta verso l\'elfo con sguardo duro per poi dirgli] se voi avete mai conosciuto l\'amore forse capireste il perche', 'BOSCO', 12);
INSERT INTO chat VALUES (479, 1099514660, 'Lorelei', '+**interno bosco** la figura della giovane si palesa sul sentiero principale..Incidendo timidamente forse..oppur solamente una farsa del suo carattere prepotente...', 'BOSCO', 11);
INSERT INTO chat VALUES (480, 1099514666, 'Moltovon', '[osserva stranito il pover omo]calmino omuncolo e dammi pure del tu non sono fatto per le gnagnerie..[volta lo sguardo alla luna]', 'BOSCO', 10);
INSERT INTO chat VALUES (481, 1099514744, 'Uriel', '[segue lo sguardo dell\'elfo guardando anch\'egli la luna per poi chiedergli] voi cosa fate per vivere', 'BOSCO', 12);
INSERT INTO chat VALUES (482, 1099514848, 'Moltovon', 'continui?dammi del tu...[continua ad osservar la luna]comunque provo ad addestrmi all accademia per quel che mi e possibilie,e voi?', 'BOSCO', 10);
INSERT INTO chat VALUES (483, 1099514863, 'Moltovon', 'hemm e tu??', 'BOSCO', 10);
INSERT INTO chat VALUES (484, 1099514913, 'Uriel', '[osservando la luna risponde] io [fa una breve pausa poi aggiunge] diciamo che ero un avventuriero', 'BOSCO', 12);
INSERT INTO chat VALUES (485, 1099514937, 'Moltovon', 'contunua..', 'BOSCO', 10);
INSERT INTO chat VALUES (486, 1099515066, 'Uriel', 'poi diciamo che sono capitato qua e ora vorrei anche intrapendere la strada della magia continuando pero a usare questa [dice estrando la sua sciabola di ottima fattura', 'BOSCO', 12);
INSERT INTO chat VALUES (487, 1099515098, 'Itzamna', 'Uriel sente nuovamente qualcosa svolazzargli vicino all\'orecchio destro...', 'BOSCO', 1);
INSERT INTO chat VALUES (488, 1099515113, 'Moltovon', 'si anche a me interessano le arti magiche,comunque potreste essrmi d\'aiuto', 'BOSCO', 10);
INSERT INTO chat VALUES (489, 1099515142, 'Lorelei', 'Salute a voi..e che la luna vi porti aiuto..[bisbiglia frenetica ed invadente verso le due figure che s\'avvede]', 'BOSCO', 11);
INSERT INTO chat VALUES (490, 1099515217, 'Moltovon', '[si volta vede la ragazzina e si poggia la mano sulla nuca]buonasea ragazzina![lo sguardo torna su uriel che sembra infastidito da qualcosa]', 'BOSCO', 10);
INSERT INTO chat VALUES (491, 1099515236, 'Uriel', '[incomincia a detestare quello svolazzare poi sentendo la voce di una ragazzina si volta verso di lei guardandola', 'BOSCO', 12);
INSERT INTO chat VALUES (492, 1099515286, 'Itzamna', 'Lorelei nota, grazie alla sua vista particolarmente sviluppata, una sorta di farfalla, della lunghezza di circa venti centimetri, che svolazza accanto all\'orecchio di Uriel, per poi fuggire a grandissima velocità verso il bosco ed ivi rintanarsi', 'BOSCO', 1);
INSERT INTO chat VALUES (493, 1099515364, 'Lorelei', '[la giovane ragazzina aguzza lo sguardo attentamente osservando la farfalla] Una farfalla..[spalancando lo sguardo vitreo vicino al volto di Uriel..La segue con lo sguardo...] Nel bosco!!!', 'BOSCO', 11);
INSERT INTO chat VALUES (494, 1099515423, 'Uriel', '[guarda la ragazzina agitata per una farfalla e le chiede] tutta questa agitazione per una farfalla', 'BOSCO', 12);
INSERT INTO chat VALUES (495, 1099515494, 'Lorelei', 'Una farfalla è simbolo di novità...Soprattutto se scivola vicino all\'orecchio..[osservando chi le porge parola la giovane femmina dall\'aspetto suadente or arcua le labbra]', 'BOSCO', 11);
INSERT INTO chat VALUES (496, 1099515554, 'Uriel', '[annuisce alle parole della ragazzina poi si avvicina a lei con la spada ancora in mano e porgendole l\'altra mano le dice] piacere ragazza io sono Uriel', 'BOSCO', 12);
INSERT INTO chat VALUES (497, 1099515556, 'Moltovon', 'novita e?la ragazzina ti ha spiazzato uriel....', 'BOSCO', 10);
INSERT INTO chat VALUES (498, 1099515598, 'Lorelei', '+diffidente di quella spada allunga la mano verso quella dell\'uomo stringendogliela appena] Lor..[poi si ferma pensierosa] Lora...', 'BOSCO', 11);
INSERT INTO chat VALUES (499, 1099515754, 'Moltovon', '[torna a guardar la luna cominciando a pensare ad una visita al templio]', 'BOSCO', 10);
INSERT INTO chat VALUES (500, 1099515765, 'Uriel', '[si volta verso l\'elfo e gli chiede] è questa la ragazzina che avete protetto', 'BOSCO', 12);
INSERT INTO chat VALUES (501, 1099515827, 'Moltovon', 'già,per lo meno ci ho provato..', 'BOSCO', 10);
INSERT INTO chat VALUES (502, 1099515856, 'Uriel', 'perche come è andata [chiede incuriosito aggiungendo] lei è ancora viva e anche voi', 'BOSCO', 12);
INSERT INTO chat VALUES (503, 1099515857, 'Itzamna', 'Lorelei appare piuttosto cambiata, è più pallida, più magra e sembra persino invecchiata...', 'BOSCO', 1);
INSERT INTO chat VALUES (504, 1099515938, 'Lorelei', '+rimane vicina ai due individui riconoscendo ora MOltovon.....Un freddo sorriso mentre la mano scivola sui neri capelli', 'BOSCO', 11);
INSERT INTO chat VALUES (505, 1099515976, 'Moltovon', '[osserva la ragazzina]gia non so esattamente come sia finita..[si avvicina alla ragazza]ragazzina che ti e ssuccesso dopo', 'BOSCO', 10);
INSERT INTO chat VALUES (506, 1099516022, 'Moltovon', 'dopo il fattaccio del vampiro..la mia mente e molto oscurata su quanto riguarda il fatto ', 'BOSCO', 10);
INSERT INTO chat VALUES (507, 1099516026, 'Lorelei', 'Il silenzio è in me.........Come in un tempio quando la morte è funesta..[bisbiglia in risposta]', 'BOSCO', 11);
INSERT INTO chat VALUES (508, 1099516093, 'Uriel', '[segue la conversazione dei due non capendo molto visto che è giunto in citta solo da un giorno', 'BOSCO', 12);
INSERT INTO chat VALUES (509, 1099516146, 'Moltovon', '[sbigottito]scusa?in pratica ?non fare strani rigiri di parole..', 'BOSCO', 10);
INSERT INTO chat VALUES (510, 1099516232, 'Itzamna', 'Un essere, ammantato di nero, s\'avvicina al luogo silenziosamente e senza farsi notare, resta acquattato in un cespuglio ad una decina di metri di distanza dai tre...', 'BOSCO', 1);
INSERT INTO chat VALUES (511, 1099516272, 'Lorelei', 'Non risponderò alla vostra domanda..[semplice ed esaustiva]', 'BOSCO', 11);
INSERT INTO chat VALUES (512, 1099516320, 'Uriel', '[sorride al coraggio della ragazza poi si guarda intorno nervoso come se fosse osservato da qualcuno', 'BOSCO', 12);
INSERT INTO chat VALUES (513, 1099516322, 'Moltovon', 'perche ragazza ho rischiato la vita per cercare di savarti e per di piu il mio dito medio[irritato glielo volge in faccia]', 'BOSCO', 10);
INSERT INTO chat VALUES (514, 1099516359, 'Moltovon', '[anchesso pare scosso dalla presenza di qualcosa]', 'BOSCO', 10);
INSERT INTO chat VALUES (515, 1099516518, 'Lorelei', 'E quindi? Sono viva..Non vi basta? [passa lal ingua sulle carnose labbra mentre leggermente fa un passo indietro]', 'BOSCO', 11);
INSERT INTO chat VALUES (516, 1099516634, 'Moltovon', '[punta la spada alla gola della ragazza che va ad appoggiarsi con la schiena ad un albero]senti ragazzina sono nervoso,dimmi che ti e successo e non fare l\'arrogante con me,non mi sto divertendo', 'BOSCO', 10);
INSERT INTO chat VALUES (517, 1099516648, 'Uriel', '[si volta verso i due seguendo la conversazione cercando di prendere piu informazioni possibili', 'BOSCO', 12);
INSERT INTO chat VALUES (518, 1099516687, 'Itzamna', 'Un leggerissimo rumore proviene dal cespuglio dietro al quale è celata la figura, solo il fine udito di Lorelei riesce però ad avvertirlo...', 'BOSCO', 1);
INSERT INTO chat VALUES (519, 1099516753, 'Lorelei', 'Nemmeno io...[guardando Moltovon con occhi febbrili e spettrali mentre sente un rumore alle sue spalle..Non si volge, non vuole che anche gli altri due possano accorgersene] ', 'BOSCO', 11);
INSERT INTO chat VALUES (520, 1099516824, 'Uriel', '[alla vista della spada dell\'elfo sulla gola della ragazza porta la destra a stringere l\'elsa della sciabola nascosto dal mantello', 'BOSCO', 12);
INSERT INTO chat VALUES (521, 1099517131, 'Moltovon', '[osserva lo sguardo della ragazza e lascia ke la punta affilata tocchi il collo della ragazza]dimmi che ti e successo subito[urla]', 'BOSCO', 10);
INSERT INTO chat VALUES (522, 1099517199, 'Uriel', '[alla vista di questo elfo aggressivo estra due dita di spada sempre nascosto dal mantello pronto ad estrarla subito in caso di pericolo per la ragazza', 'BOSCO', 12);
INSERT INTO chat VALUES (523, 1099517242, 'Itzamna', 'La creatura che si celava dietro al cespuglio si alza in piedi, e si dirige, silenziosa, verso il gruppetto, ella è visibile a tutti, tranne a Lorelei che le da le spalle...', 'BOSCO', 1);
INSERT INTO chat VALUES (524, 1099517253, 'Lorelei', 'Se mi ferirete perirete seduta stante..Il mio corpo nn è più quello di una volta...[ghigna malefica mentre gli occhi appaiono vitrei........] Il mio sangue potrebbe uccidervi......', 'BOSCO', 11);
INSERT INTO chat VALUES (525, 1099517307, 'Uriel', '[alle parole della ragazza rimane leggermente scosso non capendole ma rimanendo sempre concentrato e attento ad estrarre la spada', 'BOSCO', 12);
INSERT INTO chat VALUES (526, 1099517540, 'Moltovon', '[continua ad ogni secondo a trovar risposta alle sue domande]dunque qualcosa di perfido ti e successo quella sera..', 'BOSCO', 10);
INSERT INTO chat VALUES (527, 1099517580, 'Lorelei', 'Chi può dirlo? [delicata figura or par che lo sguardo vitreeo ritorni del color del mare] toglietemi questa spada di dosso', 'BOSCO', 11);
INSERT INTO chat VALUES (528, 1099517582, 'Itzamna', 'La figura avanza, emettendo poco rumore e non proferendo parola alcuna, osserva i presenti...', 'BOSCO', 1);
INSERT INTO chat VALUES (529, 1099517651, 'Moltovon', '[volge lo sguardo alla nuova figura tenendo la spada piu stretta al collo della ragazza]', 'BOSCO', 10);
INSERT INTO chat VALUES (530, 1099517760, 'Lorelei', 'Uccidetemi e morirete con me...Che bella fine per un stolto elfo...[bisbiglia, senza nessuna intonazione nella voce]', 'BOSCO', 11);
INSERT INTO chat VALUES (531, 1099517825, 'Moltovon', '[osserva la figura non occupandosi della ragazza]', 'BOSCO', 10);
INSERT INTO chat VALUES (532, 1099517834, 'Itzamna', '[Salve elfo eroe] Esclama la figura [vedo che osate ancora interferire con me...] sorride, essendo ora ben riconoscibile a Moltovon, mentre la voce è ben nota a Lorelei [che strano, la situazione è ribaltata... lasciate stare quella ragazza o farete una bruttissima fine...] Esclama Teldaran con un ghigno malefico in volto...', 'BOSCO', 1);
INSERT INTO chat VALUES (533, 1099517898, 'Uriel', '[si volta ad osservare il nuovo giunto estraendo lentamente la spada e chiedendo] voi chi siete', 'BOSCO', 12);
INSERT INTO chat VALUES (534, 1099517961, 'Moltovon', 'almeno dimmi che essere sei io lascio la ragazza senza esitazioni[tenendo la ragazza si avvicina ad uriel]attento e un essere molto pericoloso,e lui che mi ha mozzato il dito]', 'BOSCO', 10);
INSERT INTO chat VALUES (535, 1099518038, 'Lorelei', '+sentendo la voce di Teldaran il sorriso ritorna sul suo volto...Piu\' magra, suadente..non più una tredicenne in quello sguardo...Dimostra qualche anno in più...Solitaria figura mentre respira delicata', 'BOSCO', 11);
INSERT INTO chat VALUES (536, 1099518051, 'Uriel', 'bè se lo ha fatto avra avuto i suoi motivi [risponde a Moltovon guardando sempre attentamente il nuovo giunto', 'BOSCO', 12);
INSERT INTO chat VALUES (537, 1099518073, 'Itzamna', 'La creatura sorride, scuotendo il capo [Tu lascia la ragazza e io ti dirò che continuerai ad essere qualcosa...] deridendo palesemente Moltovon...', 'BOSCO', 1);
INSERT INTO chat VALUES (538, 1099518235, 'Uriel', '[incomincia a sudare quella situazione non gli piace non comprendendo da che parte stare sta attento ad entrambi', 'BOSCO', 12);
INSERT INTO chat VALUES (539, 1099518521, 'Moltovon', 'ridi ,ridi ma la mia spada e attaccata al collo della ragazza ,manca meno di una leggera pressione e anche lei ', 'BOSCO', 10);
INSERT INTO chat VALUES (540, 1099518555, 'Moltovon', 'muore,la mia morte ora e secondaria', 'BOSCO', 10);
INSERT INTO chat VALUES (541, 1099518642, 'Lorelei', 'Credete che basti una spada per uccidermi? [senza nessuna modulazione di voce]', 'BOSCO', 11);
INSERT INTO chat VALUES (542, 1099518702, 'Uriel', '[continua a seguire la conversazione incominciando a pensare che forse era meglio se restava nel nascondigli segreto dell\'elfa ma restando attento a quello che lo circonda pronto a difendersi avendo la spada estratta', 'BOSCO', 12);
INSERT INTO chat VALUES (543, 1099518731, 'Itzamna', 'Il vamprio sbuffa, il suo volto si riempe di rabbia, osserva pieno d\'ira Moltovon, gli occhi cominciano ad illuminarsi di rosso, fino a diventare, progressivamente quasi abbaglianti... Moltovon sente una fortissima pressione mentale, riesce a pensare ad una sola cosa: PAURA', 'BOSCO', 1);
INSERT INTO chat VALUES (544, 1099518765, 'Moltovon', 'o be [trancia velocemente un pezzo di legno dall\'albero vicino e glielo punta dritto al cuore]ora vediamo ', 'BOSCO', 10);
INSERT INTO chat VALUES (545, 1099518791, 'Uriel', '[nota gli occhi luminescenti del nuovo giunto chiedendosi che razza di mostro o sia', 'BOSCO', 12);
INSERT INTO chat VALUES (546, 1099518856, 'Lorelei', '+rimane ferma...Non è una vampira, la paura non la sente nel vedere uel pezzo di legno..si possa con la schiena alla corteccia] ed ora?', 'BOSCO', 11);
INSERT INTO chat VALUES (547, 1099518943, 'Uriel', '[nota il gesto dell\'elfo domandandogli] che diavolo stai facendo [restando sempre pero attento all\'umano con gli occhi rossi', 'BOSCO', 12);
INSERT INTO chat VALUES (548, 1099518995, 'Moltovon', '[la paura e tanta le dita gli stanno care e lascia la ragazza,rattristito per aver perso il suo sogno si da quando venne al mondo,diventare un arcere,tutto svanito per una ragazzina che manco e riuscito a salvare]e tutta tua [la lancia all essere]', 'BOSCO', 10);
INSERT INTO chat VALUES (549, 1099519070, 'Itzamna', 'Il vampiro scuote la testa [no, ora anche tu sei mio] i suoi occhi cominciano ad emanare una luce ancora più forte, come se si trattasse di una torcia, Moltovon sente un forte mal di testa, poi più niente: il legame che collegava la sua mente con il suo corpo si interrompe bruscamente: il corpo cade al suolo, ma moltovon non riceve più alcun senso, ne dolore ne piacere, ne stanchezza, ne freddo, ne caldo... egli si direbbe quasi vivere ', 'BOSCO', 1);
INSERT INTO chat VALUES (550, 1099519100, 'Itzamna', '//in un altro mondo, distinto da quello in cui vive il suo corpo', 'BOSCO', 1);
INSERT INTO chat VALUES (551, 1099519126, 'Uriel', '[segue lo scambio con lo sguardo chiedendosi se è stata la cosa giusta poi nota il corpo di Moltovon girandosi di scatto verso l\'uomo non sapendo cosa fare', 'BOSCO', 12);
INSERT INTO chat VALUES (552, 1099519148, 'Lorelei', '+la ragazzina vien spostata di peso e non essendo pronta perde l\'equilibrio arrivando verso il corpo dell\'uomo che or la difende..........Sospira amareggiata per averlo scontrata seppur sia riconoscente di quel fatto', 'BOSCO', 11);
INSERT INTO chat VALUES (553, 1099519525, 'Itzamna', 'La creatura si volta verso Uriel, osservandolo... la luce negli occhi si è spenta [Beh, andatevene] esclama secco e all\'improvviso [e non ricordatevi di questa sera...]', 'BOSCO', 1);
INSERT INTO chat VALUES (554, 1099519546, 'Uriel', '[facendo fede al proprio coraggio chiede all\'uomo] che ne è stato di Moltovon [con voce abbastanza preoccupanta e stringendo piu forte l\'elsa per la paura', 'BOSCO', 12);
INSERT INTO chat VALUES (555, 1099519601, 'Uriel', '[incominciando a indietreggiare nel bosco', 'BOSCO', 12);
INSERT INTO chat VALUES (556, 1099519609, 'Itzamna', 'Teldaran sorride [beh, consideratelo pure deceduto, e ora andatevene!] Urla, ancora arrabbiato...', 'BOSCO', 1);
INSERT INTO chat VALUES (557, 1099519610, 'Lorelei', '+si rimette in piedi mentre sivolge verso Uriel....Sorpresa da quel coraggio fa un passo indietro verso Teldaran per poi attender da lui risposta, se mai avverrà..', 'BOSCO', 11);
INSERT INTO chat VALUES (558, 1099519669, 'Uriel', '[spada in mano si volta nel bosco correndo al suo interno in direzione del rifugio segreto pensando di avvertira Laraian dell\'accaduto o forse no', 'BOSCO', 12);
INSERT INTO chat VALUES (559, 1099519866, 'Itzamna', 'Il vampiro si dirige verso il corpo di Moltovon e, senza eccessiva fatica, se lo carica in spalla, poi si incammina verso il proprio rifugio, intimando a Lorelei [seguimi]', 'BOSCO', 1);
INSERT INTO chat VALUES (560, 1099519899, 'Lorelei', 'Si..[non una parola verso Teldaran sapendo d\'aver sbagliato..China il capo in segno di rispetto mentre s\'avvia silenziosa...Un camminar sicuro e delicato...Una grazia mai trovata]', 'BOSCO', 11);
INSERT INTO chat VALUES (561, 1099520157, 'Moltovon', '[immerso nel nulla rimane come nella sbornia che lo aveva distrutto prima]', 'BOSCO', 10);
INSERT INTO chat VALUES (562, 1099520170, 'Itzamna', 'Il vampiro, assieme a Lorelei e ciò che resta di Moltovon si allontanano verso l\'interno del bosco, mentre la zona pare tornare alla normalità...', 'BOSCO', 1);
INSERT INTO chat VALUES (563, 1099520181, 'Uriel', '[continua a correre per il bosco guardandosi alle spalle per vedere se è seguito poi quando è sicuro di non essere inseguito si addentra tra i cespugli nello spiazzo segreto riprendendo fiato', 'BOSCO', 12);
INSERT INTO chat VALUES (564, 1099520728, 'Itzamna', 'clearallchat', 'ALL', 1);
INSERT INTO chat VALUES (565, 1099521057, 'Itzamna', 'Teldaran porta Moltovon  nel suo rifugio e lo porta in una stanza identica a quella in cui si risvegliò, a suo tempo, Lorelei. Moltovon è completamente ignudo, steso su di una tavola di legno, con piedi e mani legati a stella, la stanza ha forma circolare... egli riprende conoscenza e, innanzi a se, vede Teldaran e Lorelei che l\'osservano...', 'PRIVATA: Human grocery store', 1);
INSERT INTO chat VALUES (566, 1099521107, 'Lorelei', '+la giovane femmina ancor mortificata da quello che ha combinato segue Teldaran a capo chino per poi sistemarsi al suo fianco osservando l\'uomo e le sue nudità....Ferma e marmorea attende...', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (567, 1099521201, 'Itzamna', 'Teldaran picchia un paio di sberle a Moltovon onde fargli riprendere meglio conoscenza, poi si volge verso Lorelei, estraendo un Kriss [torturalo, fallo soffrire il più a lungo possibile] poi si allontana e si pone ad osservare la scena sorridendo...', 'PRIVATA: Human grocery store', 1);
INSERT INTO chat VALUES (568, 1099521214, 'Moltovon', '[svanito come se avesse aperto gli occhi al mondo per la prima volta scorge la ragazza e con grazia le porge un sorriso]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (569, 1099521240, 'Itzamna', '//Teldaran da il Kriss a Lorelei', 'PRIVATA: Human grocery store', 1);
INSERT INTO chat VALUES (570, 1099521293, 'Moltovon', '[pensa tra se e se forse e stato troppo siucuro di se ,dei suoi mezzi e attende la morte]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (571, 1099521341, 'Lorelei', '+prende fra le mani lo stiletto mentre morbidamente va a sedersi vicino a Moltovon..Lo fissa attentamente scrutando quel sorriso] Volevate uccidermi..[mormora infastidita mentre porta la punta dellostiletto sul collo dell\'elfo]', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (572, 1099521485, 'Moltovon', 'già...volevo salvarvi in verità[una lacrima seguita a calare dall\'occhio sinistro]ma cè sempre qualcuno piu forte di noi ragazzina..[torna in un sorriso fioco e chioudendo glio occhi cerca di volgere lo sguardo verso l\'alto]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (573, 1099521498, 'Teldaran', '+si concentra e compie dei gesti, quasi mormorasse la formula di un incantesimo, ma in silenzio...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (574, 1099521533, 'Lorelei', 'No..Non mi fate pena..[mentre spinge la punta dellos tiletto verso ilpetto in maniera da produrgli una leggera ferita...non profonda da fargli predere troppo sangue]', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (575, 1099521579, 'Teldaran', '+// La resistenza fisica (ma non la sopportazione del dolore) di Moltovon aumenta notevolmente...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (576, 1099521652, 'Moltovon', '[non abituato al dolore cerca di non dar soddisfazione alla ragazzina ma  una smorfia  agonizzante gli appare sul viso]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (577, 1099521696, 'Lorelei', '+per meglio agonizzarlo si mette a cavalcioni sul suo corpo...Bacino contro bacino mentre la suadente ragazzina osserva il sangue scivolar dal petto...Lo stiletto continua a premere verso l\'ombelico...in una scia continua..', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (578, 1099521752, 'Teldaran', '+prende a parlare] puoi torturarlo anche per vie... diciamo più ovvie [sorride, osservando Moltovon...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (579, 1099521780, 'Moltovon', '[stringe i denti in un agonizzante dolore e i gemiti cominciano ad uscire dalla bocco che cerca di rimaner chiusa]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (580, 1099521834, 'Lorelei', '+muove lentamente il bacino su quello di MOlvoton mentre ascolta le parole di Teldaran in maniera così di poterlo eccitare lentamente....Sa quel che sta facendo...attende paziente mentre lo stiletto scivola sotto l\'ombelico..', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (581, 1099521947, 'Moltovon', '[la testa comincia a voltare ora a destra e ora a sinistra e comincia a gridare "NO VI PREGO NO"', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (582, 1099521979, 'Lorelei', 'Ssshhh..[accattivamente e femminea si sposta dal bacino mentre lo guarda attentamente] cosa no?', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (583, 1099522012, 'Teldaran', '+// Le cinghie che tengono Moltovon sono molto strette: non riesce a muovere braccia e gambe...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (584, 1099522033, 'Moltovon', 'Basta ragazzina ti prego,basta,[le urla sono oramai fioche ,non resiste piu si sente abbandonare]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (585, 1099522103, 'Lorelei', '+or lo stiletto passa sulla parte eccitata di Moltovon facendo solamente un lieve sfregio che porta più dolore che cicatrici........] Non sento nulla...[ le mani tremano dal momento]', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (586, 1099522162, 'Teldaran', '+sorride a vedere l\'opera della sua allieva...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (587, 1099522180, 'Moltovon', '[un urlo di dolore eccheggia come mai prima uomo avesse emesso]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (588, 1099522280, 'Lorelei', '+a  quell\'urlo la ragazzina appar vivere...poggia un lento bacio sulla fronte di Moltovon per poi scostarsi dal letto lasciandolo nel suo dolore mentre si avvicina a Teldaran..Curiosa..', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (589, 1099522323, 'Teldaran', '+osserva Lorelei che gli si fa incontro, restando silente e domandandosi cosa voglia...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (590, 1099522374, 'Lorelei', 'Basta..[stufa come una ragazzina mentre passa armoniosa la lingua sulle labbra a cercar sapor diverso] Si lamenta troppo...Voglio giocarci anche domani..[portandogli lo stiletto vicino affinchè possa prenderlo]', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (591, 1099522402, 'Moltovon', '[il respiro si fa forte i battiti del cuor si moltiplicano]anf anf,[continua a pensare che dovrà morire per aver cercarto di far del bene]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (592, 1099522453, 'Teldaran', '+sorride] Beh, puoi giocarci sia oggi che domani... avanti, non essere timida, è tutto tuo ora...[la guarda sorridendo, anche se il suo sguardo ha un che di malefico...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (593, 1099522562, 'Lorelei', 'Uhm..[dà le spalle a Teldaran mentre si avvicina nuovamente all\'uomo disteso sul letto....Porta la lama dello stiletto al fianco destro incidendolo lentamente......mentre lo fissa neglio cchi] male?', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (594, 1099522674, 'Moltovon', '[se solo potesse tornare indietro non aeguirebbe la ragazzina per prestarle aiuto,pensa in un mare di dolore stringe i denti mostrando solo versi agghiaccianti]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (595, 1099522724, 'Lorelei', 'Tanto..[replica in risposta con far affascinato poi guarda Teldaran] dove mi consigliate di fare? [m,entre s\'avvicina alla ferita sul petto e vi poggia due dita premendo]', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (596, 1099522807, 'Teldaran', '+sorride malefico] Oh beh, forse... chessò, un altro dito...oppure un occhio...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (597, 1099522916, 'Moltovon', '[escono versi strani e farfuglia qualcosa,pensa se veramente potesse esistere un dio buono e se qualcuno ,forma stranza o non strana che sia potesse arrivare in suo aiuto,poi pensa "i buoni non vincono mai"]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (598, 1099523119, 'Lorelei', '+infine porta lo stiletto con la lama orizzontale in mezzo alle labbra di Moltovon..... La lama poggia da  angolo ad angolo delle labbra...ove quella distensione serve er muovere le labbra...Un taglio netto su ambedue gli angoli per provocargli dolore mentre parla beve o semplicemente parla...Un ghigno malefico', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (599, 1099523174, 'Teldaran', '+sorride osservando esaltato la scena...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (600, 1099523894, 'Moltovon', '[le urla si fanno pesanti e assordanti il sangue gli cola e quasi lo soffoca entrando in bocca]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (601, 1099523937, 'Lorelei', 'Eh..se gridate vi fate più male..[togliendo il kriss mentre lo guarda con innocenza] no?', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (602, 1099523996, 'Teldaran', '+scoppia a ridere alle parole di Lorelei e si muove verso i due, tenendosi ad un paio di metri di distanza da Moltovon...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (603, 1099524046, 'Moltovon', '[sputa il sangue in faccia alla ragazzina e volge in un pianto di compassione e perdono,sa che essa non e veramente quella che ha conosciuto]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (604, 1099524048, 'Moltovon', '', 'PRIVATA: Human grocery store:', 10);
INSERT INTO chat VALUES (605, 1099524134, 'Lorelei', '[chiude gli occhi allo sputo mentre schifata porta il kriss a punzecchiarlo sulla ferita del petto] domandate scusa!', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (606, 1099524185, 'Teldaran', '+viene colpito da qualche schizzo, e diventa nero dalla rabbia] date qua [esclama secco, facendo cenno a Lorelei di dargli il pugnale...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (607, 1099524211, 'Moltovon', '[il dolore e indescrivibile ma oramai pronto alla morte rinuncia alla pietà decidendo di morir fiero]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (608, 1099524232, 'Lorelei', '+silenziosa or la ragazzina porge il Kriss a Teldaran pulendosi con la manica del vestito il sangue dal volto]', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (609, 1099524289, 'Teldaran', '+afferra il kriss ed esclama, freddo, verso Moltovon] Tira fuori la lingua... bene, tutta...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (610, 1099524384, 'Moltovon', '[rassegnato e sottomesso estrae la lingua]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (611, 1099524422, 'Teldaran', '+recide circa un centimetro della lingua di Moltovon col pugnale, sempre che questo non la ritiri prima...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (612, 1099524539, 'Moltovon', '[non ritira la lingua]', 'PRIVATA: Human grocery store', 10);
INSERT INTO chat VALUES (613, 1099524616, 'Teldaran', '+fatto ciò mira una pugnalata alle parti basse dell\'elfo, piantando dunque il pugnale sul tavolo, senza colpire la propria vittima, poi si allontana stizzito, non proferendo alcuna parola e ritirandosi nella propria stanza...', 'PRIVATA: Human grocery store', 13);
INSERT INTO chat VALUES (614, 1099524695, 'Lorelei', '[schifata segue veloce Teldaran per uscire dalla stanza] a domani..[glacialmente felice mentre se ne va dalla stanza]', 'PRIVATA: Human grocery store', 11);
INSERT INTO chat VALUES (615, 1099525010, 'Itzamna', 'A breve Moltovon sviene per il dolore e per il termine dell\'incanto di Teldarano', 'PRIVATA: Human grocery store', 1);
INSERT INTO chat VALUES (616, 1099525218, 'Itzamna', 'clearthischat', 'PRIVATA: Human grocery store', 1);
# --------------------------------------------------------

#
# Struttura della tabella `entrate`
#

CREATE TABLE entrate (
  id int(100) unsigned NOT NULL auto_increment,
  data int(11) default NULL,
  nome varchar(30) default NULL,
  che int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `entrate`
#

INSERT INTO entrate VALUES (1, 1099503499, 'Itzamna', 0);
INSERT INTO entrate VALUES (2, 1099504303, 'Moltovon', 0);
INSERT INTO entrate VALUES (3, 1099505812, 'Moltovon', 0);
INSERT INTO entrate VALUES (4, 1099506383, 'Itzamna', 1);
INSERT INTO entrate VALUES (5, 1099506662, 'Itzamna', 0);
INSERT INTO entrate VALUES (6, 1099507445, 'Itzamna', 0);
INSERT INTO entrate VALUES (7, 1099508320, 'Uriel', 0);
INSERT INTO entrate VALUES (8, 1099508747, 'Itzamna', 0);
INSERT INTO entrate VALUES (9, 1099508757, 'Uriel', 0);
INSERT INTO entrate VALUES (10, 1099508929, 'Itzamna', 1);
INSERT INTO entrate VALUES (11, 1099509785, 'Itzamna', 0);
INSERT INTO entrate VALUES (12, 1099509849, 'Uriel', 0);
INSERT INTO entrate VALUES (13, 1099510136, 'Moltovon', 0);
INSERT INTO entrate VALUES (14, 1099510657, 'Moltovon', 0);
INSERT INTO entrate VALUES (15, 1099510661, 'Itzamna', 0);
INSERT INTO entrate VALUES (16, 1099512781, 'Itzamna', 0);
INSERT INTO entrate VALUES (17, 1099513196, 'Itzamna', 0);
INSERT INTO entrate VALUES (18, 1099513538, 'Itzamna', 0);
INSERT INTO entrate VALUES (19, 1099513576, 'Itzamna', 0);
INSERT INTO entrate VALUES (20, 1099513690, 'Uriel', 0);
INSERT INTO entrate VALUES (21, 1099513692, 'Itzamna', 0);
INSERT INTO entrate VALUES (22, 1099513923, 'Moltovon', 0);
INSERT INTO entrate VALUES (23, 1099513959, 'Lorelei', 0);
INSERT INTO entrate VALUES (24, 1099515576, 'Chlorophyl', 0);
INSERT INTO entrate VALUES (25, 1099517276, 'Chlorophyl', 0);
INSERT INTO entrate VALUES (26, 1099518215, 'Chlorophyl', 1);
INSERT INTO entrate VALUES (27, 1099518460, 'Moltovon', 0);
INSERT INTO entrate VALUES (28, 1099518498, 'Moltovon', 0);
INSERT INTO entrate VALUES (29, 1099518530, 'Uriel', 0);
INSERT INTO entrate VALUES (30, 1099518610, 'Itzamna', 0);
INSERT INTO entrate VALUES (31, 1099518612, 'Uriel', 0);
INSERT INTO entrate VALUES (32, 1099518652, 'Moltovon', 0);
INSERT INTO entrate VALUES (33, 1099520931, 'Uriel', 1);
INSERT INTO entrate VALUES (34, 1099520967, 'Lorelei', 0);
INSERT INTO entrate VALUES (35, 1099521266, 'Itzamna', 1);
INSERT INTO entrate VALUES (36, 1099521285, 'Teldaran', 0);
INSERT INTO entrate VALUES (37, 1099523709, 'Moltovon', 0);
INSERT INTO entrate VALUES (38, 1099524746, 'Teldaran', 1);
INSERT INTO entrate VALUES (39, 1099524767, 'Itzamna', 0);
INSERT INTO entrate VALUES (40, 1099524871, 'Lorelei', 1);
INSERT INTO entrate VALUES (41, 1099525278, 'Itzamna', 1);
INSERT INTO entrate VALUES (42, 1099563887, 'Itzamna', 0);
INSERT INTO entrate VALUES (43, 1099566147, 'Itzamna', 1);
INSERT INTO entrate VALUES (44, 1099572299, 'Itzamna', 0);
INSERT INTO entrate VALUES (45, 1099572525, 'Itzamna', 1);
# --------------------------------------------------------

#
# Struttura della tabella `esperienza`
#

CREATE TABLE esperienza (
  id int(50) unsigned NOT NULL auto_increment,
  data int(11) NOT NULL default '0',
  master varchar(30) NOT NULL default '',
  giocatore varchar(30) NOT NULL default '',
  quantità int(4) NOT NULL default '0',
  motivo varchar(200) NOT NULL default '',
  fatto int(1) NOT NULL default '0',
  PRIMARY KEY  (id),
  FULLTEXT KEY motivo (motivo)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `esperienza`
#

INSERT INTO esperienza VALUES (1, 1099043765, 'Itzamna', 'Moltovon', 133, 'Giocata al bosco, col vampiro. Vuole fare l\'eroe e perde il dito medio della mano destra...', 0);
INSERT INTO esperienza VALUES (2, 1099043765, 'Itzamna', 'Lorelei', 221, 'Giocata al bosco, col vampiro. Gioca bene il suo personaggio, anche se alla fine perde un pò di credibilità', 0);
INSERT INTO esperienza VALUES (3, 1099086926, 'Itzamna', 'Lorelei', 300, 'Esperienza di vita col vampiro, nutrizione, vestizione e norme basilari di comportamento... (Pass: Building A Mistery)', 0);
INSERT INTO esperienza VALUES (4, 1099331111, 'Itzamna', 'Uriel', 113, 'Giocata in taverna pubblica con l\'oste ed un gruppo di 2 umani, un elfo ed un elfa...', 0);
INSERT INTO esperienza VALUES (5, 1099341343, 'Itzamna', 'Uriel', 255, 'Giocata al bosco con l\'elfa incontrata il pomeriggio in taverna. Gioca bene la sua ignoranza, e si fida dell\'elfa, copulano...', 0);
INSERT INTO esperienza VALUES (6, 1099520102, 'Itzamna', 'Lorelei', 122, 'Giocata al bosco col vampiro, Uriel e Moltovon, rischia la vita, ma viene salvata dal vampiro...', 0);
INSERT INTO esperienza VALUES (7, 1099520102, 'Itzamna', 'Uriel', 111, 'Praticamente assiste alla giocata al bosco tra Lorelei, Moltovon e Teldaran...', 0);
INSERT INTO esperienza VALUES (8, 1099520102, 'Itzamna', 'Moltovon', 0, 'Sarebbe inutile dare px, attacca il vampiro e paga con la vita... sempre al bosco...', 0);
INSERT INTO esperienza VALUES (9, 1099524864, 'Itzamna', 'Lorelei', 347, 'Tortura a Moltovon (Pass: Human Grocery Store)', 0);
INSERT INTO esperienza VALUES (10, 1099524864, 'Itzamna', 'Moltovon', 230, 'Torturato da Lorelei e GDR al bosco (Pass: Human Grocery Store)', 0);
# --------------------------------------------------------

#
# Struttura della tabella `khoramail`
#

CREATE TABLE khoramail (
  id int(6) unsigned NOT NULL auto_increment,
  mittente varchar(30) NOT NULL default '',
  destinatario varchar(30) NOT NULL default '',
  oggetto varchar(255) default NULL,
  messaggio text,
  data int(11) NOT NULL default '0',
  letto int(1) NOT NULL default '0',
  idaut int(6) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `khoramail`
#

INSERT INTO khoramail VALUES (10, 'Itzamna', 'Chath', '= p', 'Ho cambiato i colori e t\'ho regalato un pò di px... nel profilo puoi acquistare abilità... anche se non so fino a che punto funzioni la cosa... sono disponibili solo le abilità raziali per ora, le altre le devo ancora inventare...\r\n\r\nCIAO!!!', 1094583561, 1, 0);
INSERT INTO khoramail VALUES (17, 'Itzamna', 'Itzamna', 'Bah...', 'Così è meno brutta la schermata iniziale delle khoramail...', 1096192355, 1, 0);
INSERT INTO khoramail VALUES (20, 'Itzamna', 'Moltovon', 'Situazione', 'Ti risvegli nel tuo letto, in profondo stato confusionale.\r\nTi ricordi distintamente della scena di te e del vampiro in uno spazio completamente buio e, pare, privo di gravità. Ricordi distintamente la sua voce che dice "Vediamo come fari ora ad usare l\'arco, eroe..." poi un forte dolore alla mano destra e più niente...\r\n\r\nT\'avvedi che la tua mano destra è priva del dito medio e al suo posto vi è una fasciatura ben fatta. Non senti dolore dalla ferita, però sei debole, hai perso tantissimo sangue...\r\n\r\nRicordi esattamente tutto ciò che è avvenuto stasera, ma non ricordi affatto tutto ciò che precede l\'entrata nella stanza della botola...', 1099002256, 1, 0);
INSERT INTO khoramail VALUES (21, 'Itzamna', 'Lorelei', 'Situazione', 'Ti risvegli su di un letto matrimoniale, sei al centro di esso e sei legata per le mani e per i piedi, in modo tale da formare una stella precisa.\r\nSei completamente nuda, la stanza attorno a te è di forma circolare, completamente vuota (eccezion fatta per il letto)\r\n\r\nNella stanza non c\'è nessuno, ma vedi davanti a te una porta.\r\n\r\nPoi dovremo giocare quello che segue...', 1099002488, 1, 0);
INSERT INTO khoramail VALUES (22, 'Itzamna', 'Lorelei', 'Nuove conoscenze...', 'Parlando col vampiro vieni a scoprire che quello che vedi non è il suo vero aspetto, anche se egli si è rifiutato (sempre che tu glielo abbia chiesto) di mostrati quello reale... hai anche intuito che egli è molto vecchio, esiste forse da prima della barriera... o quanto meno sei certa che egli sappia cosa si trova all\'esterno di essa, ma anche di ciò egli si è rifiutato di parlare (come prima, sempre se hai chiesto), cercando di cambiare argomento.\r\nUna cosa che ti ha colpito particolarmente è il fatto che egli non mostri eccessivo interesse in ciò che ti chiede (intendo per quanto riguarda atteggiamento e tono di voce, ecc...)', 1099319014, 1, 0);
INSERT INTO khoramail VALUES (23, 'Itzamna', 'Uriel', 'Sogno...', 'La notte stessa in cui hai avuto il primo incontro con Laraian (a proposito, se tu vuoi lei continua ad ospitarti tranquillamente, ma la seconda notte la noti meno disposta diciamo...) comunque, dicevo, la prima notte, sogni i tuoi amici, persi nelle tenebre (uno di loro mancava (scegli tu il suo nome)), che si guardavano attorno spaesati, come fossero presi d\'assalto da qualcosa, e li vedevi cadere, uno dopo l\'altro tra atroci sofferenze...\r\n\r\nLa notte dopo (quella che sta per passare) ripeti lo stesso sogno, ma riesci ad identificare da cosa si stavano difendendo i tuoi amici: una creatura giallognola, munita di quattro tentacoli... insomma, per farla breve, un Illithid di colore giallognolo...<br>\r\nLa suddetta creatura, come è facile intuire, si cibava dei loro cervelli... ha quanto hai capito le creature erano più di una, ma non ne sei certo (d\'altra parte i sogni sono confusi...)', 1099437833, 1, 0);
INSERT INTO khoramail VALUES (24, 'Uriel', 'Itzamna', 'Sogno', 'Se per te va bene il nome del mio compagno che mancava si chiama Dearnin e comunque per addesso continuo a dormire li dall\'elfa', 1099509667, 1, 0);
# --------------------------------------------------------

#
# Struttura della tabella `personaggi`
#

CREATE TABLE personaggi (
  id int(11) unsigned NOT NULL auto_increment,
  nome varchar(30) NOT NULL default '',
  cognome varchar(30) default NULL,
  razza varchar(50) NOT NULL default 'Umano',
  archetipo varchar(50) NOT NULL default 'Nessuno',
  sesso enum('M','F') NOT NULL default 'M',
  data_creazione int(11) default NULL,
  pass varchar(20) NOT NULL default '',
  mail varchar(50) NOT NULL default '',
  hmail varchar(50) default NULL,
  forza int(3) NOT NULL default '6',
  destrezza int(3) NOT NULL default '6',
  costituzione int(3) NOT NULL default '6',
  intelligenza int(3) NOT NULL default '6',
  saggezza int(3) NOT NULL default '6',
  carisma int(3) NOT NULL default '6',
  descrizione text,
  storia text,
  notoriety int(6) default NULL,
  ultimo_accesso int(11) NOT NULL default '0',
  tipo_giocatore enum('MASTER','PG','BLOCCATO') NOT NULL default 'PG',
  classe varchar(225) NOT NULL default 'Cittadino',
  px int(7) NOT NULL default '0',
  px_usati int(6) NOT NULL default '0',
  stanza varchar(30) NOT NULL default 'MAPPA',
  monete int(6) NOT NULL default '0',
  note text,
  exp enum('TRUE','FALSE') NOT NULL default 'FALSE',
  admin enum('TRUE','FALSE') NOT NULL default 'FALSE',
  img varchar(255) default NULL,
  abilita text,
  PRIMARY KEY  (id),
  FULLTEXT KEY classe (classe),
  FULLTEXT KEY classe_2 (classe)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `personaggi`
#

INSERT INTO personaggi VALUES (1, 'Itzamna', '', 'Drago', 'Nessuno', 'M', 0, 'PALACIA', 'ackmedpasha@tin.it', 'donchisciott@hotmail.com', 999, 10, 999, 999, 999, 999, 'Il "Grande serpente piumato" colui che tutto può, il creatore del mondo e dell\'universo.', 'Proveniente da un\'isola oltre il Grande Mare, è colui che ha portato la civiltà e la tecnologia nel mondo. E\' grazie a lui che tutto ciò che esiste è.', 1036, 1099572125, 'MASTER', '<font color="green"><b>Divinità</b></font>', 0, 0, 'MAPPA', 0, 'Dominio\r\n  Votanti: 7 (8) [Chath]\r\n    .org: XX\r\n    .net: XXXXX\r\n\r\nDa fare:\r\n  Armi\r\n  Magia\r\n\r\n  Dominio\r\n  Pubblicità...\r\n\r\nSono visibili cose simili alle stelle, ma esse sono anomalie della barriera.\r\nI raggi della luna passano attraverso la barriera (nessuno se l\'è saputo spiegare...)\r\nOggi (1099341723 [1099267200]) è luna nuova\r\n\r\nNotifiche aggiornamento Thread...\r\n============================================================\r\n* Uriel\r\n  contattato da Laraian, partecipante al gruppo degli\r\n  abbattitori: coloro che vogliono abbattere la barriera.\r\n\r\n* Lorelei\r\n  catturata da Teldaran onde farsi spiegare la società\r\n  attuale, con il proposito di vampirizzarla in futuro...\r\n  Nobile (dice che è nobile dentro, nel senso che continua\r\n  ad essere nobile come carattere)\r\n\r\n* Moltovon\r\n  senza dito medio della mano destra, con le labbra\r\n  spaccate e la lingua mozza... vuole fare il Master...', 'TRUE', 'TRUE', 'http://digilander.libero.it/donchisciott/index_file/image004.jpg', '1');
INSERT INTO personaggi VALUES (18, 'Chlorophyl', NULL, 'Elfo', 'Nessuno', 'M', 1099515407, 'deciso87', 'shandinand@hotmail.com', '', 10, 16, 12, 12, 12, 14, 'ASPETTO:Alto circa 1.59,ha un peso normale e un fisico snello e longilineo come tutti gli elfi. Presenta un volto pallido,affilato,occhi a mandorla color nocciola e liscissimi capelli castano chiaro lunghi fin poco sotto le spalle. Ha uno sguardo penetrante e all\'apparenza un\'espressione non troppo amichevole.\r\nOGGETTI:indossa un leggero giacco di maglia e con se porta come arma una spada lunga.\r\n', '', 7, 1099517815, 'PG', 'Cittadino', 0, 0, 'BOSCO', 0, NULL, 'FALSE', 'FALSE', '', NULL);
INSERT INTO personaggi VALUES (17, 'Vingilot', NULL, 'Umano', 'Nessuno', 'M', NULL, 'PALACIA', 'ackmedpasha@tin.it', 'donchisciott@hotmail.com', 20, 18, 16, 12, 14, 13, 'Alto 185 centimetri, veste un\'armatura di scaglie di drago blu, oggetto che spetta di diritto al rettore dell\'accademia dei guerrieri, usa due spade, una lunga ed una corta ed un arco lungo. Ha i capelli neri e gli occhi verdi, nonchè un portamento dovutamente fiero...', 'Nato da madre elfa e da padre elfo si è presto trovato a doversi guadagnare da solo il pane di cui cibarsi, specialmente dopo che entrambi i genitori perirono in circostanze misteriose...\r\nEgli è dunque entrato all\'accademia dei guerrieri come apprendista al servizio del rettore del tempo, ed in breve è giunto a prenderne il posto.', NULL, 0, 'PG', 'Rettore dell\'accademia dei guerrieri', 0, 0, 'MAPPA', 0, NULL, 'FALSE', 'FALSE', NULL, NULL);
INSERT INTO personaggi VALUES (4, 'Pacal', NULL, 'Umano', 'Mezzo celestiale', 'M', NULL, 'PALACIA', 'ackmedpasha@tin.it', 'donchisciott@hotmail.com', 25, 25, 25, 25, 35, 30, 'E\' di bassa statura, calvo; ha il cranio squadrato e il naso adunco; gli occhi di un nero intenso e la carnagione scura.\r\n<br>\r\nVeste di una tunica bianca, sulla quale risalta un grande medaglione d\'oro che porta attorno al collo.', 'E\' l\'unico sopravvissuto alla creazione della grande Barriera che oggi protegge la città dall\'esterno. Nessuno sa i motivi della sua longevità (pare che abbia circa 2500 anni civili).<br>\r\nE\' lui a detenere il potere nella città, ed è lui a designare le vittime sacrificali da offrire al grande dio Sole.', 30, 1099043253, 'PG', 'Gran sacerdote di Itzamna', 300, 0, 'BOSCO', 0, NULL, 'FALSE', 'FALSE', 'http://digilander.libero.it/donchisciott/index_file/image004.jpg', NULL);
INSERT INTO personaggi VALUES (5, 'Chath', NULL, 'Elfa', 'Nessuno', 'F', 1094492171, 'oliver86', 'edwardiv@email.it', 'ediv@hotmail.it', 13, 14, 13, 15, 12, 14, 'I capelli biondo-castano ricadono un po\' mossi sulle spalle, un ciuffo raccolto con uno spago dietro alla nuca... Di bell\'aspetto, è abbastanza bassa rispetto ai canoni elfici.\r\nDi carattere mutevole, spesso lunatica, ma in fondo in fondo è buona...', 'E\' giunta per errore in questa città, quando stava cercando tutt\'altro posto... Non riesce più a trovare l\'uscita, quindi è costretta all\'interno di queste mura.', 92, 1095614980, 'PG', 'Cittadina', 81, 0, 'MAPPA', 37, NULL, 'FALSE', 'FALSE', '', NULL);
INSERT INTO personaggi VALUES (7, 'Armida', NULL, 'Elfa', 'Nessuno', 'F', 1094646672, 'm3cggk43ad', 'skelly_la@libero.it', '', 8, 11, 7, 13, 14, 14, NULL, NULL, 3, 1097429773, 'PG', 'Cittadina', 72, 0, 'MAPPA', 0, NULL, 'FALSE', 'FALSE', NULL, NULL);
INSERT INTO personaggi VALUES (8, 'Hextor', NULL, 'Umano', 'Nessuno', 'M', 1094753458, 'ulpio', 'ashardalon1@aliceposta.it', 'vicesimaprimarapax@hotmail.com', 18, 8, 17, 10, 10, 6, NULL, NULL, 1, 1094753463, 'PG', 'Cittadino', 0, 0, 'MAPPA', 0, NULL, 'FALSE', 'FALSE', NULL, NULL);
INSERT INTO personaggi VALUES (9, 'Azigos', NULL, 'Umano', 'Nessuno', 'M', 1094835529, 'violetta', 'azigos@menzoberranzan.it', '', 10, 14, 14, 18, 10, 10, NULL, NULL, 1, 1094835547, 'PG', 'Cittadino', 0, 0, 'TEMPIO', 0, NULL, 'FALSE', 'FALSE', NULL, NULL);
INSERT INTO personaggi VALUES (10, 'Moltovon', NULL, 'Elfo', 'Nessuno', 'M', 1098652868, 'daniel', 'freddurst1@virgilio.it', 'danielbriatore@hotmail.com', 12, 11, 12, 13, 12, 11, 'possiede un arco e una normalissima spada d\'acciao\r\n', '', 110, 1099525171, 'PG', 'Scomparso', 0, 0, 'PRIVATA: Human grocery store', 0, NULL, 'FALSE', 'FALSE', '', NULL);
INSERT INTO personaggi VALUES (11, 'Lorelei', NULL, 'Umana', 'Nessuno', 'F', 1098966076, 'merlino', 'AlanaArlecchina@msn.com', 'AlanaArlecchina@msn.com', 10, 10, 10, 15, 14, 15, NULL, NULL, 82, 1099524471, 'PG', 'Scomparsa', 0, 0, 'PRIVATA: Human grocery store', 0, NULL, 'FALSE', 'FALSE', NULL, NULL);
INSERT INTO personaggi VALUES (12, 'Uriel', NULL, 'Umano', 'Nessuno', 'M', 1098982225, '666', 'artemis_entreri@tele2.it', 'gianluca_marani@hotmail.com', 15, 16, 16, 13, 13, 13, 'Alto all\'incira 1.80 con capelli neri lunghi fino alle spalle e con occhi verdi e di bell\'aspetto, al collo porta una collana con un simbolo a forma di leone con una croce sotto, è equipaggiato con un arco corto sulla schiena e al fianco sinistro c\'è una sciabola con incise delle rune e dal fodero di colore marrone e al fianco destro c\'è la faretra con le frecce, indossa anche un giacco di maglia di splendida fattura con sotto una camicia anch\'essa marrone. Di solito va in giro avvolto nel suo mantello che lo ricopre da testa ai piedi di colore che va dal verde al marrone', 'Era partito dalla sua patria (Isiyar) con un gruppo di suoi amici e approdato in questa città non si ricorda ne come ne quando è arrivato qui ora la sua vita è interemente votata alla ricerca dei suoi amici e di poter ritornare alla sua patria. La sua prima notte in questa città l\'ha passata insieme ad un elfa gentile e dolce di nome Laraian, scoprendo poi piu tardi che era la rettrice dell\'accademia di Magia', 118, 1099520531, 'PG', 'Straniero', 0, 0, 'BOSCO', 0, 'Elfa conosciuta in taverna = Laraian', 'FALSE', 'FALSE', 'http://www.arcano.org/image/royo_b/249.jpg', NULL);
INSERT INTO personaggi VALUES (13, 'Teldaran', NULL, 'Umano', 'Vampiro', 'M', NULL, 'PALACIA', 'ackmedpasha@tin.it', 'donchisciott@hotmail.com', 18, 16, 10, 14, 16, 19, 'Ha la carnagione molto pallida e gli occhi affossati, il volto è spigoloso e i capelli sono incolti, usa vestire di scuro, solitamente di nero. Egli potrebbe essere ovunque e non essere visto, come potrebbe essere visto ovunque pur non essendo in nessun luogo...', 'Nato in secoli che dai molti non sono neppure considerati reali, egli è vissuto a lungo, e vive tutt\'ora, nell\'ombra. Solo rare volte egli si mostra, di notte, a pochi sfortunati, donandogli la morte o punendoli con la vita...', 17, 1099524346, 'PG', 'Mai esistito', 0, 0, 'PRIVATA: Human grocery store', 0, '* Lorelei\r\n  Tortura Moltovon\r\n\r\n* Moltovon\r\n  E\' torturato da Lorelei', 'FALSE', 'FALSE', NULL, NULL);
INSERT INTO personaggi VALUES (16, 'Laraian', NULL, 'Elfa', 'Nessuno', 'F', NULL, 'PALACIA', 'ackmedpasha@tin.it', 'donchisciott@hotmail.com', 12, 18, 12, 18, 14, 15, 'E\' molto giovane, veste solitamente di un vestito verde, molto attillato, con una gonna giallastra. Due stivali verdi come il vestito completano il suo vestire. Ella ha occhi marroni e capelli castani, lunghi fino a metà coscia.', 'Lunga ed ignota ai più... ha cominciato a studiare sin da giovanissima alla Liber Arcane, guadagnondosi la stima ed il rispetto di tutti (o quasi) i suoi superiori, anche se si vocifera che a volte abbia utilizzato metodi poco ortodossi... in breve ha fatto strada, arrivando a detenere la massima carica di potere nella scuola di magia...', 23, 1099349924, 'PG', 'Rettrice della Liber Arcane', 0, 0, 'BOSCO', 0, NULL, 'FALSE', 'FALSE', '', NULL);
# --------------------------------------------------------

#
# Struttura della tabella `posts`
#

CREATE TABLE posts (
  id int(6) unsigned NOT NULL auto_increment,
  titolo varchar(100) NOT NULL default '',
  autore varchar(50) NOT NULL default '',
  thread int(3) NOT NULL default '0',
  data int(11) NOT NULL default '0',
  testo text NOT NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `posts`
#

INSERT INTO posts VALUES (1, '', 'Itzamna', 1, 1098294984, 'In questo forum verranno apposti (da giocatori e non) aggiornamenti sugli avvenimenti della città...');
INSERT INTO posts VALUES (2, '', 'Itzamna', 2, 1098295362, 'In questo forum verranno pubblicati i comunicati di amministratori e master alla popolazione');
INSERT INTO posts VALUES (3, '', 'Itzamna', 3, 1098295407, 'Questo forum è studiato per QUALSIASI tipo di discussione, ma verrà considerata rigorosamente GDR off...');
INSERT INTO posts VALUES (4, '', 'Itzamna', 4, 1098295436, 'Se avete proposte da fare su come migliorare la città fatelo qui');
INSERT INTO posts VALUES (5, '', 'Itzamna', 5, 1098295470, 'Se avete qualche reclamo o segnalazione (verso giocate o giocatori) parlatene qui.');
INSERT INTO posts VALUES (6, '', 'Itzamna', 6, 1099169430, 'La ragazza è scomparsa misteriosamente il giorno 1 Zac (12.19.11.13.1)');
INSERT INTO posts VALUES (7, '', 'Uriel', 7, 1099329403, 'Salve sono Uriel e sono approdato da poco in questa città perdendo i miei compagni di viaggio chiunque possa avere qualche notizia di umani con la mia stessa storia possono inserire un messaggio qui.');
INSERT INTO posts VALUES (8, '', 'Uriel', 8, 1099329789, 'Propporrei di mettere vicino al titolo del Thread il numero di messaggi che ci sono affissi cosi da facilitarne l\'uso so che il sito è da poco in funzione ma questo mi sembra una cosa utile\r\nCiao');
INSERT INTO posts VALUES (9, '', 'Itzamna', 8, 1099329869, 'Si, avevo già pensato alla cosa... appena ho voglia e tempo lo faccio ^_^\r\n\r\nCiao!');
INSERT INTO posts VALUES (10, '', 'Itzamna', 7, 1099415017, '[Un messaggio scritto rapidamente è apposto immediatamente sotto quello di Uriel]\r\n\r\nVi consiglio di farvi curare da qualche sacerdote di Itzamna\r\n\r\n[l foglio è firmato con una semplice S. in fondo a destra]');
INSERT INTO posts VALUES (11, '', 'Itzamna', 8, 1099508040, 'Beh, per ora ho inserito la possibilità di andare a capo senza inserire HTML (che è disattivato qui in bacheca) e la possibilità di mettere le azioni (tra parentesi quadre), come in chat...\r\n\r\n[Ciao!]');
INSERT INTO posts VALUES (12, '', 'Uriel', 8, 1099510211, '[un messaggio scritto molto bene è affisso subito dopo]\r\nBè mi sembra un\'ottima cosa continua cosi! ^_^');
INSERT INTO posts VALUES (13, '', 'Itzamna', 8, 1099510456, 'Ho aggiunto la stessa funzione anche per le Khoramail (quella per andare a capo) mentre quella delle azioni non credo sia necessaria...\r\n\r\nCiao!!!');
INSERT INTO posts VALUES (14, '', 'Itzamna', 8, 1099511806, 'Beh, questa direi che si commenta da sola\r\n\r\n^_*');
INSERT INTO posts VALUES (15, '', 'Uriel', 8, 1099518437, 'Ma brava la nostra Divinita o Master continua cosi ^_*');
INSERT INTO posts VALUES (16, '', 'Teldaran', 9, 1099523521, 'Attenzione, per problemi non ancora identificati, può capitare che a volte si blocchi l\'aggiornamento della chat...\r\nSi consiglia, in tal caso, di fare click su "Ferma chat" e, in seguito, su "Riavvia chat"...\r\nOppure potete tornare alla mappa e quindi alla locazione di prima...\r\n\r\nNella speranza di riuscire a scoprire il problema al più presto.\r\n\r\n[Ciao!]');
# --------------------------------------------------------

#
# Struttura della tabella `razze`
#

CREATE TABLE razze (
  razza varchar(30) NOT NULL default '',
  descrizione text,
  mod_livello tinyint(2) NOT NULL default '0',
  str char(2) NOT NULL default '0',
  des char(2) NOT NULL default '0',
  cst char(2) NOT NULL default '0',
  intl char(2) NOT NULL default '0',
  sag char(2) NOT NULL default '0',
  car char(2) NOT NULL default '0',
  PRIMARY KEY  (razza)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `razze`
#

INSERT INTO razze VALUES ('Elfo', 'Nonostante il loro innato amore per la natura alcuni di loro vivono all\'interno della città, anche se sono pochi. Gli elfi sono generalmente molto più agili e snelli degli umani, anche se sono meno robusti.\r\n\r\n        <br>\r\n        <br>\r\n        <center>\r\n        <h2> Caratteristiche di razza </h2>', 0, '0', '+2', '-2', '0', '0', '0');
INSERT INTO razze VALUES ('Nano', '        <br>\r\n        <br>\r\n        <center>\r\n        <h2> Caratteristiche di razza </h2>', 0, '0', '0', '+2', '0', '0', '-2');
INSERT INTO razze VALUES ('Umano', 'Gli umani sono la razza più diffusa a Khorakhan, sarà per la loro versatilità, sarà per la loro arroganza e sete di potere. Di fatto essi sono i più numerosi e, quindi, sono coloro che occupano la maggior parte delle cariche pubbliche nella città.', 0, '0', '0', '0', '0', '0', '0');
# --------------------------------------------------------

#
# Struttura della tabella `scambi`
#

CREATE TABLE scambi (
  id int(50) unsigned NOT NULL auto_increment,
  DATA int(11) default NULL,
  pagante varchar(30) default NULL,
  ricevente varchar(30) default NULL,
  motivo varchar(200) default NULL,
  quota int(6) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY id (id),
  FULLTEXT KEY motivo (motivo)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `scambi`
#

# --------------------------------------------------------

#
# Struttura della tabella `threads`
#

CREATE TABLE threads (
  id int(5) unsigned NOT NULL auto_increment,
  titolo varchar(100) NOT NULL default '',
  autore varchar(50) NOT NULL default '',
  data int(11) NOT NULL default '0',
  forum int(2) NOT NULL default '0',
  data_ultima int(11) NOT NULL default '0',
  chiuso int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

#
# Dump dei dati per la tabella `threads`
#

INSERT INTO threads VALUES (1, 'Uso del forum', 'Itzamna', 1098294984, 1, 1098294984, 1);
INSERT INTO threads VALUES (2, 'Uso del forum', 'Itzamna', 1098295362, 0, 1098295362, 1);
INSERT INTO threads VALUES (3, 'Uso del forum', 'Itzamna', 1098295407, 2, 1098295407, 1);
INSERT INTO threads VALUES (4, 'Uso del forum', 'Itzamna', 1098295436, 3, 1098295436, 1);
INSERT INTO threads VALUES (5, 'Uso del forum', 'Itzamna', 1098295470, 4, 1098295470, 1);
INSERT INTO threads VALUES (6, 'Lorelei', 'Itzamna', 1099169430, 1, 1099169430, 0);
INSERT INTO threads VALUES (7, 'Amici Scomparsi', 'Uriel', 1099329403, 1, 1099329403, 0);
INSERT INTO threads VALUES (8, 'Numeri', 'Uriel', 1099329789, 3, 1099329789, 0);
INSERT INTO threads VALUES (9, 'Arresto chat', 'Teldaran', 1099523521, 4, 1099523521, 0);

