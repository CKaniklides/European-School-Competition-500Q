import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './answer.dart';
import './start.dart';
import 'dart:math';

import 'helpers.dart';

class cat5questionpage extends StatefulWidget {
  @override
  _cat5questionpageState createState() => _cat5questionpageState();
}

class _cat5questionpageState extends State<cat5questionpage> {
  final questions = const [
//5.217
    {
      'questionText':
          'Προτεραιότητα της κυπριακής Προεδρίας στον τομέα της νεολαίας ήταν:',
      'answers': [
        {'text': 'Η συμμετοχή και κοινωνική ενσωμάτωση των νέων', 'score': 10},
        {'text': 'Ο εθελοντισμός', 'score': 0},
        {'text': 'Η καινοτομία', 'score': 0},
        {'text': 'Η εξασφάλιση περισσότερων θέσεων εργασίας', 'score': 0},
      ],
    },

//5.218
    {
      'questionText': 'Ποια ήταν η «Ευρωπαϊκή Πρωτεύουσα Νεολαίας» το 2019;',
      'answers': [
        {'text': 'Το Νόβι Σάντ', 'score': 10},
        {'text': 'Η Μπράγκα', 'score': 0},
        {'text': 'Η Θεσσαλονίκη', 'score': 0},
        {'text': 'Το Παλέρμο', 'score': 0},
      ],
    },

//5.219
    {
      'questionText': 'Το Ευρωπαϊκό κοινοβούλιο Νέων καθιερώθηκε:',
      'answers': [
        {'text': 'Το 1992', 'score': 0},
        {'text': 'Το 2000', 'score': 0},
        {'text': 'Το 1982', 'score': 0},
        {'text': 'Το 1987', 'score': 10},
      ],
    },

//5.220
    {
      'questionText':
          'Σε ποιες προσωπικότητες απονεμήθηκε, το 2016, το Βραβείο Ζαχάρωφ του Ευρωπαϊκού Κοινοβουλίου για την ελευθερίας της σκέψης;',
      'answers': [
        {
          'text':
              'Στη Μαλάλα Γιουσαφζάι (Malala Yousafzai) και την Αλίν Μουκόβι Νίιμα',
          'score': 0
        },
        {
          'text': 'Στον Στινγκ (Sting) και τον Τζάστιν Τρυντό (Justin Trudeau)',
          'score': 0
        },
        {
          'text':
              'Στη Νάντια Μουράντ Μπασί Ταχά (Nadia Murad Basee Taha) και την Λαμίγια Ατζί Μπασάρ',
          'score': 10
        },
        {
          'text':
              'Στον Χουάν Μανουέλ Σάντος (Juan Manuel Santos) και τον Μπομπ Ντύλαν (Bob Dylan)',
          'score': 0
        },
      ],
    },

//5.221
    {
      'questionText': 'Το βραβείο Lux καθιερώθηκε το 2007 και έχει στόχο:',
      'answers': [
        {
          'text': 'Το βραβείο Lux καθιερώθηκε το 2007 και έχει στόχο:',
          'score': 0
        },
        {
          'text':
              'Τη βράβευση μαθητών που ασχολούνται με ευρωπαϊκά προγράμματα',
          'score': 0
        },
        {
          'text':
              'Τη βράβευση δημοσιογράφων που ασχολούνται ενεργά με θέματα του Κοινοβουλίου',
          'score': 0
        },
        {
          'text':
              'Τη βράβευση ευρωπαϊκών ταινιών οι οποίες προωθούν τις ευρωπαϊκές αξίες',
          'score': 10
        },
      ],
    },

//5.222
    {
      'questionText': 'Στόχοι της πρωτοβουλίας «Νεολαία σε κίνηση» είναι:',
      'answers': [
        {'text': 'Η εκπαίδευση και απασχόληση των νέων', 'score': 10},
        {'text': 'Η υγιής ψυχαγωγία', 'score': 0},
        {'text': 'Η εθελοντική εργασία', 'score': 0},
        {'text': 'Η προάσπιση των δικαιωμάτων των νέων', 'score': 0},
      ],
    },

//5.223
    {
      'questionText':
          '«Διπλή καριέρα - Dualcareers» στον Αθλητισμό σημαίνει ότι οι αθλητές:',
      'answers': [
        {
          'text':
              'Υψηλών επιδόσεων έχουν τη δυνατότητα να σπουδάζουν παράλληλα με τις προπονήσεις τους',
          'score': 10
        },
        {'text': 'Ασχολούνται με δύο επαγγέλματα', 'score': 0},
        {
          'text':
              'Αποφασίζουν αν θα ασχοληθούν με δύο πανεπιστημιακές κατευθύνσεις',
          'score': 0
        },
        {'text': 'Δεν γνωρίζουν τί ακριβώς θα ακολουθήσουν', 'score': 0},
      ],
    },

//5.224
    {
      'questionText':
          'Οι δράσεις για την πρωτοβουλία «Νεολαία σε κίνηση» άρχισαν να τίθενται σε εφαρμογή:',
      'answers': [
        {'text': 'Το 2012', 'score': 0},
        {'text': 'Το 2010', 'score': 10},
        {'text': 'Το 2001', 'score': 0},
        {'text': 'Το 2000', 'score': 0},
      ],
    },

//5.225
    {
      'questionText':
          'Ως πολίτης της ΕΕ, έχετε το δικαίωμα να κάνετε πανεπιστημιακές σπουδές σε οποιαδήποτε χώρα της ΕΕ.',
      'answers': [
        {'text': 'Ναι', 'score': 10},
        {'text': 'Όχι', 'score': 0},
        {
          'text': 'Εναπόκειται στην πολιτική του κάθε κράτους μέλους',
          'score': 0
        },
        {'text': 'Ναι, αλλά θα καταβάλλετε υψηλότερα δίδακτρα', 'score': 0},
      ],
    },

//5.226
    {
      'questionText':
          'Υπάρχει αυτόματη αναγνώριση των τίτλων σπουδών σε όλη την Ευρώπη;',
      'answers': [
        {'text': 'Ναι', 'score': 0},
        {
          'text':
              'Κάθε χώρα εφαρμόζει τους δικούς της κανόνες για την αναγνώριση πτυχίων',
          'score': 10
        },
        {'text': 'Θα ισχύει η αυτόματη αναγνώριση από το 2020', 'score': 0},
        {
          'text': 'Μόνο εάν ο κάτοχος του πτυχίου εγκατασταθεί μόνιμα στη χώρα',
          'score': 0
        },
      ],
    },

//5.227
    {
      'questionText':
          'Πού στοχεύουν οι δράσεις της πρωτοβουλίας «Ευκαιρίες για τους Νέους»;',
      'answers': [
        {'text': 'Στην αύξηση της παραγωγικότητας', 'score': 0},
        {'text': 'Στην επιστημονική κατάρτιση', 'score': 0},
        {'text': 'Στη μείωση της ανεργίας των νέων', 'score': 10},
        {'text': 'Στη βελτίωση των συνθηκών διαβίωσης των νέων', 'score': 0},
      ],
    },

//5.228
    {
      'questionText':
          'Πώς ονομάζεται η πρωτοβουλία της Ε.Επιτροπής στο πλαίσιο της στρατηγικής «Ευρώπη 2020» για την εκπαίδευση και την απασχόληση των νέων της ΕΕ;',
      'answers': [
        {'text': 'Νεολαία σε Κίνηση', 'score': 10},
        {'text': 'Ευρωπαϊκή Ένωση για τη Νεολαία', 'score': 0},
        {'text': 'Νεολαία για το 2020', 'score': 0},
        {'text': 'Κινητικότητα για τους Νέους', 'score': 0},
      ],
    },

//5.229
    {
      'questionText':
          'Αν μεταβείτε σε άλλη χώρα της ΕΕ για πρακτική άσκηση ή επαγγελματική κατάρτιση, πρέπει να διαθέτετε πλήρη υγειονομική κάλυψη στη χώρα υποδοχής;',
      'answers': [
        {'text': 'Ναι', 'score': 10},
        {'text': 'Όχι', 'score': 0},
        {'text': 'Ανάλογα με την πολιτική κάθε χώρας', 'score': 0},
        {
          'text': 'Σας καλύπτει η ευρωπαϊκή κάρτα ασφάλισης ασθενείας',
          'score': 0
        },
      ],
    },

//5.230
    {
      'questionText':
          'Ο εθελοντισμός είναι ένας θαυμάσιος τρόπος για να βοηθήσει κανείς τοπικές κοινότητες στη χώρα του ή στο εξωτερικό. Αρμόδια Αρχή είναι:',
      'answers': [
        {'text': 'Ο Ευρωπαϊκός Οργανισμός Περιβάλλοντος', 'score': 0},
        {'text': 'Η Ευρωπαϊκή Επιτροπή', 'score': 0},
        {'text': 'Το Ευρωπαϊκό Κοινοβούλιο', 'score': 0},
        {'text': 'Η Ευρωπαϊκή Εθελοντική Υπηρεσία', 'score': 10},
      ],
    },

//5.231
    {
      'questionText':
          'Ποιες χώρες της ΕΕ άσκησαν την Προεδρία της Ένωσης το 2017;',
      'answers': [
        {'text': 'Η Πολωνία και η Αυστρία', 'score': 0},
        {'text': 'Η Μάλτα και η Εσθονία', 'score': 10},
        {'text': 'Η Μάλτα και η Γερμανία', 'score': 0},
        {'text': 'Η Λετονία και η Λιθουανία', 'score': 0},
      ],
    },

//5.232
    {
      'questionText':
          'Τι ποσοστό παιδιών στην Ευρώπη πέφτουν θύματα κάποιας μορφής σεξουαλικής κακοποίησης;',
      'answers': [
        {'text': '10%-20%', 'score': 10},
        {'text': '5%', 'score': 0},
        {'text': '50%', 'score': 0},
        {'text': '2%', 'score': 0},
      ],
    },

//5.233
    {
      'questionText': 'Η Κύπρος άσκησε την εξάμηνη Προεδρία της ΕΕ το:',
      'answers': [
        {'text': '2011', 'score': 0},
        {'text': '2014', 'score': 0},
        {'text': '2012', 'score': 10},
        {'text': '2015', 'score': 0},
      ],
    },

//5.234
    {
      'questionText': 'H Ευρωπαϊκή κάρτα Νέων είναι:',
      'answers': [
        {'text': 'Εκπτωτική', 'score': 10},
        {'text': 'Φοιτητική', 'score': 0},
        {'text': 'Πιστωτική', 'score': 0},
        {'text': 'Ταξιδιωτική', 'score': 0},
      ],
    },

//5.235
    {
      'questionText':
          'Πόσο ήταν το ποσοστό της νεανικής ανεργίας στην ΕΕ τον Αύγουστο του 2019;',
      'answers': [
        {'text': '8,5%', 'score': 0},
        {'text': '15,3%', 'score': 0},
        {'text': '40,1%', 'score': 0},
        {'text': '14,2%', 'score': 10},
      ],
    },

//5.236
    {
      'questionText': 'Ποια ευρωπαϊκή χώρα είναι πρώτη στην ανεργία νέων;',
      'answers': [
        {'text': 'Ισπανία', 'score': 0},
        {'text': 'Ελλάδα', 'score': 10},
        {'text': 'Αυστρία', 'score': 0},
        {'text': 'Γερμανία', 'score': 0},
      ],
    },

//5.237
    {
      'questionText':
          'Τι ποσοστό των παιδιών στην ΕΕ αντιμετωπίζει τον κίνδυνο της φτώχειας (στοιχεία 2018);',
      'answers': [
        {'text': '50%', 'score': 0},
        {'text': '19%', 'score': 0},
        {'text': '4%', 'score': 0},
        {'text': '24%', 'score': 10},
      ],
    },

//5.238
    {
      'questionText': 'Το πρόγραμμα Νεολαία σε Δράση αποσκοπεί:',
      'answers': [
        {
          'text': 'Στην ενθάρρυνση της συμμετοχής των νέων στη δημόσια ζωή',
          'score': 10
        },
        {'text': 'Στην επαγγελματική κατάρτιση και εκπαίδευση', 'score': 0},
        {'text': 'Στη μείωση της ανεργίας', 'score': 0},
        {
          'text':
              'Στην ενημέρωση των πολιτών για τα δικαιώματα και τις υποχρεώσεις τους',
          'score': 0
        },
      ],
    },

//5.239
    {
      'questionText':
          'Ποιο πρόγραμμα δίνει την ευκαιρία σε μαθητές ηλικίας 16-18 ετών να επισκεφθούν το Στρασβούργο και να γίνουν ευρωβουλευτές για μία μέρα;',
      'answers': [
        {'text': 'Leonardo da Vinci', 'score': 0},
        {'text': 'Comenius', 'score': 0},
        {'text': 'Euroscola', 'score': 10},
        {'text': 'Erasmus', 'score': 0},
      ],
    },

//5.240
    {
      'questionText':
          'Το εκπαιδευτικό πρόγραμμα Euroscola προσφέρει τη δυνατότητα σε μαθητές λυκείου:',
      'answers': [
        {'text': 'Να αποκτήσουν γνώσεις για τις νέες τεχνολογίες', 'score': 0},
        {
          'text':
              'Να αναπτύσσουν τη φαντασία τους και να αποκτήσουν νέες καλλιτεχνικές δεξιότητες',
          'score': 0
        },
        {
          'text':
              'Να εκφράσουν τις προσδοκίες και τα σχέδιά τους για την ευρωπαϊκή οικοδόμηση',
          'score': 10
        },
        {
          'text': 'Να «μυηθούν» στις αξίες και τους κανόνες του Χριστιανισμού',
          'score': 0
        },
      ],
    },

//5.241
    {
      'questionText': 'Ποιο ήταν το θέμα της Ευρωπαϊκής Χρονιάς του 2018;',
      'answers': [
        {'text': 'Η Ευρωπαϊκή χρονιά του εθελοντισμού', 'score': 0},
        {
          'text': 'Η Ευρωπαϊκή χρονιά της πολιτισμικής κληρονομιάς',
          'score': 10
        },
        {'text': 'Η Ευρωπαϊκή χρονιά των γλωσσών', 'score': 0},
        {'text': 'Η Ευρωπαϊκή χρονιά των ανθρώπων με αναπηρίες', 'score': 0},
      ],
    },

//5.242
    {
      'questionText':
          'Ποιοι συμμετέχουν στις ημερίδες Euroscola που διοργανώνονται στο Στρασβούργο της Γαλλίας; ',
      'answers': [
        {'text': 'Παιδιά δημοτικής εκπαίδευσης', 'score': 0},
        {'text': 'Μαθητές λυκείου', 'score': 10},
        {'text': 'Νέοι επιχειρηματίες', 'score': 0},
        {'text': 'Εκπαιδευτικοί', 'score': 0},
      ],
    },

//5.243
    {
      'questionText':
          'Το ετήσιο Ευρωπαϊκό Βραβείο Καρλομάγνου για τη Νεολαία έχει στόχο:',
      'answers': [
        {
          'text':
              'Να ενθαρρύνει την ανάπτυξη της ευρωπαϊκής συνείδησης μεταξύ των νέων',
          'score': 10
        },
        {
          'text': 'Να προωθήσει καινοτόμα επιχειρηματικά προγράμματα',
          'score': 0
        },
        {
          'text':
              'Να ενθαρρύνει νέες πρωτοβουλίες στον χώρο της εκμάθησης και διδασκαλίας γλωσσών',
          'score': 0
        },
        {
          'text': 'Να εξαλείψει τις προκαταλήψεις εναντίον των «ξένων»',
          'score': 0
        },
      ],
    },

//5.244
    {
      'questionText':
          'Πότε η Κύπρος υπέβαλε αίτηση για ένταξη στην Ευρωπαϊκή Ένωση;',
      'answers': [
        {'text': '1990', 'score': 10},
        {'text': '1987', 'score': 0},
        {'text': '1992', 'score': 0},
        {'text': '1995', 'score': 0},
      ],
    },

//5.245
    {
      'questionText': 'Από ποιες χώρες της ΕΕ περνάει ο ποταμός Δούναβης;',
      'answers': [
        {
          'text':
              'Γερμανία, Αυστρία, Σλοβακία, Κροατία, Ουγγαρία, Ρουμανία και Βουλγαρία',
          'score': 10
        },
        {
          'text': 'Γερμανία, Αυστρία, Σερβία, Ουγγαρία, Ρουμανία και Βουλγαρία',
          'score': 0
        },
        {
          'text':
              'Γερμανία, Αυστρία, Σλοβακία, Ουγγαρία, Ρουμανία και Βουλγαρία',
          'score': 0
        },
        {
          'text':
              'Γερμανία, Αυστρία, Κροατία, Ουγγαρία, Ρουμανία και Βουλγαρία',
          'score': 0
        },
      ],
    },

//5.246
    {
      'questionText': 'Η Ευρωπαϊκή Συνομοσπονδία JADE έχει στόχο να:',
      'answers': [
        {'text': 'Υπερασπίζει τα δικαιώματα των εργαζομένων', 'score': 0},
        {
          'text': 'Προάγει την ιδέα της νεανικής επιχειρηματικότητας',
          'score': 10
        },
        {'text': 'Προωθεί την καινοτομία', 'score': 0},
        {'text': 'Στηρίζει τις ευάλωτες ομάδες πληθυσμού', 'score': 0},
      ],
    },

//5.247
    {
      'questionText':
          'Ο Τσέχος θεολόγος και φιλόσοφος Γιόχαν Άμος Κομένιους (1592-1670) ήταν ένας από τους πατέρες:',
      'answers': [
        {'text': 'Της σύγχρονης παιδείας', 'score': 10},
        {'text': 'Της αστρονομίας', 'score': 0},
        {'text': 'Της γλυπτικής', 'score': 0},
        {'text': 'Της ιατρικής', 'score': 0},
      ],
    },

//5.248
    {
      'questionText':
          'Σύμφωνα με έρευνα της Εurostat, το 46% των νέων 18-34 ετών της Ευρωπαϊκής Ένωσης ζουν με τους γονείς τους. Τα υψηλότερα ποσοστά καταγράφονται στη:',
      'answers': [
        {'text': 'Δανία', 'score': 0},
        {'text': 'Σουηδία', 'score': 0},
        {'text': 'Γερμανία', 'score': 0},
        {'text': 'Σλοβακία', 'score': 10},
      ],
    },

//5.249
    {
      'questionText':
          'Το ευρωπαϊκό πρόγραμμα «Νέοι της Ευρώπης. Ας φροντίσουμε τον Πλανήτη» αποτελεί συνέχιση του προγράμματος που εφαρμόστηκε αρχικά στη:',
      'answers': [
        {'text': 'Βραζιλία', 'score': 10},
        {'text': 'Αυστραλία', 'score': 0},
        {'text': 'Τουρκία', 'score': 0},
        {'text': 'Καναδά', 'score': 0},
      ],
    },

//5.250
    {
      'questionText':
          'Πανευρωπαϊκή έρευνα έδειξε πως οι νέοι παρουσιάζουν σημαντικό πρόβλημα εξάρτησης στο διαδίκτυο σε ποσοστό:',
      'answers': [
        {'text': '13,9%', 'score': 10},
        {'text': '2%', 'score': 0},
        {'text': '5,5%', 'score': 0},
        {'text': '7%', 'score': 0},
      ],
    },

//5.251
    {
      'questionText':
          'Μεγαλύτερο πρόβλημα εθισμού στο διαδίκτυο παρουσιάζουν οι νέοι:',
      'answers': [
        {'text': 'Στην Κύπρο', 'score': 0},
        {'text': 'Στη Ρουμανία', 'score': 10},
        {'text': 'Στην Ισλανδία', 'score': 0},
        {'text': 'Στην Ολλανδία', 'score': 0},
      ],
    },

//5.252
    {
      'questionText':
          'Ποιο είναι το κράτος μέλος με το μικρότερο ποσοστό που θεωρεί ότι η ανεργία είναι ένα από τα μεγαλύτερα προβλήματα που του κράτος; (Ευρωβαρόμετρο 91)',
      'answers': [
        {'text': 'Η Γερμανία', 'score': 0},
        {'text': 'Το Βέλγιο', 'score': 0},
        {'text': 'Η Σουηδία', 'score': 0},
        {'text': 'Η Μάλτα', 'score': 10},
      ],
    },
  ];

