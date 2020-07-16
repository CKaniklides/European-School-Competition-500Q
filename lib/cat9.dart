import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './answer.dart';
import './start.dart';
import 'dart:math';

class cat9questionpage extends StatefulWidget {
  @override
  _cat9questionpageState createState() => _cat9questionpageState();
}

class _cat9questionpageState extends State<cat9questionpage> {
  final questions = const [
//9.371
    {
      'questionText':
          'Τις βάσεις για μια κοινή Εξωτερική Πολιτική και Πολιτική Ασφάλειας (KEΠΠA) της ΕΕ έθεσε η Συνθήκη:',
      'answers': [
        {'text': 'Της Ρώμης', 'score': 0},
        {'text': 'Ζυρίχης-Λονδίνου', 'score': 0},
        {'text': 'Της Λωζάνης', 'score': 0},
        {'text': 'Του Μάαστριχτ', 'score': 10},
      ],
    },

//9.372
    {
      'questionText':
          'Ποιου σώματος χρειάζεται η συγκατάθεση για τον διορισμό του Ύπατου Εκπροσώπου της ΕΕ για θέματα Εξωτερικής Πολιτικής και Πολιτικής Ασφάλειας;',
      'answers': [
        {'text': 'Συμβουλίου της Ευρώπης', 'score': 0},
        {'text': 'Επιτροπής των Περιφερειών', 'score': 0},
        {'text': 'Ευρωκοινοβουλίου', 'score': 10},
        {'text': 'SEDE', 'score': 0},
      ],
    },

//9.373
    {
      'questionText':
          'Οι πιο σημαντικοί τομείς της Κοινής Εξωτερικής Πολιτικής και Πολιτικής Ασφάλειας (ΚΕΠΠΑ) είναι:',
      'answers': [
        {
          'text': 'Διατήρηση της ειρήνης και ενίσχυση της διεθνούς ασφάλειας',
          'score': 10
        },
        {'text': 'Ανταγωνισμός και Αλιεία', 'score': 0},
        {'text': 'Προσωπικά δεδομένα', 'score': 0},
        {'text': 'Αθλητισμός', 'score': 0},
      ],
    },

//9.374
    {
      'questionText':
          'Τι χρηματικό ποσό θα διαθέσει η Ευρωπαϊκή Επιτροπή ως αναπτυξιακή βοήθεια στις χώρες Αφρικής, Καραϊβικής και Ειρηνικού τα έτη 2014-2020;',
      'answers': [
        {'text': '30,5 δις ευρώ', 'score': 10},
        {'text': '500 δις ευρώ', 'score': 0},
        {'text': '1 δις ευρώ', 'score': 0},
        {'text': '800 εκ. ευρώ', 'score': 0},
      ],
    },

//9.375
    {
      'questionText':
          'Πόσο τοις εκατό της παγκόσμιας αναπτυξιακής βοήθειας χορηγεί η ΕΕ (στοιχεία 2017);',
      'answers': [
        {'text': '50%', 'score': 0},
        {'text': '60%', 'score': 10},
        {'text': '80%', 'score': 0},
        {'text': '10%', 'score': 0},
      ],
    },

//9.376
    {
      'questionText':
          'Μεγαλύτερη αδυναμία της εξωτερικής πολιτικής της ΕΕ θεωρείται:',
      'answers': [
        {'text': 'Ο ενιαίος πολιτικός λόγος που εκφράζει', 'score': 0},
        {'text': 'Η έλλειψη ενιαίου πολιτικού λόγου', 'score': 10},
        {'text': 'Η έλλειψη κοινής γεωγραφίας', 'score': 0},
        {'text': 'Δεν έχει αδυναμίες', 'score': 0},
      ],
    },

//9.377
    {
      'questionText':
          'Ποια συμφωνία διαμορφώνει το πλαίσιο συνεργασίας ΕΕ-ΝΑΤΟ σε θέματα ασφάλειας; ',
      'answers': [
        {'text': 'Της Φρανκφούρτης', 'score': 0},
        {'text': 'Της Αθήνας', 'score': 0},
        {'text': 'Της Νίκαιας', 'score': 0},
        {'text': 'Berlin Plus', 'score': 10},
      ],
    },

//9.378
    {
      'questionText':
          'Οι πρώτες στρατιωτικές αποστολές της ΕΕ πραγματοποιήθηκαν:',
      'answers': [
        {'text': 'Στην Κύπρο', 'score': 0},
        {'text': 'Σε Βαλκάνια και Κόνγκο', 'score': 10},
        {'text': 'Στην Κίνα', 'score': 0},
        {'text': 'Στη Βραζιλία', 'score': 0},
      ],
    },

//9.379
    {
      'questionText': 'Οι στρατιωτικές ομάδες μάχης της ΕΕ είναι: ',
      'answers': [
        {'text': 'Γερμανικής εθνικότητας', 'score': 0},
        {'text': 'Βρετανικής εθνικότητας', 'score': 0},
        {'text': 'Γαλλικής εθνικότητας', 'score': 0},
        {'text': 'Πολυεθνικές', 'score': 10},
      ],
    },

//9.380
    {
      'questionText': 'Από ποιες χώρες εισάγει φυσικό αέριο η ΕΕ;',
      'answers': [
        {'text': 'Ρωσία, Νορβηγία, Αλγερία', 'score': 10},
        {'text': 'Ελβετία, Πακιστάν, ΗΠΑ', 'score': 0},
        {'text': 'Καζακστάν, Αίγυπτο, Ισραήλ', 'score': 0},
        {'text': 'Αργεντινή, Ελβετία, Νησιά Φαρόε', 'score': 0},
      ],
    },

//9.381
    {
      'questionText':
          'Από τις πιο κάτω χώρες, υποψήφιες για ένταξη στην ΕΕ είναι:',
      'answers': [
        {'text': 'Ρωσία, Καζακστάν', 'score': 0},
        {'text': 'Τουρκία, Βόρεια Μακεδονία', 'score': 10},
        {'text': 'Νότιος Αφρική, Σομαλία', 'score': 0},
        {'text': 'Ινδονησία, Φιλιππίνες', 'score': 0},
      ],
    },

//9.382
    {
      'questionText':
          'Ποιες από τις πιο κάτω χώρες αποτελούν τους σημαντικότερους εμπορικούς εταίρους της ΕΕ;',
      'answers': [
        {'text': 'ΗΠΑ, Κίνα, Ρωσία', 'score': 10},
        {'text': 'Κούβα, Μπαχάμες, Τζαμάικα', 'score': 0},
        {'text': 'Καναδάς, Ιαπωνία, Αυστραλία', 'score': 0},
        {'text': 'Κόνγκο, Μαρόκο, Αίγυπτος', 'score': 0},
      ],
    },

//9.383
    {
      'questionText':
          'Σε ποιο ποσό ανήλθαν το 2018 οι εμπορικές ροές μεταξύ ΕΕ και ΗΠΑ;',
      'answers': [
        {'text': '100 δις ευρώ', 'score': 0},
        {'text': '60 δις ευρώ', 'score': 0},
        {'text': '670 δις ευρώ', 'score': 10},
        {'text': '800 δις ευρώ', 'score': 0},
      ],
    },

//9.384
    {
      'questionText':
          'Ποια συνθήκη δημιούργησε τη θέση του Ύπατου Εκπροσώπου της Ένωσης για θέματα Εξωτερικής Πολιτικής και Πολιτικής Ασφαλείας;',
      'answers': [
        {'text': 'Του Άμστερνταμ', 'score': 0},
        {'text': 'Της Λισαβόνας', 'score': 10},
        {'text': 'Του Βουκουρεστίου', 'score': 0},
        {'text': 'Της Σόφιας', 'score': 0},
      ],
    },

//9.385
    {
      'questionText': 'Ποια πολιτική διαδέχθηκε η ΚΕΠΠΑ;',
      'answers': [
        {'text': 'Το δόγμα Τρούμαν', 'score': 0},
        {'text': 'Την Ευρωπαϊκή Πολιτική Συνεργασία', 'score': 10},
        {'text': 'Του διαίρει και βασίλευε', 'score': 0},
        {'text': 'Το σχέδιο Μάρσαλ', 'score': 0},
      ],
    },

//9.386
    {
      'questionText':
          'Ρήτρα που περιλαμβάνει η συνθήκη της Λισαβόνας, όταν μια χώρα μέλος της ΕΕ γίνεται στόχος τρομοκρατικής επίθεσης ονομάζεται:',
      'answers': [
        {'text': 'Ρήτρα Συνεννόησης', 'score': 0},
        {'text': 'Ρήτρα Συνεργασίας', 'score': 0},
        {'text': 'Ρήτρα Διαβούλευσης', 'score': 0},
        {'text': 'Ρήτρα Αλληλεγγύης', 'score': 10},
      ],
    },

//9.387
    {
      'questionText':
          'Η πιο πάνω ρήτρα δεν επηρεάζει τις δεσμεύσεις που έχουν αναληφθεί στο πλαίσιο της οργάνωσης της Συνθήκης του Βορείου Ατλαντικού (ΝΑΤΟ).',
      'answers': [
        {'text': 'Λάθος', 'score': 0},
        {'text': 'Σωστό', 'score': 10},
        {'text': 'Σε κάποιο βαθμό', 'score': 0},
        {'text': 'Τις ακυρώνει', 'score': 0},
      ],
    },

//9.388
    {
      'questionText':
          'Η  πολιτική ασφάλειας και άμυνας ορισμένων κρατών μελών, κυρίως αυτών που είναι παραδοσιακά ουδέτερα, επηρεάζεται από την προαναφερθείσα ρήτρα.',
      'answers': [
        {'text': 'Nαι', 'score': 0},
        {'text': 'Kάποιες φορές', 'score': 0},
        {'text': 'Όχι', 'score': 10},
        {'text': 'Σε κάποιο βαθμό', 'score': 0},
      ],
    },

//9.389
    {
      'questionText': 'Πόσες αντιπροσωπείες στον κόσμο διαθέτει η ΕΕ;',
      'answers': [
        {'text': '140', 'score': 10},
        {'text': '30', 'score': 0},
        {'text': '50', 'score': 0},
        {'text': '100', 'score': 0},
      ],
    },

//9.390
    {
      'questionText':
          'Η Γενική Διεύθυνση Development Cooperation (DEVCO) της ΕΕ είναι υπεύθυνη για:',
      'answers': [
        {
          'text':
              'Τη χάραξη των ευρωπαϊκών αναπτυξιακών πολιτικών και τη χορήγηση βοήθειας σε τρίτες χώρες',
          'score': 10
        },
        {'text': 'Θέματα υγείας ', 'score': 0},
        {'text': 'Θέματα αθλητισμού ', 'score': 0},
        {'text': 'Θέματα κτηνοτροφίας ', 'score': 0},
      ],
    },

//9.391
    {
      'questionText':
          'Σε ποιες από τις πιο κάτω χώρες έχουν διεξαχθεί αποστολές της ΚΕΠΠΑ;',
      'answers': [
        {
          'text':
              'Βόρεια Μακεδονία, Βοσνία-Ερζεγοβίνη, Σουδάν, Αφγανιστάν, Ιράκ',
          'score': 10
        },
        {'text': 'Χιλή', 'score': 0},
        {'text': 'Ινδία', 'score': 0},
        {'text': 'Ιράν', 'score': 0},
      ],
    },

//9.392
    {
      'questionText': 'Οι αποστολές αυτές αποσκοπούν:',
      'answers': [
        {
          'text':
              'Στον τερματισμό των εχθροπραξιών και στην παροχή βοήθειας για μεταρρυθμίσεις',
          'score': 10
        },
        {'text': 'Στην κατοχή του εδάφους από την ΕΕ', 'score': 0},
        {'text': 'Στον διωγμό των ντόπιων κατοίκων', 'score': 0},
        {'text': 'Δεν έχουν συγκεκριμένο σκοπό', 'score': 0},
      ],
    },

//9.393
    {
      'questionText':
          'Το ακρωνύμιο της Επιτροπής του Ευρωκοινοβουλίου που ασχολείται με θέματα εξωτερικής πολιτικής:',
      'answers': [
        {'text': 'EURE', 'score': 0},
        {'text': 'PREL', 'score': 0},
        {'text': 'EPSO', 'score': 0},
        {'text': 'AFET', 'score': 10},
      ],
    },

//9.394
    {
      'questionText':
          'Ποιό από τα πιο κάτω όργανα της ΕΕ συμβουλεύεται ο Ύπατος Εκπρόσωπος της Ένωσης για θέματα ΚΕΠΠΑ;',
      'answers': [
        {'text': 'Το Ευρωπαϊκό Συμβούλιο', 'score': 0},
        {'text': 'Το Ευρωκοινοβούλιο', 'score': 10},
        {'text': 'Την Ευρωπαϊκή Επιτροπή', 'score': 0},
        {'text': 'Το Συμβούλιο της Ευρωπαϊκής Ένωσης', 'score': 0},
      ],
    },

//9.395
    {
      'questionText':
          'Ποιο θεσμικό όργανο επικουρεί τον Ύπατο Εκπρόσωπο της Ένωσης για θέματα ΚΕΠΠΑ;',
      'answers': [
        {'text': 'EEAS', 'score': 10},
        {'text': 'ΒCDE', 'score': 0},
        {'text': 'BENG', 'score': 0},
        {'text': 'EPSO', 'score': 0},
      ],
    },

//9.396
    {
      'questionText':
          'Πρόεδρος της Επιτροπής Εξωτερικών Υποθέσεων του Ευρωκοινοβουλίου είναι ο:',
      'answers': [
        {'text': 'Ντέιβιντ ΜακΑλλιστερ (David MacAllister)', 'score': 10},
        {'text': 'Πίνο Αρλάτσι (Pino Arlacchi)', 'score': 0},
        {'text': 'Τούννε Κέλλαμ (Tunne Kelam)', 'score': 0},
        {'text': 'Εβγκένι Κιρίλοφ (Evgeni Kirilov)', 'score': 0},
      ],
    },

//9.397
    {
      'questionText':
          'Το 2017, πόσο τοις εκατό του προϋπολογισμού της ΕΕ διατέθηκε σε εξωτερικές δράσεις;',
      'answers': [
        {'text': '10%', 'score': 0},
        {'text': '20%', 'score': 0},
        {'text': '50%', 'score': 0},
        {'text': '6%', 'score': 10},
      ],
    },

//9.398
    {
      'questionText':
          'Τι ποσοστό των πολιτών της Ευρωζώνης, σύμφωνα με το Ευρωβαρόμετρο της Άνοιξης 2019, δηλώνουν ότι η οικονομία της Ένωσης είναι πολύ καλή;',
      'answers': [
        {'text': '2%', 'score': 0},
        {'text': '6%', 'score': 0},
        {'text': '3%', 'score': 10},
        {'text': '9%', 'score': 0},
      ],
    },

//9.399
    {
      'questionText':
          'Ποια δύο θεσμικά όργανα συναποφασίζουν για το ποσό για τις εξωτερικές δράσεις και την κατανομή του;',
      'answers': [
        {'text': 'Ευρωκοινοβούλιο και Ευρωπαϊκό Συμβούλιο', 'score': 10},
        {'text': 'Κομισιόν και Ευρωκοινοβούλιο', 'score': 0},
        {
          'text': 'Συμβούλιο των Υπουργών και Ευρωπαϊκή Κεντρική Τράπεζα',
          'score': 0
        },
        {'text': 'Κανένα από αυτά', 'score': 0},
      ],
    },

//9.400
    {
      'questionText':
          'Σε ποιο σώμα του Ευρωκοινοβουλίου πρέπει να δίνει αναφορά η Ύπατη Αρμοστής δύο φορές το χρόνο;',
      'answers': [
        {'text': 'AFET', 'score': 0},
        {'text': 'Ολομέλεια', 'score': 10},
        {'text': 'Επιτροπή Περιβάλλοντος', 'score': 0},
        {'text': 'Επιτροπή Εμπορίου', 'score': 0},
      ],
    },

//9.401
    {
      'questionText':
          'Που βρίσκεται η μεγαλύτερη μη στρατιωτική επιχείρηση (Civilian mission) της ΚΠΑΑ (Κοινή Πολιτική Ασφάλειας και Άμυνας) που αριθμεί πάνω από 3.000 άνδρες και γυναίκες;',
      'answers': [
        {'text': 'Ταϊλάνδη', 'score': 0},
        {'text': 'Πεκίνο', 'score': 0},
        {'text': 'Κοσσυφοπέδιο', 'score': 10},
        {'text': 'Ναϊρόμπι', 'score': 0},
      ],
    },

//9.402
    {
      'questionText':
          'Οι δαπάνες που έχουν στρατιωτικές συνέπειες ή αφορούν στον τομέα της άμυνας χρηματοδοτούνται από:',
      'answers': [
        {'text': 'Το ΝΑΤΟ', 'score': 0},
        {'text': 'Το SEDE', 'score': 0},
        {'text': 'Τα κράτη μέλη', 'score': 10},
        {'text': 'Το Διεθνές Νομισματικό Ταμείο', 'score': 0},
      ],
    },

//9.403
    {
      'questionText': 'Ποιο στόχο έχει η ναυτική επιχείρηση ΚΠΑΑ ATALANTA;',
      'answers': [
        {
          'text':
              'Την αποτροπή & αντιμετώπιση της πειρατείας στα νερά της Σομαλίας & τον Ινδικό Ωκεανό',
          'score': 10
        },
        {'text': 'Την ενίσχυση του εμπορίου στον Ατλαντικό', 'score': 0},
        {'text': 'Την προώθηση του ανταγωνισμού', 'score': 0},
        {'text': 'Την εξόρυξη φυσικού αερίου', 'score': 0},
      ],
    },

//9.404
    {
      'questionText':
          'Τι είδους προσωπικό αποστέλλει η ΕΕ στις μη στρατιωτικές επιχειρήσεις της;',
      'answers': [
        {'text': 'Αθλητές', 'score': 0},
        {'text': 'Δημοσιογράφους', 'score': 0},
        {'text': 'Υδραυλικούς', 'score': 0},
        {'text': 'Αστυνομικούς, δικαστές, τελωνειακούς', 'score': 10},
      ],
    },

//9.405
    {
      'questionText': 'Ποιος ήταν ο Αντρέι Ζαχάρωφ;',
      'answers': [
        {
          'text':
              'Ρώσος φυσικός που τιμήθηκε με το βραβείο Νόμπελ Ειρήνης το 1975',
          'score': 10
        },
        {'text': 'Ιάπωνας πυρηνικός φυσικός', 'score': 0},
        {'text': 'Έλληνας μαθηματικός', 'score': 0},
        {'text': 'Άγγλος, εκ των ιδρυτών της ΕΕ', 'score': 0},
      ],
    },

//9.406
    {
      'questionText':
          'Ποια συνθήκη επέκτεινε τις αρμοδιότητες του Ευρωπαϊκού οργανισμού Άμυνας;',
      'answers': [
        {'text': 'Της Νίκαιας', 'score': 0},
        {'text': 'Της Λισαβόνας', 'score': 10},
        {'text': 'Της Λευκωσίας', 'score': 0},
        {'text': 'Της Τεχεράνης', 'score': 0},
      ],
    },

//9.407
    {
      'questionText':
          'Ποιος είναι ο κύριος στόχος του Ευρωπαϊκού οργανισμού Άμυνας;',
      'answers': [
        {
          'text': 'Η βελτίωση των στρατιωτικών δυνατοτήτων των κρατών μελών',
          'score': 10
        },
        {'text': 'Μια Ευρώπη χωρίς στρατούς', 'score': 0},
        {'text': 'Η επέκταση της εδαφικής κυριαρχίας της Ευρώπης', 'score': 0},
        {'text': 'Η έναρξη του Γ’ Παγκοσμίου Πολέμου', 'score': 0},
      ],
    },

//9.408
    {
      'questionText': 'Οι κύριες ευρωπαϊκές στρατιωτικές δυνάμεις είναι:',
      'answers': [
        {'text': 'ΕΦ, ΕΛΔΥΚ', 'score': 0},
        {'text': 'ΓΕΕΘΑ, ΓΕΣ', 'score': 0},
        {'text': 'EU Battlegroups, Eurocorps, Euromarfor', 'score': 10},
        {'text': 'Euronews, Euribor', 'score': 0},
      ],
    },

//9.409
    {
      'questionText':
          'Πόσα στελέχη έχει, συνήθως, κάθε πολυεθνική στρατιωτική μονάδα των EU Battlegroups;',
      'answers': [
        {'text': '100', 'score': 0},
        {'text': '150', 'score': 0},
        {'text': '2500', 'score': 0},
        {'text': '1500', 'score': 10},
      ],
    },

//SOS
//9.410
    {
      'questionText': 'Η Eurocorps συγκεντρώνει:',
      'answers': [
        {
          'text':
              'Χερσαίες δυνάμεις των: Γερμανίας, Βελγίου, Ισπανίας, Γαλλίας και Λουξεμβούργου',
          'score': 10
        },
        {'text': 'Χερσαίες δυνάμεις της Βραζιλίας', 'score': 0},
        {'text': 'Χερσαίες δυνάμεις της Τουρκίας', 'score': 0},
        {'text': 'Τίποτα από όλα αυτά', 'score': 0},
      ],
    },

//9.411
    {
      'questionText': 'Η Euromarfor συγκεντρώνει:',
      'answers': [
        {'text': 'Ναυτικές δυνάμεις της Κύπρου', 'score': 0},
        {
          'text':
              'Ναυτικές δυνάμεις της Ισπανίας, της Γαλλίας, της Ιταλίας και της Πορτογαλίας',
          'score': 10
        },
        {'text': 'Αεροπορικές δυνάμεις του Ιράν', 'score': 0},
        {'text': 'Χερσαίες δυνάμεις του Ιράκ', 'score': 0},
      ],
    },

//ΣΟΣ
//9.412
    {
      'questionText': 'H Ευρωπαϊκή ομάδα Αεροπορίας συγκεντρώνει:',
      'answers': [
        {
          'text':
              'Αεροπορικές δυνάμεις των: Ιταλίας, Βελγίου, Ισπανίας, Γαλλίας, Γερμανίας, Ολλανδίας, Η.Βασιλείου',
          'score': 10
        },
        {'text': 'Αεροπορικές δυνάμεις της Μάλτας και της Κύπρου', 'score': 0},
        {'text': 'Αεροπορικές δυνάμεις της Ελβετίας', 'score': 0},
        {'text': 'Τίποτα από τα προηγούμενα', 'score': 0},
      ],
    },

//9.413
    {
      'questionText':
          'Σε ποιους από τους πιο κάτω τομείς συνεργάζονται ΕΕ-Ρωσία;',
      'answers': [
        {'text': 'Τουρισμό', 'score': 0},
        {'text': 'Εκπαίδευση', 'score': 0},
        {
          'text': 'Ενεργειακός εφοδιασμός, επενδύσεις και καινοτομία',
          'score': 10
        },
        {'text': 'Δεν συνεργάζονται', 'score': 0},
      ],
    },

//9.414
    {
      'questionText':
          'Το φόρουμ «Ένωση για τη Μεσόγειο» επιδιώκει τη δημιουργία στενότερων δεσμών με:',
      'answers': [
        {'text': 'Την Κίνα', 'score': 0},
        {'text': 'Τις Σκανδιναβικές χώρες', 'score': 0},
        {'text': 'Τις Βαλτικές χώρες', 'score': 0},
        {
          'text': 'Τις χώρες της Μέσης Ανατολής και της Βόρειας Αφρικής',
          'score': 10
        },
      ],
    },

//9.415
    {
      'questionText':
          'Πέρα από τα 28 κράτη μέλη της ΕΕ, πόσες άλλες χώρες συμμετέχουν στο φόρουμ «Ένωση για τη Μεσόγειο»;',
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '15', 'score': 10},
        {'text': '33', 'score': 0},
      ],
    },

