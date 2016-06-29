-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Giu 29, 2016 alle 17:17
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_fabiostim`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `assistance_category`
--

CREATE TABLE IF NOT EXISTS `assistance_category` (
  `assistance_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `assistance_category_name` text NOT NULL,
  `assistance_category_logo` text NOT NULL,
  PRIMARY KEY (`assistance_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `assistance_category`
--

INSERT INTO `assistance_category` (`assistance_category_id`, `assistance_category_name`, `assistance_category_logo`) VALUES
(1, 'Gestione linea e servizi', 'assets/img/assistance_logo/1.png'),
(2, 'Controllo costi e pagamenti', 'assets/img/assistance_logo/2.png'),
(3, 'Supporto tecnico e configurazione', 'assets/img/assistance_logo/3.png'),
(4, 'Contenuti e Smart Life', 'assets/img/assistance_logo/4.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `assistance_service`
--

CREATE TABLE IF NOT EXISTS `assistance_service` (
  `assistance_service_id` int(1) NOT NULL AUTO_INCREMENT,
  `assistance_service_name` text NOT NULL,
  `ass_categoryID` int(11) NOT NULL,
  `assistance_service_description` text CHARACTER SET utf8 COLLATE utf8_roman_ci NOT NULL,
  `assistance_service_picture` text NOT NULL,
  `highlights` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`assistance_service_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dump dei dati per la tabella `assistance_service`
--

INSERT INTO `assistance_service` (`assistance_service_id`, `assistance_service_name`, `ass_categoryID`, `assistance_service_description`, `assistance_service_picture`, `highlights`) VALUES
(1, 'Configurare Mail su iPhone e iPad', 3, 'Per aggiungere il tuo account di posta Alice su iPhone, tocca dal menu l''icona Impostazioni. Scegli la voce "Posta, contatti, calendari", quindi "Aggiungi account...", dall''elenco dei provider vai su "Altro". Tocca l''opzione "Aggiungi account Mail", compila i campi con i tuoi dati della casella di posta Alice. Alla fine tocca il tasto "Avanti". L''iPhone e l''iPad nei passaggi successivi verificano automaticamente l''esistenza dell''account e il corretto funzionamento dei server di posta in entrata ed in uscita. Vedrai comparire un messaggio di successo appena l''operazione sarà conclusa.', 'http://fabiostim.altervista.org/assets/img/as/configuraremail.png', 1),
(2, 'Configurare Modem Fibra', 3, 'Problemi nel collegare il modem alla linea telefonica? Sei nel posto giusto.\n\nSe possiedi un altro modem, scollegalo ed utilizza esclusivamente il prodotto ed i cavi contenuti nella confezione.\nPosiziona il modem nei pressi di una presa telefonica a muro e di una presa elettrica.\nScollega eventuali telefoni dalla presa a muro.\nCollega il filtro ADSL alla presa telefonica a muro con il cavo di colore BIANCO.\nInserisci i connettori del cavo telefonico GRIGIO, uno nella porta ADSL/VDSL\ndel modem (porta di colore GRIGIO) e l''altro nella porta MODEM del filtro.\nInserisci i connettori del cavo telefonico NERO, uno nella porta PSTN del modem (porta di colore NERO) e l''altro nella porta TEL del filtro. Inserisci lo spinotto dell’alimentazione nella presa “Power” del modem. Inserisci la spina dell’alimentatore nella presa elettrica a muro.Posiziona su “I” l''interruttore di accensione posto sul retro del modem. Il gioco è fatto. Buon divertimento!', 'http://fabiostim.altervista.org/assets/img/as/confmodemfibra.jpg', 0),
(3, 'Furto e smarrimento telefonino e tablet', 1, 'In caso di furto o smarrimento del tuo telefonino dovrai tempestivamente bloccare la linea relativa alla SIM presente al suo interno.\nSe sei un cliente ricaricabile e sei già registrato alla sezione MyTIM Mobile puoi bloccare la linea direttamente online. Se non sei registrato alla sezione MyTIM Mobile o se sei un cliente in abbonamento dovrai contattare il Servizio Clienti 119. Previa identificazione e verifica della titolarità del numero (attraverso la comunicazione di nome, cognome, codice fiscale,...) verrà immediatamente bloccata la linea al traffico telefonico.\n\nSe desideri bloccare anche il telefonino rubato o smarrito cosicché non sia più possibile utilizzarlo sulla rete degli operatori mobili nazionali potrai inviarci un''autodichiarazione di furto o smarrimento attraverso l''apposito modulo di richiesta "Blocco IMEI" indicando il codice IMEI del telefonino da bloccare e allegando copia del documento di riconoscimento. ', 'http://fabiostim.altervista.org/assets/img/as/furtosmarrimento.jpg', 1),
(4, 'Verifica online il tuo traffico', 2, 'Accedendo alla sezione MyTIM Mobile del nostro sito è possibile verificare il dettaglio dei consumi relativi al traffico effettuato.\n\nSe hai una linea prepagata: è possibile verificare il dettaglio del traffico effettuato a partire dal giorno precedente e fino agli ultimi 2 mesi rispetto alla data di consultazione.\n \nSe hai sottoscritto un abbonamento: oltre a verificare il saldo dei consumi in corso di fatturazione, è possibile verificare online e scaricare il pdf del traffico telefonico effettuato entro 90 gg. dalla data di scadenza della fattura di riferimento.', 'http://fabiostim.altervista.org/assets/img/as/verificatraffico.jpg', 0),
(5, 'Dove posso vedere TIMvision', 4, 'TIMvision è disponibile su qualsiasi TV tramite apposito decoder, da Smart TV e Blu-Ray (Samsung e LG) compatibili, dal sito timvision.it,  da app per Tablet e Smartphone.\n\nTIMvision è un servizio disponibile per clienti Telecom Italia e TIM e per clienti di altri operatori di telefonia fissa.\n\nDa qualsiasi TV tramite apposito decoder, da Smart TV e Blu-ray (Samsung e LG) compatibili, dal sito timvision.it, da app TIMvision per pc connessi con chiavetta TIM (massimo12 pollici), da app per Tablet e Smartphone, da app per sistema operativo Windows 8.\n\nCon l''abbonamento TIMvision è possibile vedere tutti i titoli fino a 6 diversi dispositivi senza alcun costo aggiuntivo. Il traffico Internet per la visione dei titoli su rete TIM è gratuito, infatti la visione non erode il traffico dati del proprio abbonamento.', 'http://fabiostim.altervista.org/assets/img/as/timvision.jpg', 1),
(6, 'Cos''è TIMmusic', 4, 'TIMmusic è il servizio di streaming musicale di TIM che ti permette di ascoltare milioni di brani su Smartphone e Tablet SENZA CONSUMARE GIGA, o su PC.\nTIMmusic è la piattaforma di musica digitale di Telecomitalia dedicata a tutti i clienti che hanno uno smartphone/tablet TIM o una linea ADSL o Fibra  residenziale Telecom Italia o una chiavetta Internet TIM.\n\nCon TIMmusic puoi ascoltare milioni di brani in streaming senza limiti di tempo sul tuo smartphone e tablet o sul PC (clienti ADSL e Fibra Residenziale Telecom Italia o con chiavetta Internet TIM). Puoi  creare tue playlist personali o ascoltare quelle suggerite da dj e artisti famosi e condividere tutto sui principali social network. Il catalogo è sempre aggiornato con tutte le ultime uscite discografiche, spesso anche in anteprima esclusiva. E , se sei su mobile, non consumi GB perchè il traffico dati per l''ascolto di musica è incluso nel costo dell''abbonamento.', 'http://fabiostim.altervista.org/assets/img/as/timmusic.jpg', 1),
(7, 'Come funziona l''app mydlink Home', 4, 'La configurazione è facilissima!\n\nBasta semplicemente scaricare la app mydlink Home e la configurazione guidata ti aiuterà a far funzionare tutti i dispositivi presenti nel kit.\n\nScarica l''app mydlink gratuitamente. Aggiungi tutti i tuoi dispositivi di domotica. L''app ti guiderà passo dopo passo. Automatizza la tua casa impostando regole e programmi. Gestisci e guarda la tua casa direttamente dal tuo smartphone o tablet quando sei in giro.', 'http://fabiostim.altervista.org/assets/img/as/mydlinkhome.jpg', 0),
(8, 'Quali sono i metodi di pagamento abilitati per acquistare su Tim.it?', 2, 'Esistono diversi metodi di pagamento disponibili, abilitati a seconda del tipo di acquisto: carta di credito, Pay Pal, contrassegno alla consegna, credito residuo (solo opzioni tariffarie per la tua linea mobile), rateizzazione senza interessi su bolletta TIM della tua linea di casa.\nInoltre, è possibile abilitare e modificare l’addebito automatico della fattura TIM della linea di casa, su conto corrente bancario (RID Bancario).\n\nLe carte di credito accettate sono: Visa, Mastercard, American Express, Diners e Carta Aura.\n\nNon sono accettate carte di credito estere.\n\nPer le carte Visa Electron, devi verificare con la tua banca che la carta sia stata abilitata agli acquisti online.\nAcquistando con carta di credito l''importo ti sarà addebitato dopo l''effettiva consegna del prodotto senza alcun costo aggiuntivo.\n\nI dati della tua carta di credito sono inviati a Banca Sella attraverso un server sicuro che utilizza il protocollo SSL3 (Secure Socket Layer), con crittografia Triple Des a 128 bit, lo standard di sicurezza più elevato per l''invio di informazioni sensibili attraverso la Rete Internet, che protegge l''inoltro dei dati rendendoli non leggibili a terzi.\n\nBanca Sella  verifica la validità della carta di credito e consente la transazione.\nTelecom Italia S.p.A certifica il protocollo di sicurezza applicato a garanzia dei titolari di carte.', 'http://fabiostim.altervista.org/assets/img/as/metodipagamento.jpg', 0),
(9, 'Quali sono le spese di spedizione e i tempi di consegna su Tim.it?', 2, 'In caso di acquisto con recapito di prodotti, le spese di consegna sono gratuite.\nSolo alcuni prodotti per la tua linea fissa, richiedono un contributo di spedizione che ti sarà comunicato prima di aver effettuato l’ordine.\n\nI prodotti acquistati, vengono consegnati normalmente nell''arco di 3 -8 giorni lavorativi, a partire dalla ricezione dell’ordine da parte del nostro magazzino.\n\nI prodotti acquistati dal sito possono essere "regalati" e, quindi, inviati anche ad un''altra persona.\n\nLa consegna dei prodotti acquistati o noleggiati online è gratuita e viene effettuata da Corrieri su tutto il territorio italiano.\nI prodotti vengono recapitati dal lunedì al venerdì, esclusi i giorni festivi, indicativamente nelle seguenti fasce orarie: 8,30 - 12,30 e 14,00 - 18,00.\nIl tempo medio di consegna è tra i 3  e gli  8 giorni lavorativi, a partire dalla data di richiesta online e comunque non supera mai i tempi previsti dall''art. 54 del Decreto Legislativo 206/2005 (Codice del Consumo).\nAll''atto della consegna, ti consigliamo di verificare che l''imballo risulti integro e il prodotto risulti completo ed integro in tutte le sue parti.\n\nResta inteso che il termine di consegna si intenderà comunque rispettato, qualora il Corriere incaricato tenti la consegna entro il predetto termine, ma il tentativo non abbia buon fine per assenza del destinatario o rifiuto della consegna da parte dello stesso.\n\nAi fini della sicurezza della spedizione è fatto obbligo da parte del cliente/acquirente di esibire, in fase di consegna della merce, un documento che ne attesti l''identità. l''incaricato della spedizione è autorizzato, in caso di mancata esibizione, a non eseguire la consegna. \nIl cliente verrà avvisato della mancata consegna con la stessa modalità utilizzata in caso di assenza del destinatario.\nIl vettore incaricato della spedizione, in caso di destinatario assente effettuerà un secondo tentativo di consegna,  dopo di che restituirà al mittente la merce. \nIn caso di indirizzi errati e/o incompleti riscontrati al primo tentativo di consegna, il vettore si interfaccerà con Telecom Italia S.p.A per verificare i dati ricevuti e/o per integrare le informazioni in suo possesso, al fine di procedere ad un secondo tentativo di consegna. Qualora il secondo tentativo non andasse a buon fine, il vettore restituirà la spedizione al mittente.', 'http://fabiostim.altervista.org/assets/img/as/consegna.jpg', 0),
(10, 'LoSai e ChiamaOra di TIM', 1, 'Con i servizi LoSai e ChiamaOra di TIM sai sempre chi ti ha cercato e quando i tuoi amici sono contattabili! TIM ha unificato i servizi LoSai e ChiamaOra e li ha resi disponibili per tutti i clienti TIM ricaricabili e con abbonamento.\n\nLoSai di TIM, ti informa sulle chiamate ricevute mentre hai il telefonino spento, non raggiungibile, quando sei occupato in un''altra conversazione e negli altri casi in cui non è stato possibile contattarti.\nQuando torni disponibile riceverai un SMS di notifica, il cui mittente è il numero di chi ti ha cercato e nel testo è indicata la data e l''ora della chiamata ricevuta.\nSe il numero di chi ti ha cercato è salvato nella tua rubrica, vedrai direttamente il suo nome come mittente e potrai richiamare, o inviare un SMS, direttamente dopo aver letto il messaggio di notifica.\nCon LoSai di TIM ricevi un SMS per ogni chiamata persa, sia quando sei in Italia sia quando ti trovi all’Estero senza costi aggiuntivi rispetto al costo dell’abbonamento.\n\nChiamaOra di TIM, ti permette di sapere sempre quand’è il momento giusto per richiamare chi stai cercando.\nQuando la persona che stai chiamando al momento non può rispondere, perché ha il telefonino spento, fuori copertura o è occupata in un’altra conversazione, il servizio ChiamaOra di TIM ti consente di ricevere un SMS di avviso, oppure di prenotare la richiamata automatica, non appena la persona cercata torna contattabile.', 'http://fabiostim.altervista.org/assets/img/as/losaichiamaora.jpg', 0),
(11, 'All''estero con TIM', 1, 'Usare il telefonino all''estero è facilissimo!\nTutti i clienti TIM con una linea ricaricabile e con un abbonamento sono automaticamente abilitati a chiamare, ricevere telefonate, inviare e ricevere SMS dall''estero.\nEd è facile come in Italia!', 'http://fabiostim.altervista.org/assets/img/as/callingabroad.jpg', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `slID` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dump dei dati per la tabella `faq`
--

INSERT INTO `faq` (`slID`, `question`, `answer`, `id`) VALUES
(1, 'Cosa posso vedere con il decoder TIMvision?', 'Se sei abbonato, tutti i contenuti della sezione Abbonamento: il grande Cinema, le stagioni complete delle migliori Serie TV, i Cartoni Animati e i programmi per bambini e ragazzi più amati, e tanto altro ancora, come Documentari, Concerti. E anche i programmi dell''ultima settimana trasmessi su La7 e RAI in “Ultimi 7 giorni TV” e l''archivio dei programmi La7 in “Programmi TV”.', 3),
(1, 'Come posso avere un decoder?', 'Se scegli l''offerta TIM SMART, il decoder è disponibile a noleggio al costo di 2€/mese.\nIn alternativa, puoi acquistarlo qui Se sei un cliente TIM fisso, ma non hai l''offerta TIM Smart, puoi scegliere l''offerta “TIMvision con decoder”.', 4),
(1, 'Perché è necessario registrarsi e come posso farlo?', 'Soltanto registrandoti puoi attivare l''Abbonamento o acquistare i singoli titoli del Videostore e ricevere la Guida Tv che settimanalmente ti tiene aggiornato sulle novità del nostro catalogo. Puoi registrarti da decoder creando un account TIMvision (email e password) dalla sezione Profilo/Modifica Account o utilizzare l''account @alice.it o @tim.it suggerito. Il tuo account ti permette di utilizzare il servizio, senza costi aggiuntivi, anche su altri dispositivi come smartphone, tablet, Smart TV, etc.', 5),
(1, 'Posso vedere contenuti in lingua originale?', 'Si, puoi vederli se è presente nella scheda di dettaglio del contenuto, il simbolo MULTIAUDIO. \nFai partire il contenuto e premi quindi il tasto INFO. Spostati con le frecce del telecomando e seleziona la lingua tra quelle disponibili.', 6),
(2, 'Quali clienti possono attivare questa Promo?', 'Tutti i clienti TIM ricaricabili, in possesso di un’offerta dati attiva e di uno smartphone compatibile con l''APP TIMmusic.', 7),
(2, 'Quali clienti non possono attivare la Promo?', 'I clienti già in possesso di un''offerta TIM Young o TIM Young&Music per i quali il servizio è già INCLUSO.', 8),
(2, 'Come faccio a capire se l’offerta TIMmusic è attiva?', 'All''attivazione dell’abbonamento in promozione, entro 48 ore dalla richiesta, riceverai un SMS che conferma l''avvenuta attivazione e riporta le condizioni.\nPotrai poi: accedere alla sezione MyTIM del sito tim.it, inviare un SMS al numero 40916 con messaggio INFO TIMMUSIC PROMO 3 MESI, accedere alla sezione “Info” direttamente dall''APP TIMmusic, chiamare il Servizio Clienti 199, chiamare il numero 40916 nella sezione “Offerte Attive”', 9),
(2, 'Dove posso scaricare l’applicazione per usufruire del servizio?', 'Direttamente dallo store del tuo smartphone.\r\n', 10),
(8, 'Quali sono gli Smartphone compatibili con i servizi NFC?', 'TIM Wallet è compatibile con tutti gli smartphone NFC SIM BASED, terminali in grado di leggere le informazioni memorizzate sulla SIM con la sicurezza richiesta da banche e circuiti di pagamento. La lista degli smartphone NFC, testati e abilitati, è in continua evoluzione. L''abilitazione di altri telefoni necessita di opportune verifiche di sicurezza non solo da parte di TIM ma anche da parte dei nostri partner.', 11),
(8, 'Cosa vuol dire NFC?', 'NFC (Near Field Communication) è una tecnologia che fornisce connettività wireless a corto raggio. L''NFC consente il “colloquio” in modo sicuro tra il telefono ed un POS abilitato durante un''operazione di pagamento contactless, ovvero quelle transazioni che avvengono semplicemente avvicinando lo strumento di pagamento (una carta o, come nel nostro caso, un telefono) al POS, senza necessità di inserimento all''interno del lettore. La tecnologia NFC garantisce transazioni criptate secondo i requisiti di sicurezza di banche e circuiti di pagamento. I dati della tua carta di credito sono memorizzati in modo sicuro sulla tua SIM. Questa particolare modalità di pagamento viene solitamente definita Mobile Proximity Payment.', 12),
(8, 'Ho dimenticato/smarrito il PIN del TIM Wallet o il PIN della Carta di Pagamento. Cosa devo fare?', 'Nel caso avessi dimenticato/smarrito il PIN del TIM Wallet (richiesto opzionalmente all''apertura del TIM Wallet) e non riuscissi a recuperarlo con la domanda/risposta segrete, ti invitiamo a richiedere il reset del PIN sul sito alla sezione moduli oppure, se sei un cliente Business, contatta i consueti canali di accesso al Servizio Clienti Business.\nNel caso avessi dimenticato/smarrito il PIN della carta di pagamento o le credenziali di accesso all''app della Banca, ti invitiamo a contattare il servizio clienti della tua Banca.', 13),
(9, 'Cosa trovo nella vetrina servizi trasporti?', 'Nella vetrina servizi trasporti puoi acquistare il biglietto dell''autobus e della metro in numerose città italiane e pagare con il tuo credito telefonico.', 14),
(9, 'Quanto costa acquistare un biglietto?', 'L''utilizzo di TIM Wallet comporta il consumo di traffico Internet, per il quale si applica il tuo piano tariffario. Ti verranno inoltre addebitati il costo del biglietto più il costo dell''SMS di richiesta (19,90 €cent IVA inclusa). Il costo totale verrà scalato dal tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento).', 15),
(9, 'Che tipo di biglietti è possibile acquistare?', 'È possibile acquistare i biglietti dei trasporti pubblici per le tratte urbane ed extraurbane in numerose città italiane.', 16),
(9, 'Come faccio ad acquistare un biglietto?', 'Per acquistare un biglietto accedi alla vetrina servizi trasporti, seleziona la città desiderata, scegli il biglietto elettronico e clicca “Acquista”. Riceverai un SMS di riepilogo, il biglietto sarà valido da quel momento senza necessità di ulteriori convalide.', 17),
(9, 'Dove trovo il biglietto che ho acquistato?', 'Troverai il biglietto elettronico direttamente nel TIM Wallet nel tuo portafogli, puoi rinnovarlo quando scade. In caso di controllo, mostra l''SMS di conferma che hai ricevuto.', 18),
(10, 'Come si aggiunge una carta fedeltà?', 'Accedi alla Vetrina Servizi e inquadra la carta nel riquadro. Il riconoscimento della carta è automatico nella maggior parte dei casi. Se la carta non è riconosciuta tra quelle presenti puoi aggiungerla utilizzando la fotocamera del tuo smartphone.\nSegui le istruzioni che ti vengono proposte e seleziona il tipo di codice riportato sulla carta. Inquadra il codice per il riconoscimento automatico. Il codice può essere inserito anche a mano.', 19),
(10, 'Quale codice della carta devo inserire?', 'Il codice identificativo della carta può essere: codice a barre, QRCode o codice numerico.', 20),
(10, 'Posso cancellare una carta fedeltà?', 'Puoi cancellare una carta direttamente dalla sezione Carte Fedeltà del tuo portafogli. Tieni premuta la carta che vuoi eliminare per alcuni secondi, compare l''icona di un cestino sulla barra in alto, clicca sul cestino.', 21),
(10, 'Dove vengono memorizzate le carte?', 'Tutte le carte sono memorizzate sul tuo smartphone, puoi mostrarle nel punto vendita anche senza avere connessione Internet.', 22);

-- --------------------------------------------------------

--
-- Struttura della tabella `innovation_articles`
--

CREATE TABLE IF NOT EXISTS `innovation_articles` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `text` text NOT NULL,
  `picture` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dump dei dati per la tabella `innovation_articles`
--

INSERT INTO `innovation_articles` (`id`, `name`, `text`, `picture`) VALUES
(1, 'La nuova TIM', 'All''innovazione, forza motrice del futuro,\ndedichiamo impegno e risorse. \n\nEvolversi significa migliorare per essere in grado di rispondere a nuove sfide. \nPer accogliere il futuro e farne parte TIM si rinnova anche nel marchio. \nFin dalla sua nascita, oltre 20 anni fa, il suo logo è stato un segno di modernità e dinamismo: una promessa di progetti e di orizzonti nuovi. Oggi continua a essere simbolo di cambiamento, fondendo le competenze di due realtà: il trigramma rosso di Telecom Italia, l''intenso blu del marchio TIM e una T a unire questi due mondi. La sintesi di una grande eredità e di un deciso orientamento al domani. ', ''),
(3, 'I luoghi della ricerca di TIM', 'L''innovazione ha dei luoghi e delle persone. I luoghi della ricerca di Telecom Italia sono Torino, Napoli, Milano, Trento, Venezia, ed anche dentro gli atenei di Pisa, Catania ed altre città. Vi lavorano oltre 1.400 persone.Nel 2014 abbiamo festeggiato i 50 anni dalla nascita di CSELT, il Centro Studi e Laboratori di Telecomunicazioni fondato a Torino nel 1964 e divenuto Telecom Italia Lab nel 2001.', 'http://fabiostim.altervista.org/assets/img/innovazione/luoghi.jpg'),
(4, 'La Digital Smart City di Expo 2015', 'La città di Milano ha vissuto per sei mesi un''esperienza unica grazie ad Expo 2015. Oggi rappresenta uno degli esempi nazionali più importanti in tema di digitalizzazione e innovazione.\n\nLa Digital Smart City, realizzata all''interno del sito espositivo con il contributo di TIM in qualità di Official Global Partner della manifestazione, propone un modello tecnologico della città del futuro, le cui potenzialità sono estremamente tangibili: massima copertura della rete 4G, totem multimediali per la gestione dei servizi, applicazioni innovative per il turismo smart, broadcasting di contenuti video ad alta definizione su rete LTE, piattaforme di gestione dei big data e molto altro ancora.\n\nMilioni di persone hanno già sperimentato la città del Futuro ad Expo. Lo straordinario successo della prima cloud digital smart city italiana è il frutto dell''incontro fra la capacità progettuale e organizzativa di TIM e le soluzioni tecnologiche di Ericsson. TIM ha realizzato quello che rappresenta il cuore della Smart City di Expo2015: la piattaforma tecnologica alla base della Centrale di comando e controllo (EC3), una sorta di “cabina di regia” che, attraverso tecnologie avanzate e l''analisi in tempo reale di una grande mole di dati (Big Data), monitora e gestisce tutti i processi operativi, logistici e di pubblica sicurezza.', 'http://fabiostim.altervista.org/assets/img/innovazione/expo.jpg'),
(7, 'La rete', 'Si è parlato molto dell''Agenda Digitale Italiana negli ultimi mesi. Si tratta di una delle sette iniziative faro della Strategia Europea 2020, il documento che delinea strategie e obiettivi per la crescita economica nell''area Euro entro i prossimi cinque anni. Nella penisola, la Presidenza del Consiglio, il Ministero dello Sviluppo Economico, l''Agenzia per l’Italia Digitale (AgID) e l''Agenzia per la Coesione hanno fissato due obiettivi nazionali: il Piano nazionale Banda Ultra Larga e la Crescita Digitale. Per crescere a livello continentale, la strategia digitale del nostro Paese deve innanzitutto avvicinarsi alle medie europee in materia di velocità di connessione e utilizzo della Rete Internet. Questo significa innanzitutto riuscire a diffondere l''utilizzo della banda larga. Complessivamente, l''Italia figura nel gruppo dei Paesi Catching up – in compagnia di Spagna, Croazia, Slovenia, Romania e Lettonia – tutti sotto la media rispetto agli obiettivi dell''Agenda Digitale Europea, ma che stanno attuando politiche per avvicinarsi alle nazioni virtuose.Se guardiamo al futuro, le sfide non mancano. ', 'http://fabiostim.altervista.org/assets/img/innovazione/rete.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `linkedAS`
--

CREATE TABLE IF NOT EXISTS `linkedAS` (
  `product` int(11) NOT NULL,
  `assistance` int(11) NOT NULL,
  PRIMARY KEY (`product`,`assistance`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `linkedAS`
--

INSERT INTO `linkedAS` (`product`, `assistance`) VALUES
(1, 3),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(2, 1),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(3, 1),
(3, 3),
(3, 4),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 11),
(4, 3),
(4, 4),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(5, 4),
(5, 8),
(5, 9),
(6, 5),
(6, 8),
(6, 9),
(7, 1),
(7, 3),
(7, 4),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(8, 3),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 11),
(9, 2),
(9, 8),
(9, 9),
(10, 7),
(10, 8),
(10, 9),
(11, 6),
(11, 8),
(11, 9),
(12, 3),
(12, 4),
(12, 6),
(12, 7),
(12, 8),
(12, 9),
(12, 10),
(12, 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `linkedSL`
--

CREATE TABLE IF NOT EXISTS `linkedSL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) NOT NULL,
  `sl` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dump dei dati per la tabella `linkedSL`
--

INSERT INTO `linkedSL` (`id`, `product`, `sl`) VALUES
(1, 10, 5),
(2, 6, 1),
(3, 1, 8),
(4, 11, 2),
(5, 1, 2),
(6, 2, 2),
(7, 3, 2),
(8, 4, 2),
(9, 7, 2),
(10, 8, 2),
(11, 12, 2),
(12, 1, 3),
(13, 2, 3),
(14, 3, 3),
(15, 4, 3),
(16, 7, 3),
(17, 12, 3),
(18, 1, 4),
(19, 2, 4),
(20, 3, 4),
(21, 4, 4),
(22, 7, 4),
(23, 12, 4),
(24, 1, 5),
(25, 2, 5),
(26, 4, 5),
(27, 7, 5),
(28, 12, 5),
(29, 1, 7),
(30, 2, 7),
(31, 4, 7),
(32, 7, 7),
(33, 12, 7),
(35, 2, 8),
(36, 4, 8),
(37, 7, 8),
(38, 12, 8),
(39, 1, 9),
(40, 2, 9),
(41, 4, 9),
(42, 7, 9),
(43, 12, 9),
(44, 1, 10),
(45, 2, 10),
(46, 4, 10),
(47, 7, 10),
(48, 12, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `productID` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `categoryID` int(1) NOT NULL,
  `photo_preview` text NOT NULL,
  `price` text CHARACTER SET utf8 NOT NULL,
  `miniphoto1` text NOT NULL,
  `miniphoto2` text NOT NULL,
  `miniphoto3` text NOT NULL,
  `miniphoto4` text NOT NULL,
  `caratt1` text NOT NULL,
  `caratt2` text NOT NULL,
  `caratt3` text NOT NULL,
  `caratt4` text NOT NULL,
  `coloridisp1` text,
  `coloridisp2` text,
  `coloridisp3` text,
  `coloridisp4` text,
  `description` text NOT NULL,
  `techspec` text NOT NULL,
  `promo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`productID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dump dei dati per la tabella `product`
--

INSERT INTO `product` (`productID`, `name`, `categoryID`, `photo_preview`, `price`, `miniphoto1`, `miniphoto2`, `miniphoto3`, `miniphoto4`, `caratt1`, `caratt2`, `caratt3`, `caratt4`, `coloridisp1`, `coloridisp2`, `coloridisp3`, `coloridisp4`, `description`, `techspec`, `promo`) VALUES
(1, 'Huawei P9', 1, 'http://fabiostim.altervista.org/assets/img/product/huawei_P9.png', '599,90 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_huawei1.png', 'http://fabiostim.altervista.org/assets/img/product/mini_huawei2.png', 'http://fabiostim.altervista.org/assets/img/product/mini_huawei3.png', 'http://fabiostim.altervista.org/assets/img/product/mini_huawei4.png', 'Sistema Operativo Android 6.0', 'Display IPS Full HD da 5.2''''', 'Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl', 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 'http://fabiostim.altervista.org/assets/img/colori_device/grigio_scuro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/grigio_chiaro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'PREMIUM. ELEGANT. STYLISH.\r\nHuawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d''arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed è disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.\r\n\r\n\r\nDISPLAY LUMINOSO E DAI COLORI INTENSI\r\n\r\nCon una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2" porta alla scoperta di un mondo ricco di colori intensi e ancora più naturali.\r\n\r\nUN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA\r\n\r\nLa collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosità e nitidezza per foto e video sensazionali.\r\n\r\nINNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA\r\n\r\nHuawei P9 è in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantità di luce, combinando al meglio la qualità del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.', 'Sistema Operativo Android 6.0, Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz),\r\nDisplay IPS Full HD da 5.2'''',\r\nDoppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl;\r\n\r\nTecnologia: Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz,\r\n\r\nConnettivita: 4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC, \r\n\r\nGPS: GPS Integrato\r\n\r\nDisplay: Display IPS Full HD da 5.2''''\r\n\r\nFotocamera: Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4\r\n\r\nMemoria Interna: 32GB\r\n\r\nProcessore: Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)\r\n\r\nIn dotazione: Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida\r\n\r\nDimensioni: 145 x 70,9 x 6,95 mm\r\n\r\nPeso: 144 grammi\r\n\r\nAutonomia: Stand-by fino a 566 ore - Conversazione fino a 1980 min', 0),
(2, 'Apple iPhone 5s', 1, 'http://fabiostim.altervista.org/assets/img/product/iphone5s.png', '429,90 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_iphone5s1.png', 'http://fabiostim.altervista.org/assets/img/product/mini_iphone5s2.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_iphone5s3.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_iphone5s4.jpg', 'Sistema Operativo iOS 8', 'Display Retina da 4"\r\n', 'Chip A7 con coprocessore di movimento M7\r\n', 'Fotocamera iSight da 8 megapixel', 'http://fabiostim.altervista.org/assets/img/colori_device/grigio_chiaro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/nero.png', 'http://fabiostim.altervista.org/assets/img/colori_device/oro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'Chip A7 con architettura a 64 bit, sensore di impronte digitali Touch ID,nuova fotocamera iSight da 8 megapixel e nuova videocamera FaceTime HD,reti 4G LTE1 ultraveloci, iOS 8 e iCloud: iPhone 5s è davvero all''avanguardia.Eppure è sottile e leggero come sempre.', 'Sistema Operativo iOS 8, Display Retina da 4", Chip A7 con coprocessore di movimento M7, Fotocamera iSight da 8 megapixel;\r\n\r\n\r\n\r\nDisplay : Retina da 4", \r\n\r\nProcessore: Chip A7 con coprocessore di movimento M7,\r\n\r\nSensori: impronte digitali Touch ID,\r\n\r\nFotocamera: iSight da 8 megapixel con flash True Tone - Registrazione video HD a 1080p - Videocamera FaceTime,\r\n\r\nConnettivita: Reti 4G LTE ultraveloci1,\r\n\r\nApplicazioni: Oltre 900.000 app sull''App Store2,\r\n\r\nSistemaOperativo: iOS 8: l''OS mobile più evoluto al mondo,\r\n\r\nCloud: iCloud (I tuoi contenuti, su tutti i tuoi dispositivi)', 0),
(3, 'Apple iPad Pro', 2, 'http://fabiostim.altervista.org/assets/img/product/ipad_pro.png', '1019,90 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_ipad1.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_ipad2.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_ipad3.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_ipad4.jpg', 'Display Retina da 9,7" (diagonale) con True Tone e rivestimento antiriflesso', 'Chip A9 con architettura a 64 bit di livello desktop\r\n', 'Sensore di impronte digitali Touch ID\r\n', 'Fotocamera iSight da 12MP con video a 4K\r\n', 'http://fabiostim.altervista.org/assets/img/colori_device/nero.png', 'http://fabiostim.altervista.org/assets/img/colori_device/grigio_chiaro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'iPad Pro 9,7” è un concentrato mai visto di portatilità e prestazioni. È spesso solo 6,1 millimetri e pesa meno di 500 grammi, ma ha il display Retina più luminoso ed evoluto di sempre: con i suoi sensori True Tone si adegua alla luce ambientale, così gli occhi non si affaticano. In più hai il potente chip A9X a 64 bit di livello desktop, audio a quattro altoparlanti, fotocamera iSight e videocamera FaceTime HD, sensore di impronte digitali Touch ID, connessioni ultraveloci su Wi-Fi e 4G LTE e fino a 10 ore di autonomia. Advanced, ancora di più? Aggiungi l''ultraprecisa Apple Pencil e la Smart Keyboard, e iPad Pro ti diventerà ancora più indispensabile.', 'Sistema Operativo iOS 9\r\nDisplay Retina da 9,7” (diagonale) con True Tone e rivestimento antiriflesso\r\nChip A9X di terza generazione con architettura a 64 bit di livello desktop\r\nSensore di impronte digitali Touch ID\r\nFotocamera iSight da 12MP con video a 4K\r\n\r\nDisplay: Retina Display 9,7” (diagonale) con True Tone e rivestimento antiriflesso\r\n\r\nSensori: impronte digitali Touch ID\r\n\r\nProcessore: Chip A9X di terza generazione con architettura a 64 bit di livello desktop\r\n\r\nFotocamera: iSight da 12MP con video a 4K\r\n\r\nVideocamera: FaceTime HD (foto da 5MP)\r\n\r\nConnettivita: 4G LTE Advanced, Wi-Fi 802.11ac con tecnologia MIMO\r\n\r\nBatteria: Fino a 10 ore di autonomia', 0),
(4, 'LG G4', 1, 'http://fabiostim.altervista.org/assets/img/product/lg_g4.png', '19,44 euro/mese', 'http://fabiostim.altervista.org/assets/img/product/mini_lgg41.png', 'http://fabiostim.altervista.org/assets/img/product/mini_lgg42.png', 'http://fabiostim.altervista.org/assets/img/product/mini_lgg43.png', 'http://fabiostim.altervista.org/assets/img/product/mini_lgg44.png', '4GPLUS\r\n', 'Sistema Operativo Android 5.1\r\n', 'Display 5.5"\r\n', 'Processore Snapdragon 808 HexaCore 1.8 Ghz', 'http://fabiostim.altervista.org/assets/img/colori_device/marrone.png', 'http://fabiostim.altervista.org/assets/img/colori_device/nero.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'LG G4 integra lo stato dell''arte della tecnologia per avere colori perfetti. Il sensore dello spettro di colore usa la tecnologia a infrarossi per analizzare e misurare tutta la luce visibile nella scena prima di effettuare lo scatto. In questo modo ti assicura fotografie con colori naturali e realistici anche quando c''è poca luce. Il design ad arco di G4 è più ergonomico e maneggevole, studiato per stare nelle tue mani con più naturalezza.\n\nIspirato dalla tradizione artigianale, il cover posteriore di LG G4 gode di tutta la cura che hai sempre desiderato. Il rivestimento in vera pelle ottenuta da concia al vegetale e l''esclusiva impunturatura lo rende ancora più elegante e pregiato.In alternativa alle versioni in pelle, puoi scegliere il look moderno della variante Metallic Skin Scura o Ceramic White. Grazie alla modalità manuale di G4, puoi impostare la fotocamera per realizzare scatti artistici, catturando ad esempio i fasci di luce in movimento.\n\nPerfetto mix fra stile e tecnologia, LG G4 cattura le tue emozioni per riviverle alla grande quando vuoi.', 'Sistema Operativo Android 5.1,\r\nProcessore HexaCore 1.8 Ghz;\r\n\r\nTecnologia: Abilitato tecnologia 4G cat6/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100, \r\n\r\nConnettivita: Wi-Fi - Bluetooth - Micro USB - NFC, \r\n\r\nGPS: Integrato,\r\n\r\nDisplay: 5.5” 16 Milioni colori Touch,\r\n\r\nFotocamera: 16 Mpixel/Flash,\r\n\r\nMemoria: Interna 32GB - Slot Memory Card Micro SD fino a 128GB,\r\n\r\nProcessore: HexaCore 1.8 Ghz,\r\n\r\nVideo: Video Recorder&Playback,\r\n\r\nMusica: MP3 Player - Radio FM, \r\n\r\nIn dotazione: Auricolare stereo - Caricabatteria - Cavo dati - Guida di riferimento rapido,\r\n\r\nDimensioni: 148,9 x 76,1 x 9,8 mm,\r\nPeso: 159 grammi,\r\n\r\nAutonomia: Stand-by fino a 100 ore - Conversazione fino a 240 min', 1),
(5, 'Chiavetta TIM 42.2', 3, 'http://fabiostim.altervista.org/assets/img/product/chiavetta_internet.jpg', '29,90 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_chiavetta1.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_chiavetta2.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_chiavetta3.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_chiavetta4.jpg', '1 Chiavetta 3G Wi-Fi\r\n', '1 mese di INTERNET fino a 42 MEGA', 'Peso 22 grammi', 'Compatibile con tutti i principali sistemi operativi', 'http://fabiostim.altervista.org/assets/img/colori_device/bianco.png', 'http://fabiostim.altervista.org/assets/img/colori_device/blu.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'La Chiavetta TIM 42.2 è un modem usb dalle prestazioni superiori, con tecnologia HSPA+, dotata di Slot Memory Card per Micro SD, supporta navigazione fino a 42.2 Mbps in ricezione ed è compatibile con, VISTA, Windows 7, Windows 8.1, Mac OS X.', 'Tecnologia: HSPA+/HSDPA/HSUPA/UMTS/EDGE/GPRS,\r\n\r\nFrequenze: DC-HSPA+/HSPA+/HSUPA/HSDPA/UMTS UMTS900/2100MHz EGPRS/GSM 850/900/1800/1900MHz,\r\n\r\nDimensioni: 25x86x9 mm,\r\n\r\nPeso: 22 grammi,\r\n\r\nRequisiti di sistema: Windows XP(32 bit), Vista (32/64 bit), Windows7 (32/64-bit), Windows 8.1 (32/64 bit) Modalità Desktop, 10.6.x,10.7.x, 10.8.x, 10.9.x,\r\n\r\nIn dotazione: Guida Rapida - TIM Card con 5€ (IVA incl.) di traffico prepagato a titolo promozionale. Il costo di attivazione della TIM Card, pari a 5€ non viene applicato. La TIM Card non è inclusa nel package TIM Business. Il prodotto non può essere venduto separatamente dalla TIM Card', 0),
(6, 'Samsung Smart TV 50"', 4, 'http://fabiostim.altervista.org/assets/img/product/smarttv.jpg', '699,99 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_smarttv1.jpeg', 'http://fabiostim.altervista.org/assets/img/product/mini_smarttv2.jpeg', 'http://fabiostim.altervista.org/assets/img/product/mini_smarttv3.jpeg', 'http://fabiostim.altervista.org/assets/img/product/mini_smarttv4.jpeg', 'Modello 50JU6400 - 50“\r\n', 'Ultra HD - 4K 3840 x 2160\r\n', 'Soundbar HW-J250 inclusa\r\n', 'TIMvision incluso', 'http://fabiostim.altervista.org/assets/img/colori_device/nero.png', 'http://fabiostim.altervista.org/assets/img/colori_device/grigio_scuro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'Scegli tra circa 400 applicazioni e personalizza il tuo Smart TV. Scarica le applicazioni che più ti intessano: oltre alle centinaia di applicazioni internazionali, hai più di 50 apps italiane e oltre 45 esclusive, disponibili solo sui TV Samsung. Videochiama i tuoi amici gratis e in alta definizione; acquista e noleggia film e serie TV scegliendo tra le migliaia di proposte offerte da numerose applicazioni; sfoglia i tuoi quotidiani gratuitamente; ascolta musica, video musicali e concerti live, fai divertire i tuoi bambini con le fiabe interattive e sfida i tuoi amici con i giochi più divertenti. E il mondo delle applicazioni è in continua evoluzione. Inoltre, il web browser integrato ti permette di visitare i tuoi siti preferiti direttamente dal TV.', 'Consumi (modalità stand-by): 0,3W,\r\nQuantità porte USB 2.0:	3,\r\nAltoparlanti incorporati: Si\r\nQuantità porte Ethernet LAN (RJ-45): 1\r\nDimensioni schermo: 127 cm (50"),\r\nPorta DVI: No,\r\nConsumer Electronics Control (CEC): Anynet+,\r\nLarghezza imballo: 136,2 cm,\r\nManuale dell''utente: Si,\r\nElectronic Programme Guide (EPG): Si\r\nTecnologie Dolby: Dolby Digital Plus, DTS, DTS Premium Sound 5.1,\r\nInterruttore integrato:	Si,\r\nProfondità: 6,32 cm,\r\nLarghezza: 112,89 cm,\r\nCollegamento ethernet LAN: Si,\r\nLarghezza (con supporto): 112,89 cm', 0),
(7, 'Apple iPhone SE', 1, 'http://fabiostim.altervista.org/assets/img/product/iphoneSE.jpg', '509,90 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_iphoneSE1.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_iphoneSE2.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_iphoneSE3.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_iphoneSE4.jpg', 'Display Retina da 4" con risoluzione di 1136x640 pixel" HD\r\n', 'Chip A9 con architettura a 64 bit\r\n', 'Fotocamera iSight da 12MP con Focus Pixels e flash True Tone\r\n', 'Sensore di impronte digitali Touch ID', 'http://fabiostim.altervista.org/assets/img/colori_device/nero.png', 'http://fabiostim.altervista.org/assets/img/colori_device/grigio_chiaro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/oro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/pesca.png', 'Il telefono da 4" più potente di sempre. iPhone SE riprende un design compatto di grande successo aggiungendovi due fotocamere evolute e una potenza di elaborazione incredibile.Disegnato per stare comodamente in mano e risultare piacevole al tatto, grazie alla finitura satinata del guscio in alluminio microsabbiato.\n\niPhone SE ha un display Retina da 4'''', chip A9 con archittetura a 64 bit di livello desktop, sensore di impronte digitali Touch ID, fotocamera iSight da 12MP, videocamera FaceTime HD con Retina flash, Live Photos e connessioni Wi-Fi e 4G veloci. E ancora, iOS 9 e iCloud.', 'Display Retina da 4" con risoluzione di 1136x640 pixel" HD,\r\nChip A9 con architettura a 64 bit,\r\nFotocamera iSight da 12MP con Focus Pixels e flash True Tone,\r\nRegistrazione video 4K a 30fps, moviola a 240 fps,\r\nVideocamera FaceTime HD (foto da 1,2 MP) con Retina Flash,\r\nSensore di impronte digitali Touch ID,\r\n4G LTE e Wi Fi 802.11a/b/g/n/ac,\r\niOS 9 e iCloud;\r\n\r\nDisplay: Retina Multi-Touch widescreen retroilluminato LED da 4" (diagonale) 1136x640 pixel a 326 ppi, \r\n\r\nProcessore: Chip A9 con architettura a 64 bit, Coprocessore di movimento M9 integrato,\r\n\r\nFotocamera: Fotocamera iSight da 12 megapixel,\r\n\r\nVideocamera: FaceTime HD\r\n\r\nSensori: Sensore di impronte digitali Touch ID,\r\n\r\nConnettivita: 4G LTE1\r\n\r\nSistema Operativo: iOS 9 e iCloud', 1),
(8, 'Acer ICONIA W4 821', 2, 'http://fabiostim.altervista.org/assets/img/product/tabletacer.jpg', '299,90 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_acer1.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_acer2.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_acer3.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_acer4.jpg', 'Display 8” (1280x800) IPS\r\n', 'Sistema Operativo Windows 8.1 + Office Home & Students 2013', 'Uscita HDMI', 'Oltre 10 ore di autonomia', 'http://fabiostim.altervista.org/assets/img/colori_device/grigio_scuro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'Acer Iconia W4 è un 8 pollici 1280 x 800 pixel con CPU Atom Bay Trail (Z3740), 2 GB di RAM e 32 GB di spazio interno. Non è nuovo, è ormai in vendita da 14 mesi in Italia, ma la sua scheda tecnica è per certi versi migliore delle attuali, ed a 129 euro in variante 3G è senz''altro una delle migliori offerte di sempre. La sua configurazione prevede uscita HDMI (pochissimi 8 pollici la hanno) e una buona batteria che, di contro, contribuisce a portarlo su 415 grammi (lo supera solo Toshiba Encore). Se non altro l''autonomia supera le 10 ore.', 'Display 8” (1280x800) IPS,\r\nSistema Operativo Windows 8.1 + Office Home & Students 2013;\r\n\r\nConnettivita: HSDPA 21.2/HSUPA 5,76/,Wi-Fi Direct 802.11 a/b/g/n, Bluetooth 4.0 - Chiamata voce,\r\n\r\nDisplay: 8" (1280x800) IPS,\r\n\r\nVideo/Audio/Picture: 5 Mpx A/F + 2 Mpx frontale, Lettore multimediale, MP3, WAV, 3GP, AAC, AAC+, e-AAC+, JPG, PNG,GIF, BMP, WMV, DivX/AVI,\r\n\r\nMemoria: 32GB, 2GB RAM,\r\n\r\nProcessore: Intel Atom Quad-Core 1.8GHz,\r\n\r\nSistemaOperativo: Windows 8.1 + Office Home & Students 2013,\r\n\r\nApplicazioni: Office Home & Students 2013, E-mail, GPS/A-GPS, SMS/MMS Invio e ricezione,\r\n\r\nIn dotazione: Caricabatteria - Guida di riferimento rapido,\r\n\r\nDimensioni: 218.9 x 134.9 x 10.75 mm,\r\n\r\nPeso: 420 grammi,\r\n\r\nAutonomia (*): 4960 mAh / durata 8h', 0),
(9, 'Modem Fibra', 3, 'http://fabiostim.altervista.org/assets/img/product/modem.jpg', '99 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_modem1.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_modem2.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_modem3.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_modem4.jpg', 'Collegamento a PC, tablet, telefoni\r\n', 'Navigazione senza fili\r\n', 'Banda Wi-Fi a 2.4 Ghz e 5 Ghz\r\n', 'Controllo e gestione con l''App 187', 'http://fabiostim.altervista.org/assets/img/colori_device/bianco.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'Con il Modem Fibra la Casa è Digitale!\n\nIl Modem Fibra è il centro digitale della Casa che ti permette di navigare ad altissime prestazioni grazie alla doppia banda Wi-Fi (a 2.4 Ghz e a 5 Ghz.) o in alternativa sfruttando le 4 porte Gigabit Ethernet offrendoti il vantaggio di condividere e visualizzare in modo semplice ed immediato contenuti Multimediali (Foto, Musica, Video) su Smart TV, Tablet, PC e Smartphone di ultima generazione sfruttando la tecnologia DLNA e collegando un Hard Disk o una chiavetta USB al modem.\n\nEd i vantaggi non finiscono qui! Puoi mettere in rete la tua stampante semplicemente collegandola alla porta USB del Modem Fibra, potendo così stampare comodamente qualunque documento o foto presente sui tuoi dispositivi connessi al modem.\n\nCollega i tuoi telefoni di casa direttamente al modem\nNaviga con tutti i PC, Tablet e Smartphone anche senza fili\nSfrutta al massimo le performance della tua linea ADSL grazie alla doppia banda Wi-Fi N di ultima generazione\nCondividi in modo semplice ed immediato foto, musica, video, Hard Disk e Stampanti\nInstallazione no problem: il modem si configura automaticamente sulla tua linea ADSL, senza installare software\nApp gratuita "TELEFONO" per trasformare il tuo smartphone in un cordless e sfruttare tutta la convenienza delle nuove offerte Fibra Ottica di Telecom Italia. Scarica subito la App nei Market Android e IOS (Google Play o App Store).\nFunzione Eco per risparmiare sulla bolletta elettrica\nIl Modem Fibra opera solo su linea ADSL di Telecom Italia (ad eccezione di linee “Alice Casa” e “Alice Voce”).\n\nAcquista il Modem Fibra direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', 'Collegamento a PC, tablet, telefoni, \r\nNavigazione senza fili, \r\nBanda Wi-Fi a 2.4 Ghz e 5 Ghz,\r\nControllo e gestione con l''App 187;\r\n\r\nTecnologia: ADSL/ADSL 2+/VDSL,\r\n\r\nWi-Fi: 802.11 b/g/n a 2.4 Ghz e 5 Ghz simultanee,\r\n\r\nInterfacce: 1 porta ADSL/VDSL - 1 porta WAN 4 porte Gigabit Ethernet - 1 Interfaccia Dect integrata - 1 porta PSTN 2 porte FXS per collegamento di telefoni - 2 porte USB per collegamento dischi e stampanti,\r\n\r\nFunzioni avanzate: Condivisione foto, musica e video, Hard Disk e stampanti,\r\n\r\nRequisiti tecnici: Linea ADSL Flat o Fibra Ottica di Telecom Italia,\r\n\r\nRequisiti di sistema per la gestione dell''interfaccia modem da PC:\r\nPrincipali browser inseriti di default sui sistemi operativi Windows 8, Windows 7, Vista, XP - MacOS 10.3,\r\n\r\nAssistenza tecnica: 2 anni di garanzia sul prodotto,\r\n\r\nContenuto della confezione:\r\nModem Fibra, filtro DSL con 2 cavi telefonici già collegati, cavo Ethernet con connettori gialli, alimentatore', 0),
(10, 'D-Link SmartHome Kit', 4, 'http://fabiostim.altervista.org/assets/img/product/dlink.jpg', '159,90 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_dlink1.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_dlink2.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_dlink3.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_dlink4.jpg', 'Servizio gratuito\r\n', 'Visualizzazione da smartphone o tablet delle riprese\r\n', 'Invio notifiche su smartphone/tablet/e-mail\r\n', 'Connettività Wi-Fi tramite ADSL o modem mobile 3G o 4G', 'http://fabiostim.altervista.org/assets/img/colori_device/bianco.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'Con lo Smart Home HD Starter Kit potrai impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.\nNel Kit sono inclusi: un Monitor HD (DCS-935L), un Wi-Fi Motion Sensor (DCH-S150), una smart plug (DSP-W215).\nTramite l''App mydlink Home per smartphone e tablet hai a disposizione il controllo di tutti i dispositivi così da semplificarti la gestione della casa rendendola più sicura e intelligente.\n\nFacile sarà la configurazione e gestione dei tuoi dispositivi. Basta semplicemente scaricare l’app mydlink Home e la configurazione guidata ti aiuterà a utilizzare al meglio tutti i dispositivi presenti nel kit in modo facile e intuitivo.\nCon l''app potrai creare tu stesso le regole per accendere e spegnere i tuoi elettrodomestici quando e ovunque vuoi. \n\nIl punto di forza sono le notifiche automatiche e real time sul tuo smartphone. L''app mydlink Home ti notificherà quando: un movimento o un suono viene rilevato, un dispositivo è stato acceso o spento, il consumo elettrico è stato superato, un dispositivo non funziona correttamente o si surriscalda, il sensore di movimento a infrarossi passivo riduce di gran lunga i falsi allarmi garantendoti di essere avvisato solo quando necessario: rilevazione dei movimenti fino a 8 metri (100° orizzontale, 80° verticale).\n\nCon il Monitor HD, potrai controllare la tua casa in alta definizione (720p) e grazie alla visione notturna anche in assenza di luce (fino a 5 mt). Il Monitor HD ti avvisa mediante notifica push ogni volta che verrà rilevato un suono o un movimento.\n\nGrazie alla tecnologia a infrarossi passiva saranno ridotti i falsi allarmi e verrai avvisato solo quando necessario. Con il sensore di movimento rileverai i movimenti fino a 8 metri (100° orizzontale, 80° verticale).\n\nPotrai accendere e spegnere i dispositivi dal tuo smartphone tablet, ovunque ti trovi. Essere avvisato se un elettrodomestico è stato acceso o spento. Impostare nuove regole di funzionamento in base alle tue esigenze.', 'Consumi (modalità stand-by): 0,3W,\r\nQuantità porte USB 2.0:	3,\r\nAltoparlanti incorporati: Si\r\nQuantità porte Ethernet LAN (RJ-45): 1\r\nDimensioni schermo: 127 cm (50"),\r\nPorta DVI: No,\r\nConsumer Electronics Control (CEC): Anynet+,\r\nLarghezza imballo: 136,2 cm,\r\nManuale dell''utente: Si,\r\nElectronic Programme Guide (EPG): Si\r\nTecnologie Dolby: Dolby Digital Plus, DTS, DTS Premium Sound 5.1,\r\nInterruttore integrato:	Si,\r\nProfondità: 6,32 cm,\r\nLarghezza: 112,89 cm,\r\nCollegamento ethernet LAN: Si,\r\nLarghezza (con supporto): 112,89 cm', 0),
(11, 'Beats Solo2 ', 4, 'http://fabiostim.altervista.org/assets/img/product/beats.jpg', '199,90 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_beats1.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_beats2.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_beats3.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_beats4.jpg', 'Peso 205 grammi', 'Larghezza 156 mm\r\n', 'Cavo RemoteTalk™', 'Impermeabili', 'http://fabiostim.altervista.org/assets/img/colori_device/bordeaux.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'Audio potenziato con la nuova qualità sonora Beats, il suono delle cuffie Solo2 è più nitido e più pulito e sprigiona una più vasta gamma di emozioni. Le cuffie Solo2 offrono un''ampia gamma di frequenze alte e bassi profondi per un''esperienza di ascolto equilibrata per tutti i generi musicali.\n\nVestibilità e stile: comfort, durevolezza e stile. Padiglioni curvati di 15 gradi per un comfort prolungato; la flessibilità rotazionale consente ai padiglioni di flettersi per una vestibilità ancor più personalizzata.', 'Dimensioni: 156 mm (larghezza),\r\nPeso: 205 gr.,\r\nContenuto della confezione: Cavo RemoteTalk™, Custodia da viaggi', 0),
(12, 'Samsung Galaxy J5', 1, 'http://fabiostim.altervista.org/assets/img/product/galaxyJ5.jpg', '229,90 euro', 'http://fabiostim.altervista.org/assets/img/product/mini_J51.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_J52.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_J53.jpg', 'http://fabiostim.altervista.org/assets/img/product/mini_J54.jpg', 'Sistema Operativo Android 5.1\r\n', 'Display 5.2” 16 Milioni colori Touch\r\n', 'Processore QuadCore 1.2 Ghz', 'Peso 158 gr', 'http://fabiostim.altervista.org/assets/img/colori_device/grigio_chiaro.png', 'http://fabiostim.altervista.org/assets/img/colori_device/nero.png', 'http://fabiostim.altervista.org/assets/img/colori_device/bianco.png', 'http://fabiostim.altervista.org/assets/img/colori_device/trasp.png', 'Straordinarie funzionalità sempre a portata di mano con il Samsung Galaxy J5. Goditi meravigliose immagini e video grazie alla nitidezza dello schermo Super AMOLED con eccezionali prestazioni hardware e fotocamere versatili.\n\nGrazie allo schermo Super AMOLED, il Galaxy J5 ti assicura un''esperienza multimediale ancora più vivida e intensa mai sperimentata finora. La riproduzione del colore incredibilmente realistica e l''eccezionale rapporto di contrasto con tonalità di nero ancora più intense ti faranno visualizzare foto e video in modo sorprendente e dedicarti ai tuoi giochi preferiti con un''intensità straordinaria.\n\nPer non parlare delle prestazioni eccellenti! I potenti processori del Galaxy J5 ti assicura una velocità superiore per navigare su Internet, giocare e visualizzare i video HD, offrendoti la possibilità di lavorare in multitasking senza sforzi e senza tempi di attesa.\n\nLa fotocamera è ottimizzata! Ottieni foto e video più luminosi e nitidi con la fotocamera posteriore da 13 MP e apertura f / 1,9 del Galaxy J5. Utilizza la fotocamera anteriore integrata per catturare scatti luminosi anche in condizioni di scarsa illuminazione.', 'Sistema Operativo Android 5.1\r\nDisplay 5” 16 Milioni colori Touch”\r\nProcessore QuadCore 2.1 Ghz\r\n\r\nTecnologia: 4G/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100\r\n\r\nConnettivita: Wi-Fi - Bluetooth - Micro USB - NFC\r\n\r\nGPS: Ricevitore GPS Integrato\r\n\r\nDisplay: Display 5.2” 16 Milioni colori Touch\r\n\r\nFotocamera: Fotocamera 13 Mpixel/Flash\r\n\r\nMemoria: Memoria interna 16GB - Slot Memory Card Micro SD fino a 128GB\r\n\r\nProcessore: Processore QuadCore 1.2 Ghz\r\n\r\nFormato SIM: SIM Micro\r\n\r\nVideo: Video Recorder&Playback\r\n\r\nMusica: MP3 Player - Radio FM\r\n\r\nIn dotazione: Caricabatteria - Cavo dati - Auricolare - Manuale d’uso rapido\r\n\r\nDimensioni: 145,8x72,3x8,1 mm\r\n\r\nPeso: 158 gr', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `product_category_id` int(1) NOT NULL AUTO_INCREMENT,
  `product_category_name` varchar(30) NOT NULL,
  `picture` text NOT NULL,
  PRIMARY KEY (`product_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `product_category_name`, `picture`) VALUES
(1, 'Smartphone e telefoni', 'assets/img/categories/smartphone.jpg'),
(2, 'Tablet e computer', 'assets/img/categories/tablet.jpg'),
(3, 'Modem e networking', 'assets/img/categories/networking.jpg'),
(4, 'TV e Smart Living', 'assets/img/categories/smartliving.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `picture` text NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `projects`
--

INSERT INTO `projects` (`id`, `name`, `picture`, `text`) VALUES
(1, '#TIMgirlsHackathon', 'assets/img/progetti/TIMgirlsHACKATHON.png', 'La competizione tecnologica più cool del momento al femminile. Per avvicinare le ragazze ancora sui banchi di scuola al coding, un mondo per molte ancora tutto da esplorare.\n\nUna maratona di circa 7 ore per avvicinare le ragazze ancora sui banchi di scuola al coding. La sfida è, in una sola giornata e senza competenza alcuna, realizzare una vera e propria App su un tema prestabilito. Una sfida possibile grazie a TIM e ai tutor che accompagnano le studentesse in questa avventura. Una giornata di formazione fuori dall''aula in un ambiente stimolante e sfidante nel quale poter conoscere Mentor eccezionali, testimonial di una leadership al femminile che ha saputo abbattere pregiudizi e vincoli culturali.\n\nIl tema dei #TIMgirlsHackathon è il cyberbullismo e l''uso consapevole del web. La sfida quindi è non solo imparare a fare coding ma anche misurarsi e provare a trovare una soluzione ad un problema molto diffuso tra i giovani. '),
(2, 'TIM VENTURES - Il primo Corporate Venture Capital italiano.', 'assets/img/progetti/timventures.jpg', 'TIM partecipa alla crescita di startup innovative in ambito Internet e digital life, sostenendole nella fase di sviluppo.\n\nTim Ventures fa parte della top 16 dei venture europei secondo l''ultimo report pubblicato da KPMG. Ed è l''unica società italiana tra gli investitori più attivi in Europa.'),
(3, '#ILFUTUROE’DITUTTI: WithYouWeDo ', 'assets/img/progetti/withyouwedo.png', 'E'' online WithYouWeDo, la piattaforma di crowdfunding che Telecom Italia mette a disposizione di enti, associazioni e cittadini per la promozione ed il finanziamento di progetti innovativi che creino valore sociale per la collettività.\n\nL''iniziativa è parte delle attività “#ilfuturoèditutti” di Corporate Social Responsibility di Telecom Italia:\nun programma di interventi basati sulla creazione di valore condiviso con le comunità in cui il Gruppo Telecom Italia opera. Una nuova visione, caratterizzata dai valori di inclusione, partecipazione ed attenzione al sociale, con approccio gestionale ed efficiente, “fare bene il bene”.\n\nLa piattaforma WithYouWeDo, in linea con l''impegno di Telecom Italia nel favorire lo sviluppo digitale e tecnologico del Paese, sostiene il finanziamento di iniziative, idee e progetti che favoriscano lo sviluppo, e l''adozione di strumenti digitali');

-- --------------------------------------------------------

--
-- Struttura della tabella `sl`
--

CREATE TABLE IF NOT EXISTS `sl` (
  `slID` int(1) NOT NULL AUTO_INCREMENT,
  `sl_name` varchar(30) NOT NULL,
  `sl_photo_preview` text NOT NULL,
  `sl_categoryID` int(1) NOT NULL,
  `sl_price` text NOT NULL,
  `sl_description` text NOT NULL,
  `sl_rules` text NOT NULL,
  `promo` tinyint(1) NOT NULL DEFAULT '0',
  `faq` int(11) NOT NULL,
  PRIMARY KEY (`slID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dump dei dati per la tabella `sl`
--

INSERT INTO `sl` (`slID`, `sl_name`, `sl_photo_preview`, `sl_categoryID`, `sl_price`, `sl_description`, `sl_rules`, `promo`, `faq`) VALUES
(1, 'TIMvision', 'assets/img/sl/1.1.jpg', 1, '5 euro/mese', 'TIMvision è la TV sempre on demand di TIM che non ti abbandona mai, senza pubblicità e anche da più dispositivi contemporaneamente. Vedi i tuoi programmi preferiti direttamente su Web e TV Anche su Smartphone e Tablet senza consumare Giga.\r\n\r\nAccomodati e goditi il grande cinema! \r\n\r\nUna ricca proposta di film con le anteprime più attese, i grandi claassici, inediti, film d''azione, thriller, animazione e commedie per tutta la famiglia.In più l''HD, per rendere ogni immagine spettacolare e non perdere neanche un particolare.', 'L''abbonamento TIMvision si attiva direttamente online, per Clienti TIM. Per scoprire i vantaggi e le modalità dell''attivazione online, consulta la Guida. \r\nPer attivazioni entro il 30/06/2016 il costo è di soli 5€/mese\r\npresso i Negozi TIM\r\ntramite App TIMvision\r\nchiamando gratuitamente il numero 40916 o il Servizio Clienti 119\r\ninviando un SMS gratuito con il testo “PROMOTIMVISION ON” al numero 40916 per i Clienti Ricaricabili o al numero 40915 per  i Clienti con Abbonamento\r\nE'' possibile effettuare il pagamento tramite Credito Residuo o Carta di Credito dei circuiti Visa, Mastercard, American Express; non sono accettate le carte di credito prepagate. Il pagamento tramite carta di credito non è disponibile per i terminali Windows Phone.\r\n\r\nL''abbonamento TIMvision è riservato ai Clienti connessi con Rete mobile, maggiorenni, dura 30 giorni dalla data di attivazione e si rinnova automaticamente ogni 30 giorni, salvo disattivazione. Il costo è di soli 5€/mese, valido per attivazioni entro il 30/06/2016\r\n\r\nL''abbonamento ti permette di guardare tutti i titoli della sezione cinema con le anteprime più attese ed i classici che ami rivedere, un ricchissimo catalogo di serie TV da vedere tutte di fila e un''imperdibile scelta di cartoni animati e serie per bambini. Goditi la visione quando e dove vuoi: anche su Smart TV e Web, utilizzando le credenziali scelte al momento della registrazione.', 1, 1),
(2, 'TIMmusic', 'assets/img/sl/1.2.jpg', 1, '4 euro/mese', 'Con TIMmusic puoi: ascoltare milioni di brani in streaming di tutti i generi, dove e quando vuoi, creare le tue playlist personali o scegliere quelle suggerite da Dj e artisti famosi, salvare album e playlist per l''ascolto offline, per averli sempre con te anche in assenza di rete e scoprire contenuti esclusivi come anteprime e interviste ai tuoi artisti preferiti.', 'Con l''offerta TIMmusic hai a disposizione un catalogo di oltre 25 milioni di brani da ascoltare dove e quando vuoi sul tuo smartphone senza limiti di tempo e soprattutto senza consumare Gb.\r\n\r\nPer i primi 3 mesi il costo dell''abbonamento è di soli 99cent/mese. Il servizio resta poi attivo a 7,99€/mese, salvo disattivazione che si può richiedere in qualsiasi momento e gratuitamente chiamando il Servizio Clienti 119.\r\n\r\nSarai informato dell''avvenuta attivazione dell''offerta con un SMS contenente il link che ti permetterà di scaricare l''app TIMmusic direttamente dallo store del tuo smartphone.\r\n\r\nTIMmusic è GRATIS per tutti i clienti TIM Young e TIM Young&Music.\r\n\r\nPuoi Attivare l''offerta:\r\n\r\nDirettamente Online: clicca Attiva\r\nChiamando il numero gratuito 40916 (per clienti ricaricabili) e seguendo la voce guida\r\nChiamando gratuitamente il Servizio Clienti 119\r\nPresso i Negozi TIM\r\nPuoi Disattivare l''offerta:\r\n\r\nDirettamente online\r\nChiamando il numero gratuito 40916 (per clienti ricaricabili) e seguendo la voce guida\r\nChiamando gratuitamente il Servizio Clienti 119\r\nPresso i Negozi TIM', 0, 1),
(3, 'TIMreading', 'assets/img/sl/1.3.jpg', 1, '1 euro/mese', 'Su TIMreading trovi ciò che ami leggere, dove e quando vuoi:\r\n\r\nLeggi subito. Vai sul sito timreading.it o scarica l''App TIMreading. Puoi acquistare in qualsiasi momento ebook, quotidiani e magazine con un click . Ogni giorno una selezione di ebook in promozione.\r\nLeggi ciò che vuoi. Scegli i tuoi ebook tra bestseller, thriller, romanzi e i magazine di moda, cucina, attualità  che preferisci sfogliare. E se vuoi essere informato dalle prime ore del mattino, leggi i principali quotidiani nazionali e sportivi sul tuo PC, tablet e smartphone.\r\nLeggi ovunque tu sia. Puoi portare gli ebook e magazine acquistati sempre con te con l''App TIMreading per smartphone e tablet. Ti basterà scaricare il contenuto che vuoi sfogliare, per poi leggerlo anche offline.\r\nAscolti gli audiolibri che preferisci. Se sei un cliente TIM, con l''app TIMreading Audiobook ascolti in streaming tutti gli audiolibri presenti a catalogo ad 1 euro/settimana', 'Per conoscere costi, dettagli e limitazioni legati alle offerte per magazine, quotidiani ed audiolibri è possibile consultare le pagine di dettaglio delle offerte stesse.Per conoscere costi, dettagli e limitazioni legati all''acquisto di ebook si può accedere a timreading.it.\r\nEbook e magazine possono essere sfogliati su App TIMreading per smartphone e tablet o su PC con il software Adobe Digital Editions.\r\nDopo avere acquistato una delle offerte “Sfoglio Digitale TIM” e “TIM News Promo”, lo sfoglio del quotidiano o la consultazione delle news avviene sul sito web o sull''App della testata e per ascoltare gli audiolibri in streaming o effettuarne il download dall''app TIMreading Audiobook.\r\nÈ necessario avere un''offerta Internet dati attiva o una copertura Wi-Fi per effettuare il download di ebook e magazine da App TIMreading,  per sfogliare il quotidiano sul sito web o sull''App della testata e per ascoltare gli audiolibri in streaming o effettuarne il downloaddall''App TIMreading Audiobook.\r\nIl download di ebook, magazine,audiolibri e l''ascolto in streaming degli audiolibri non erode il proprio traffico dati su apn wap.tim.it e ibox.tim.it.\r\nL''app TIMreading è compatibile con dispositivi iOS dalla versione 6.0 e Android, dalla versione 2.4.\r\nL''app TIMreading Audiobook è compatibile con dispositivi iOS dalla versione 7.1 e Android dalla versione 4.1', 0, 0),
(4, 'WellUp', 'assets/img/sl/2.1.png', 2, 'gratis', 'Ti sei mai chiesto come sia semplice vivere in modo salutare?\r\n\r\nViviamo in una società dove lo stile di vita di molti di noi si è trasformato diventando sedentario e poco salutare. Passiamo ore seduti davanti al PC in ufficio, mangiamo velocemente, spesso preferiamo usare i  mezzi anche per percorrere brevi distanze e raramente pratichiamo attività fisica.\r\n\r\nQuante volte hai sentito dire che bastano almeno 30 minuti di camminata al giorno per migliorare la tua vita? Moltissime. Ma quante volte lo hai fatto? Pochissime!\r\n\r\nLa maggior parte delle persone fa buoni propositi, ma difficilmente riesce a metterli in atto, vuoi per motivi lavorativi o per la gestione di casa/figli, vuoi per la mancanza di tempo in generale.\r\n\r\nSe contiamo anche i fattori di rischio (quali alcol e fumo) il livello di vita “insalubre” cresce ulteriormente: ma cosa possiamo fare per fare del bene a noi stessi?\r\n\r\nFondazione Telecom Italia e Fondazione Umberto Veronesi hanno creato “Well Up”, la nuovissima App che ha l''obiettivo di aiutare a fare prevenzione e fare attenzione al benessere.\r\n\r\nWell Up è un punto di forza (e di partenza) per sostenere e attuare un perfetto stile di vita, non basandosi sulle risposte comuni e scontate (meno fumo, no alcol), ma dando consigli utili a ridurre i rischi e a migliorare la vita degli utenti.\r\n\r\nSi tratta di un''applicazione gratuita che puoi scaricare sul tuo smartphone. L''app è un modo per programmare al meglio le attività di prevenzione per noi e per la nostra famiglia, un vero e proprio diario sanitario, una fonte di consigli sempre aggiornata.\r\n\r\nL''app contiene una sezione personale, in cui inserire i dati personali e i contatti dei medici di fiducia, una sezione georeferenziata con l''elenco dei centri di cura più vicini, una pagina in cui inserire le informazioni sanitarie sui vostri familiari e una sezione di approfondimento, con consigli utili per bambini, donne, uomini e anziani …ma non solo. \r\n\r\nIl progetto, oltre all''app, prevede un percorso di educazione alla prevenzione, articolato in video, quaderni della salute e documenti di approfondimento, dedicato alle persone del Gruppo Telecom Italia. I temi trattati saranno: attività fisica,\r\nalimentazione,\r\nalcol e fumo,\r\ncontrolli preventivi (tumore seno, prostata, melanomi),\r\ncheck up e vaccini (apnee notturne, virus HPV),\r\napproccio alle malattie neurodegenerative (alzheimer e parkinson).\r\n\r\nPrevenire è meglio che curare!\r\n\r\nLa prevenzione è il futuro, l''unico modo, insieme alla comunicazione e alla ricerca, di diminuire le incidenze delle malattie.\r\n\r\nFare prevenzione significa preoccuparsi del proprio benessere, effettuare controlli e agire prima, significa prendersi cura di sé sempre e comunque.\r\n\r\nWell Up, nata grazie a Fondazione Telecom Italia e Fondazione Umberto Veronesi, è l''app sempre a portata di mano che t''informa sugli esami diagnostici adatti a te e alla tua famiglia per stare bene a lungo e per rendere il tuo stile di vita il più salutare possibile.', 'Prenditi cura di te, scarica l''app!\nL''applicazione è disponibile su dispositivi android e iOs ed è scaricabile gratuitamente dai rispettivi stores.\n', 0, 0),
(5, 'mydlink™ Home', 'assets/img/sl/3.1.jpg', 3, 'gratis', 'mydlink™ Home è il servizio gratuito che ti permette di monitorare 24h casa tua ovunque ti trovi direttamente dal tuo telefono! Basta preoccupazioni quando si va in vacanza! \nTramite l''App mydlink Home per smartphone e tablet hai a disposizione il controllo di tutti i dispositivi così da semplificarti la gestione della casa rendendola più sicura e intelligente.\n', 'La configurazione è facilissima!\r\n\r\nBasta semplicemente scaricare la app mydlink Home e la configurazione guidata ti aiuterà a far funzionare tutti i dispositivi presenti nel kit.', 1, 0),
(6, 'TIM Home Connect', 'assets/img/sl/3.2.jpg', 3, '1,5 euro/mese', 'TIM Home Connect è l''offerta pensata per essere utilizzata nei dispositivi di domotica presenti nella casa, la cui gestione prevede l''uso di una SIM. \r\n\r\nCon Tim Home Connect infatti hai a disposizione minuti, MB e SMS da utilizzare per connettere e gestire il tuo antifurto, la tua caldaia o altri sistemi di domotica.\r\n\r\nL''offerta prevede ogni 30 giorni:\r\n20 minuti di chiamate, \r\n100 MB di traffico Internet,\r\n100 SMS verso tutti.', 'L''offerta si attiva in tutti i negozi TIM.\r\nTutti i prezzi sono IVA inclusa.\r\nL''offerta è valida per clienti ricaricabili.\r\nLa possibilità di utilizzare i servizi radiomobili inclusi nell''offerta dipende dalle caratteristiche tecniche del dispositivo di domotica a cui si associa la TIM Card.\r\nL''offerta non prevede incompatibilità con altre opzioni. L''attivazione dell''offerta non comporta la disattivazione automatica di eventuali altre opzioni attive sul proprio numero; per gestire le opzioni presenti sulla linea basta accedere al Servizio Clienti 119 o chiamare il numero gratuito 409161.\r\nI minuti di traffico inclusi nell''offerta sono validi per il traffico nazionale verso tutti i numeri mobili e tutti i numeri di rete fissa di operatori nazionali e non concorrono al raggiungimento di soglie di sconto e bonus legati ad altre offerte. Sono escluse le chiamate verso le numerazioni in decade 1,4 e 8. In caso di esaurimento dei minuti inclusi o degli SMS, disponibili ogni 30 giorni, si applicheranno le tariffe previste dal profilo base o da eventuali promozioni attive sull''utenza.\r\nI minuti di traffico, gli SMS e i MB inclusi nell''offerta non utilizzati al termine del periodo di 30 giorni non saranno cumulabili con quelli attribuiti nel periodo mensile successivo.\r\nIl traffico Internet incluso nell''offerta è conteggiato a scatti anticipati da 1 KB ed è valido per l''utilizzo di Internet e mail da telefonino, in Italia, su APN wap.tim.it. Al superamento dei MB disponibili ogni 30 giorni, la velocità di navigazione verrà ridotta a 32 Kbps fino al rinnovo successivo, senza costi aggiuntivi.\r\nÈ possibile usufruire dell''offerta se si ha credito sulla TIM Card.\r\nQualora il credito disponibile sulla TIM Card sia inferiore al costo mensile previsto viene utilizzato il credito disponibile al momento dell''addebito mensile, in tal caso l''offerta resta attiva ma non sarà possibile effettuare telefonate in uscita, inviare sms o navigare in Internet, la parte residua ancora da saldare sarà detratta automaticamente in occasione della prima ricarica sufficiente a coprire la parte residua ancora da saldare. In assenza di una ricarica entro i 30 giorni dalla data del parziale o mancato pagamento del costo mensile sarà avviato il processo di cessazione dell''offerta. L''addebito del costo mensile dell''offerta TIM Home Connect Light può avvenire mediante utilizzo del credito residuo presente sulla TIM Card, mediante Bonus accreditati sulla TIM Card attraverso sconti e/o promozioni o tramite pagamento con carta di credito solo dei circuiti VISA, MASTERCARD e AMEX; non sono accettate le Carte Prepagate.\r\nAlla scadenza di TIM Home Connect 12 (trascorsi 360 giorni dall''attivazione) e di TIM Home Connect 24 (trascorsi 720 giorni dall''attivazione) salvo disdetta, TIM Home Connect continuerà ad essere fruibile ad un costo di 3€ al mese con addebito su credito residuo della TIM Card. Pertanto si dovrà fare attenzione a disporre di credito residuo superiore a 3€.\r\nL''attivazione dell''offerta avverrà al massimo entro 48 ore dalla richiesta. La validità dell''offerta viene confermata automaticamente ogni 30 giorni, al massimo entro 4 ore dalla mezzanotte della data di rinnovo mensile. Si può verificare se l''offerta è attiva e la disponibilità dei servizi inclusi chiamando gratuitamente il numero 40916, il Servizio Clienti 119 o accedendo a MyTIM Mobile del sito. In caso di navigazione senza offerta dati attiva si applica la tariffa base.\r\nL''attivazione ed i successivi rinnovi dell''offerta determinano la proroga della durata della TIM Card di 13 mesi , decorrenti dalla data in cui avviene l''attivazione o il rinnovo. Nel corso del tredicesimo mese il servizio funzionerà solo per la ricezione delle chiamate e dei messaggi.\r\nE'' possibile disattivare gratuitamente l''offerta in qualsiasi momento chiamando gratuitamente il numero 40916, il Servizio Clienti 119 o accedendo alla sezione MyTIM Mobile del sito.', 0, 0),
(7, 'TIM Tag', 'assets/img/sl/3.3.jpg', 3, '129 euro', 'TIMTag è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care.\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\n\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare!', 'Acquista subito online e ricevi direttamente a casa tua il pack oppure vai in uno dei negozi TIM.\r\nRegistra la TIM Card che trovi nel Pack in un negozio TIM (l''offerta TIMTag si attiverà automaticamente dopo la registrazione).\r\nInstalla l''app sul tuo smartphone ed associa il dispositivo di localizzazione (Android ed iOS).', 0, 0),
(8, 'Pagamenti', 'assets/img/sl/4.1.png', 4, 'gratis', 'Con TIM Wallet puoi utilizzare il tuo smartphone per pagare in tutti i negozi abilitati. I dati della tua carta di credito o prepagata sono memorizzati in modo confidenziale e protetto sulla TIM Card. Basta un tocco per scegliere la carta con cui effettuare i tuoi acquisti. Lasci il portafoglio a casa e utilizzi lo smartphone per avere a disposizione le tue carte.', 'Scarica l''app TIM Wallet da Google Play su uno smartphone NFC Android.\r\nAggiungi la carta di pagamento che preferisci tra quelle disponibili nella vetrina.\r\nAl momento del pagamento seleziona la carta che vuoi utilizzare, premi “Paga” e avvicina lo smartphone al POS contactless. Ricevei la conferma che il pagamento è stato effettuato direttamente sul display dello smartphone.\r\n', 0, 1),
(9, 'Trasporti', 'assets/img/sl/4.2.png', 4, 'gratis', 'Compra un biglietto via SMS e pagalo direttamente con il tuo credito telefonico.\nEntra nella Vetrina dei servizi e scopri se il servizio è già attivo nella tua città.\nSeleziona la tipologia di biglietto e acquistalo direttamente con il tuo credito telefonico.\nTrovi subito il biglietto valido nella sezione Trasporti del tuo TIM Wallet.', 'Apri TIM Wallet e accedi alla Vetrina Servizi. Se la città che ti interessa é abilitata, clicca e acquista il biglietto. Paghi direttamente con il tuo credito telefonico se sei un cliente ricaricabile o con un addebito in bolletta se sei in abbonamento.\r\nAttenzione: ti verranno addebitati il costo del biglietto più il costo dell''SMS di richiesta (19,90 cent iva inclusa). Ricevi un SMS, il biglietto è valido da quel momento senza necessità di ulteriori convalide. Puoi trovare il biglietto elettronico direttamente nel TIM Wallet nel tuo portafogli, puoi rinnovarlo quando scade. In caso di controllo, mostra l''SMS di conferma che hai ricevuto. A Milano puoi utilizzare anche la modalità QRCode. Dopo aver acquistato il biglietto della metropolitana e ricevuto l''SMS, ricevi anche il QRCode che permette di aprire i tornelli della metropolitana. E'' sufficiente visualizzare il QRCode e accostare il display dello smartphone all''apposito lettore. ', 1, 1),
(10, 'Fidelity Card', 'assets/img/sl/4.3.png', 4, 'gratis', 'Salva nel TIM Wallet le tue carte fedeltà per averle sempre con te. E'' comodo, facile e veloce. Utilizza la fotocamera per aggiungere una carta. La tessera viene riconosciuta in automatico e la trovi nel tuo TIM Wallet. Apri il wallet e mostra le carte fedeltà nei punti vendita.', 'Con TIM Wallet puoi virtualizzare le tue carte fedeltà e portarle sempre con te. \r\nAccedi alla Vetrina Servizi e in pochi passaggi puoi acquisire tutte le tue carte fedeltà. \r\nInquadra la carta nel riquadro e attendi che venga riconosciuta. \r\nIl riconoscimento della tessera é automatico, tuttavia se la tessera non viene riconosciuta tra le carte presenti puoi comunque aggiungerla utilizzando la fotocamera del tuo smartphone: seleziona il tipo di codice riportato sulla tessera (codice a barre, QRCode o codice numerico) e inquadralo. Se il codice non viene riconosciuto automaticamente, può essere inserito anche manualmente. \r\nIn breve puoi vedere la tessera nel portafogli. \r\nPuoi mostrarla nei punti vendita abilitati direttamente dal tuo smartphone: se clicchi sull''immagine della carta in automatico ruota e ti mostra il codice a barre (attenzione: non tutti i punti vendita hanno i lettori di codice a barre abilitati!)', 0, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `sl_category`
--

CREATE TABLE IF NOT EXISTS `sl_category` (
  `sl_category_id` int(1) NOT NULL AUTO_INCREMENT,
  `sl_category_name` text NOT NULL,
  `picture` text NOT NULL,
  PRIMARY KEY (`sl_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `sl_category`
--

INSERT INTO `sl_category` (`sl_category_id`, `sl_category_name`, `picture`) VALUES
(1, 'TV & Entertainement', 'assets/img/categories/tv&ent.jpg'),
(2, 'Salute e benessere', 'assets/img/categories/salute&ben.jpg'),
(3, 'Casa e famiglia', 'assets/img/categories/family.jpg'),
(4, 'Servizi alla persona', 'assets/img/categories/lock.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `media` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `testimonials`
--

INSERT INTO `testimonials` (`id`, `text`, `media`) VALUES
(1, 'Fazio Fazio è una delle personalità di spicco del panorama televisivo italiano. Gode di una grande popolarità e lo stile che lo contraddistingue è ironico e pungente.\nIntellettuale e opinion leader, nella sua carriera si è ha avuto la possibilità di intervistare tante personalità di spicco: non solo celebrità televisive nostrane e internazionali, ma anche, e soprattutto, studiosi, ricercatori e scienziati, politici, scrittori, musicisti, premi Nobel. Sempre educato, mai sopra le righe, ma arguto e tagliente in ogni intervento, non perde mai occasione per dimostrare una spiccata curiosità culturale, che lascia emergere la sua indole di indagatore della realtà e del mondo che circonda.', 'https://www.youtube.com/embed/eTz4o7NMGXg'),
(2, 'Negli ultimi anni il nostro modo di comunicare è radicalmente cambiato. Forse non si può nemmeno più parlare di comunicazione, le nuove tecnologie infatti ci stanno portando verso un''era dove le connessioni tra gli individui sono più profonde e significative.\nTIM, che da sempre è sinonimo di comunicazione, si trasforma radicalmente per diventare un''azienda che la cui tecnologia consente alle persone di connettersi tra loro e comunicare. La campagna di lancio del nuovo posizionamento di TIM è nata per raccontare questo nuovo mondo connesso, attraverso il coinvolgimento di un testimonial d''eccezione: Pif.\nPif rappresenta una delle figure più interessanti e particolari del panorama italiano. Deve gran parte della sua fama proprio al suo stile unico e inconfondibile sempre spontaneo e alla sua capacità di parlare senza mezzi termini di ogni tematica, anche delle più scottanti.', 'https://www.youtube.com/embed/GjMGm5yZFjg'),
(5, 'L''attrice Matilde Gioli ci spiega come le nuove tecnologie non siano in realtà qualcosa di esoterico o riservato a un pubblico di specialisti, ma riflettano i loro benefici sulla vita reale di tutte le persone, migliorandone e semplificandone la quotidianità e contribuendo ad abbassare i costi dei nuovi strumenti di comunicazione. ', 'https://www.youtube.com/embed/3qI_eypYVbA');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