  var _qnum = 0;
  var _countnum = 1;
  var _totalScore = 0;
  int seconds = 10;
  bool isCorrect = false;
  int randnum;
  String currentAnswerSelect;

  @override
  void initState() {
    randnum = Random().nextInt(questions.length);
    super.initState();
  }

  void _answerQuestion(dynamic answer) {
    int score = answer['score'];
    _totalScore = _totalScore + score;

    setState(() {
      currentAnswerSelect = answer['text'];
    });

    Timer(Duration(seconds: 1), () {
      if (this.mounted)
        setState(() {
          _qnum = _qnum + 1;
          _countnum = _countnum + 1;
          randnum = Random().nextInt(questions.length);
          currentAnswerSelect = null;
        });
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
                                      fontSize: getRelativeSize(context, 5.5),
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ...(questions[randnum]['answers']
                                as List<Map<String, Object>>)
                            .map((answer) {
                          return Answer(
                            currentAnswerSelect == null
                                ? () => _answerQuestion(answer)
                                : null,
                            answer['text'],
                            color: currentAnswerSelect == null
                                ? null
                                : answer['text'] == currentAnswerSelect
                                    ? (answer['score'] as int) > 0
                                        ? Colors.greenAccent[400]
                                        : Colors.redAccent[100]
                                    : (answer['score'] as int) > 0
                                        ? Colors.greenAccent[400]
                                        : Colors.amberAccent[100],
                          );
                        }).toList()
                      ],
                    ),
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
                      fontSize: getRelativeSize(context, 12.5),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Total score: $_totalScore/100',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getRelativeSize(context, 11.5),
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
                                    builder: (context) => cat5questionpage()),
                              );
                            },
                            child: Text(
                              'Play again',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: getRelativeSize(context, 12),
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
                              'Main menu',
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: getRelativeSize(context, 12),
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