//9.416
    {
      'questionText':
          'Στα έργα που θα αναληφθούν μέσω αυτού του φόρουμ, για την αναζωογόνηση της Μεσογείου, περιλαμβάνονται:',
      'answers': [
        {
          'text':
              'Καθαρισμός της Μεσογείου, βελτίωση της ναυτιλίας, αξιοποίηση ηλιακής ενέργειας',
          'score': 10
        },
        {'text': 'Συνδιοργάνωση Ολυμπιακών Αγώνων', 'score': 0},
        {'text': 'Ανάπτυξη ξενοδοχείων στις χώρες της Μεσογείου', 'score': 0},
        {'text': 'Κανένα από αυτά', 'score': 0},
      ],
    },
  ];

  var _qnum = 0;
  var _countnum = 1;
  var _totalScore = 0;
  int seconds = 10;
  bool isCorrect = false;

//  int randnum = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _qnum = _qnum + 1;
      _countnum = _countnum + 1;
//      randnum = randnum + 1;
    });

//    print(_qnum);  //test

//    if (_qnum < 10) {  //test
//      print("we have more questions");
//    } else {
//      print('No more questions');
//    }
  }

  String get resultPhrase {
    String resultText;
    if (_totalScore <= 40) {
      resultText = 'You need more practice!';
    } else if (_totalScore <= 70) {
      resultText = 'Good job!';
    } else {
      resultText = 'Congratulations!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    int randnum;
    randnum = Random().nextInt(46);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: _qnum < 10
          ? Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.indigoAccent[700],
                title: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          '$_countnum/10',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
//                      Container(   //for future updates - ADD TIMER
//                        child: Text(
//                          '        $seconds',
//                          style: TextStyle(
//                            fontSize: 28,
//                          ),
//                        ),
//                      ),
                      Container(
                        child: Text(
                          'Score: $_totalScore',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Flexible(
//                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                              //padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Text(
                                    questions[randnum]['questionText'],
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ...(questions[randnum]['answers']
                              as List<Map<String, Object>>)
                          .map((answer) {
                        return Answer(() => _answerQuestion(answer['score']),
                            answer['text']);
                      }).toList()
                    ],
                  ),
                ],
              ),
            )
          : Scaffold(
              backgroundColor: Colors.indigoAccent[700],
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '$resultPhrase',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 44.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Total score: $_totalScore/100',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => cat9questionpage()),
                              );
                            },
                            child: Text(
                              'Play Again',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => startpage()),
                              );
                            },
                            child: Text(
                              'Main Menu',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
