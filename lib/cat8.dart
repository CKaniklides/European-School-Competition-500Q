import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './answer.dart';
import './start.dart';
import 'dart:math';

class cat8questionpage extends StatefulWidget {
  @override
  _cat8questionpageState createState() => _cat8questionpageState();
}

class _cat8questionpageState extends State<cat8questionpage> {
  final questions = const [
//8.325
    {
      'questionText':
          'Σύμφωνα με τη συνθήκη του Μάαστριχτ, κάθε πολίτης της ΕΕ, ανεξαρτήτως εθνικότητας, έχει το δικαίωμα:',
      'answers': [
        {
          'text':
              'Να ψηφίζει και να είναι υποψήφιος στη χώρα της ΕΕ στην οποία ζει',
          'score': 10
        },
        {'text': 'Προστασίας των προσωπικών του δεδομένων', 'score': 0},
        {'text': 'Δίκαιης δίκης, πολιτικής ή ποινικής', 'score': 0},
        {'text': 'Ελευθερίας της έκφρασης', 'score': 0},
      ],
    },

//8.326
    {
      'questionText': 'Τα δικαιώματα των πολιτών της ΕΕ προστατεύονται από:',
      'answers': [
        {'text': 'Την αρμόδια αρχή κάθε χώρας', 'score': 0},
        {'text': 'Τον Χάρτη των Θεμελιωδών Δικαιωμάτων', 'score': 10},
        {'text': 'Το Ευρωπαϊκό Κοινοβούλιο', 'score': 0},
        {'text': 'Τον Ευρωπαίο Επίτροπο', 'score': 0},
      ],
    },

//8.327
    {
      'questionText':
          'Ο Χάρτης των Θεμελιωδών Δικαιωμάτων της Ευρωπαϊκής Ένωσης διακηρύχθηκε:',
      'answers': [
        {'text': 'Το 2000', 'score': 10},
        {'text': 'Το 2007', 'score': 0},
        {'text': 'Το 2004', 'score': 0},
        {'text': 'Το 1998', 'score': 0},
      ],
    },

//8.328
    {
      'questionText':
          'Ο Χάρτης κατέστη νομικά δεσμευτικός στο σύνολο της ΕΕ με την έναρξη ισχύος της συνθήκης:',
      'answers': [
        {'text': 'Του Άμστερνταμ', 'score': 0},
        {'text': 'Της Νίκαιας', 'score': 0},
        {'text': 'Για τη θέσπιση Συντάγματος της Ευρώπης', 'score': 0},
        {'text': 'Της Λισαβόνας', 'score': 10},
      ],
    },

//8.329
    {
      'questionText':
          'Ο σεβασμός της ανθρώπινης αξιοπρέπειας και των δικαιωμάτων του ανθρώπου, η ελευθερία, η δημοκρατία, η ισότητα και το κράτος δικαίου αποτελούν:',
      'answers': [
        {
          'text': 'Αξίες που εφαρμόζονται μόνο σε μερικά κράτη μέλη',
          'score': 0
        },
        {'text': 'Κοινές αξίες της ΕΕ', 'score': 10},
        {'text': 'Ακατοχύρωτες αξίες', 'score': 0},
        {'text': 'Αξίες που παραβιάζονται', 'score': 0},
      ],
    },

//8.330
    {
      'questionText':
          'Το Ευρωπαϊκό Δικαστήριο Δικαιωμάτων του Ανθρώπου εδρεύει:',
      'answers': [
        {'text': 'Στις Βρυξέλλες', 'score': 0},
        {'text': 'Στο Λουξεμβούργο', 'score': 0},
        {'text': 'Στη Φρανκφούρτη', 'score': 0},
        {'text': 'Στο Στρασβούργο', 'score': 10},
      ],
    },

//8.331
    {
      'questionText': 'Το Ευρωπαϊκό Δικαστήριο:',
      'answers': [
        {
          'text':
              'Μεσολαβεί εκ μέρους σας ενώπιον της αρχής κατά της οποίας υποβάλλετε παράπονο',
          'score': 0
        },
        {
          'text':
              'Σας βοηθά στην ανεύρεση ή πληρωμή δικηγόρου για τη σύνταξη της προσφυγής',
          'score': 0
        },
        {
          'text': 'Δεν λειτουργεί ως εφετείο ως προς τα εθνικά δικαστήρια',
          'score': 10
        },
        {
          'text': 'Είναι αρμόδιο για την εκτέλεση των αποφάσεών του',
          'score': 0
        },
      ],
    },

//8.332
    {
      'questionText':
          'Οι πολίτες μπορούν να υποβάλουν αναφορά για να καταγγείλουν κάθε παραβίαση του κοινοτικού δικαίου:',
      'answers': [
        {'text': 'Στην Ισλαμική Διάσκεψη', 'score': 0},
        {'text': 'Στο Ευρωπαϊκό Κοινοβούλιο', 'score': 10},
        {'text': 'Στο Συμβούλιο Ασφαλείας του ΟΗΕ', 'score': 0},
        {'text': 'Στη Βασίλισσα της Αγγλίας', 'score': 0},
      ],
    },

//8.333
    {
      'questionText':
          'Η θέση του Ευρωπαίου Διαμεσολαβητή δημιουργήθηκε με τη συνθήκη για την Ευρωπαϊκή Ένωση:',
      'answers': [
        {'text': 'Το 1986', 'score': 0},
        {'text': 'Το 1992', 'score': 10},
        {'text': 'Το 2004', 'score': 0},
        {'text': 'Το 2001', 'score': 0},
      ],
    },

//8.334
    {
      'questionText':
          'Διαμεσολαβητής εκλέγεται από το Ευρωπαϊκό κοινοβούλιο και η θητεία του είναι:',
      'answers': [
        {'text': 'Πενταετής', 'score': 10},
        {'text': 'Δεκαετής', 'score': 0},
        {'text': 'Ετήσια', 'score': 0},
        {'text': 'Εξαμηνιαία', 'score': 0},
      ],
    },

//8.335
    {
      'questionText': 'Ο Διαμεσολαβητής διενεργεί έρευνες:',
      'answers': [
        {'text': 'Μόνο μετά από καταγγελία πολιτών', 'score': 0},
        {'text': 'Πάντα με δική του πρωτοβουλία', 'score': 0},
        {'text': 'Μετά από υπόδειξη του Ευρωπαϊκού Κοινοβουλίου', 'score': 0},
        {
          'text': 'Είτε μετά από καταγγελία είτε με δική του πρωτοβουλία',
          'score': 10
        },
      ],
    },

//8.336
    {
      'questionText':
          'Τα τέλη διεθνούς περιαγωγής εντός της ΕΕ, δίνει τη δυνατότητα στους Κύπριους πολίτες, να δέχονται και να διενεργούν κλήσεις από το κινητό τους:',
      'answers': [
        {'text': 'Με μειωμένα τέλη', 'score': 0},
        {
          'text':
              'Με τα ίδια τέλη που ισχύουν και στην Κύπρο (Roam like at home)',
          'score': 10
        },
        {'text': 'Στη μισή τιμή', 'score': 0},
        {'text': 'Χωρίς χρέωση', 'score': 0},
      ],
    },

//8.337
    {
      'questionText':
          'Η Άμεση Ευρώπη είναι μια υπηρεσία που σας βοηθά να λύσετε τα ερωτήματά σας για την ΕΕ. Ποιον αριθμό πρέπει να καλέσετε για να θέσετε το ερώτημά σας;',
      'answers': [
        {'text': '0080067891011', 'score': 10},
        {'text': '112', 'score': 0},
        {'text': '0800800112', 'score': 0},
        {'text': '999', 'score': 0},
      ],
    },

//8.338
    {
      'questionText':
          'Οι πολίτες της ΕΕ έχουν δικαίωμα να διαμένουν ελεύθερα οπουδήποτε στην ΕΕ.',
      'answers': [
        {'text': ' Ναι', 'score': 10},
        {'text': ' Όχι', 'score': 0},
        {'text': ' Κάτω από προϋποθέσεις ', 'score': 0},
        {'text': ' Μόνο σε μερικές ευρωπαϊκές χώρες', 'score': 0},
      ],
    },

//8.339
    {
      'questionText':
          'Τι μπορούν να κάνουν οι πολίτες, όπως προβλέπει η πρωτοβουλία 1.000.000 πολιτών;',
      'answers': [
        {
          'text':
              'Να ζητήσουν μεγαλύτερη εκπροσώπηση της χώρας τους στο Ευρωκοινοβούλιο',
          'score': 0
        },
        {
          'text':
              'Να καλέσουν την Ε.Επιτροπή να προωθήσει μια νομοθετική πρόταση πάνω σε ένα ζήτημα',
          'score': 10
        },
        {
          'text': 'Να ζητήσουν την αλλαγή ενός η περισσότερων επιτρόπων',
          'score': 0
        },
        {
          'text':
              'Να καλέσουν τον πρόεδρο του Ευρωπαϊκού Συμβουλίου να επισκεφθεί τη χώρα τους',
          'score': 0
        },
      ],
    },

//8.340
    {
      'questionText':
          'Με ποιά συνθήκη θεσπίστηκε η Πρωτοβουλία των Ευρωπαίων Πολιτών;',
      'answers': [
        {'text': 'Συνθήκη της Λισαβόνας', 'score': 10},
        {'text': 'Συνθήκη του Άμστερνταμ', 'score': 0},
        {'text': 'Συνθήκη της Νίκαιας', 'score': 0},
        {'text': 'Συνθήκη για τη θέσπιση Συντάγματος της Ευρώπης', 'score': 0},
      ],
    },

//8.341
    {
      'questionText':
          'Το «Βραβείο του Ευρωπαίου Πολίτη» (Citizen’s Prize) θεσπίστηκε από το Ευρωπαϊκό Κοινοβούλιο ως επιβράβευση για:',
      'answers': [
        {
          'text':
              'Τα επιτεύγματα πολιτών, ομάδων, σωματείων ή οργανώσεων που προωθούν την ενίσχυση της ΕΕ',
          'score': 10
        },
        {
          'text': 'Την εφαρμογή προγραμμάτων προστασίας του περιβάλλοντος',
          'score': 0
        },
        {'text': 'Τη συμμετοχή στα κοινά', 'score': 0},
        {
          'text': 'Την εφαρμογή καινοτόμων ιδεών στον τομέα της τεχνολογίας',
          'score': 0
        },
      ],
    },

//8.342
    {
      'questionText':
          'Οι Κύπριοι Πέτρος Σουππουρής και Χουσεΐν Ακανσόυ κέρδισαν το «Βραβείο του Ευρωπαίου Πολίτη» το 2012. Ποιο μήνυμα δίνει το έργο τους;',
      'answers': [
        {
          'text': 'Αμοιβαία κατανόηση μεταξύ των πολιτών της Κύπρου',
          'score': 10
        },
        {'text': 'Περιβαλλοντική συνείδηση', 'score': 0},
        {'text': 'Αλληλεγγύη για την πάταξη της φτώχειας', 'score': 0},
        {'text': 'Ενάντια στην ξενοφοβία', 'score': 0},
      ],
    },

//8.343
    {
      'questionText': 'Η ευρωπαϊκή κάρτα ασφάλισης ασθένειας εκδίδεται:',
      'answers': [
        {'text': 'Από έναν κεντρικό ευρωπαϊκό φορέα', 'score': 0},
        {'text': 'Από τη την οποίαν επισκέπτεται ο πολίτης', 'score': 0},
        {
          'text': 'Από τις αρμόδιες αρχές της κάθε ευρωπαϊκής χώρας',
          'score': 10
        },
        {'text': 'Από ιδιωτικές ασφαλιστικές εταιρείες', 'score': 0},
      ],
    },

//8.344
    {
      'questionText':
          'Οι κάτοχοι ευρωπαϊκής κάρτας ασθένειας δικαιούνται κάλυψη των ιατρικών τους εξόδων εάν:',
      'answers': [
        {'text': 'Μεταβούν για προγραμματισμένη θεραπεία ', 'score': 0},
        {
          'text':
              'Υποβληθούν σε εξετάσεις ρουτίνας σε οποιοδήποτε ευρωπαϊκό ιατρικό κέντρο',
          'score': 0
        },
        {'text': 'Συμμετέχουν σε πειραματικές θεραπείες', 'score': 0},
        {
          'text': 'Αρρωστήσουν ενόσω ταξιδεύουν σε κάποια άλλη ευρωπαϊκή χώρα',
          'score': 10
        },
      ],
    },

//8.345
    {
      'questionText':
          'Οι Ευρωπαίοι ταξιδιώτες έχουν το δικαίωμα διεκδίκησης αποζημίωσης για απώλεια ή ζημία:',
      'answers': [
        {'text': 'Σε περίπτωση ατυχήματος', 'score': 10},
        {'text': 'Όταν χάσουν την πτήση', 'score': 0},
        {
          'text':
              'Σε περίπτωση μηχανικής βλάβης του μέσου με το οποίο ταξιδεύουν',
          'score': 0
        },
        {
          'text': 'Σε περίπτωση καθυστερημένης άφιξης κατά 10 λεπτά',
          'score': 0
        },
      ],
    },

//8.346
    {
      'questionText':
          'Οι ταξιδιώτες εντός της ΕΕ μπορούν να κάνουν απεριόριστες αγορές στη χώρα που επισκέπτονται και να φέρνουν τα αγαθά στη χώρα τους:',
      'answers': [
        {'text': 'Με μειωμένους δασμούς', 'score': 0},
        {'text': 'Χωρίς δασμούς', 'score': 10},
        {'text': 'Καταβάλλοντας δασμό μόνο για ορισμένα αγαθά', 'score': 0},
        {'text': 'Με δασμό 10%', 'score': 0},
      ],
    },

//8.347
    {
      'questionText':
          'Οι πολίτες των κρατών μελών δικαιούνται για τα ενδοευρωπαϊκά ταξίδια τους:',
      'answers': [
        {'text': 'Απεριόριστο συνάλλαγμα', 'score': 10},
        {'text': 'Συνάλλαγμα μέχρι 1000 ευρώ', 'score': 0},
        {
          'text':
              'Το ύψος του συναλλάγματος εξαρτάται από τις μέρες διαμονής τους σε μια χώρα',
          'score': 0
        },
        {
          'text': 'Κάθε κράτος μέλος έχει τους δικούς του κανονισμούς',
          'score': 0
        },
      ],
    },

//8.348
    {
      'questionText':
          'Ο ευρωπαϊκός αριθμός δωρεάν κλήσης έκτακτης ανάγκης από σταθερά και κινητά τηλέφωνα σε όλη την Ευρωπαϊκή Ένωση είναι:',
      'answers': [
        {'text': '111', 'score': 0},
        {'text': '112', 'score': 10},
        {'text': '113', 'score': 0},
        {'text': '222', 'score': 0},
      ],
    },

//8.349
    {
      'questionText':
          'Η εποπτεία της αγοράς για τον έλεγχο της εφαρμογής των κανόνων σχετικά με την ασφάλεια των προϊόντων και υπηρεσιών εντός της ΕΕ είναι αρμοδιότητα:',
      'answers': [
        {'text': 'Του Ευρωπαϊκού Κοινοβουλίου', 'score': 0},
        {
          'text': 'Των κρατών μελών και συντονίζεται σε ευρωπαϊκό επίπεδο',
          'score': 10
        },
        {'text': 'Του Ευρωπαίου Επιτρόπου', 'score': 0},
        {'text': 'Του Συνήγορου του Πολίτη', 'score': 0},
      ],
    },

//8.350
    {
      'questionText':
          'Όταν παραγγέλλετε προϊόντα από απόσταση η παράδοση πρέπει να πραγματοποιηθεί το αργότερο εντός:',
      'answers': [
        {'text': '30 ημερών', 'score': 10},
        {'text': '10 ημερών', 'score': 0},
        {'text': 'Δύο μηνών', 'score': 0},
        {'text': 'Μίας εβδομάδας', 'score': 0},
      ],
    },

//8.351
    {
      'questionText':
          'Αν το προϊόν που παραγγείλατε διά αλληλογραφίας ή μέσω διαδικτύου σας παραδοθεί μετά την παρέλευση της προθεσμίας μπορείτε:',
      'answers': [
        {
          'text':
              'Να αρνηθείτε την παραλαβή και να σας επιστραφούν τυχόν ποσά που έχετε ήδη καταβάλει',
          'score': 10
        },
        {
          'text': 'Να λάβετε πίσω μόνο ένα μικρό μέρος της προκαταβολής',
          'score': 0
        },
        {
          'text': 'Να το παραλάβετε αλλά να διεκδικήσετε αποζημίωση',
          'score': 0
        },
        {
          'text': 'Να διαμαρτυρηθείτε χωρίς όμως να λάβετε πίσω τα χρήματά σας',
          'score': 0
        },
      ],
    },

//8.352
    {
      'questionText':
          'Η τιμή πώλησης πρέπει να αναγράφεται σε όλα τα προϊόντα που προσφέρονται από τους εμπόρους στους καταναλωτές με τρόπο σαφή και ευανάγνωστο.',
      'answers': [
        {'text': 'Ναι', 'score': 10},
        {'text': 'Όχι', 'score': 0},
        {'text': 'Μόνο σε όσα η τιμή τους είναι πέραν των €10', 'score': 0},
        {'text': 'Μόνο στα τρόφιμα', 'score': 0},
      ],
    },

//8.353
    {
      'questionText': 'Το σήμα CE διασφαλίζει ότι το παιγνίδι που το φέρει:',
      'answers': [
        {'text': 'Είναι καινοτόμο', 'score': 0},
        {
          'text': 'Πληροί τις βασικές απαιτήσεις περί της ασφάλειας',
          'score': 10
        },
        {'text': 'Περιέχει μικρά αντικείμενα', 'score': 0},
        {'text': 'Είναι κατάλληλο για όλες τις ηλικίες', 'score': 0},
      ],
    },

//8.354
    {
      'questionText':
          'Για να εξακριβωθεί ότι ένα προϊόν είναι ασφαλές ή όχι πρέπει να ληφθούν υπόψη τα εξής:',
      'answers': [
        {'text': 'Η ποικιλία των χρωμάτων', 'score': 0},
        {'text': 'Το αγοραστικό κοινό στο οποίο απευθύνεται', 'score': 0},
        {
          'text':
              'Τα χαρακτηριστικά του (σύνθεση, συσκευασία, συνθήκες συναρμολόγησης & συντήρησης κλπ)',
          'score': 10
        },
        {'text': 'Το κουτί συσκευασίας', 'score': 0},
      ],
    },

//8.355
    {
      'questionText':
          'Η παρουσίαση του προϊόντος (ετικέτες, οδηγίες σχετικά με τη χρήση και την απόρριψή του) λαμβάνεται υπόψη για την ασφάλειά του.',
      'answers': [
        {'text': 'Ναι', 'score': 10},
        {'text': 'Εξαρτάται', 'score': 0},
        {'text': 'Όχι', 'score': 0},
        {'text': 'Σε ορισμένες περιπτώσεις', 'score': 0},
      ],
    },

//8.356
    {
      'questionText':
          'Αν εντοπιστεί ένα επικίνδυνο προϊόν σε μία χώρα, οι πληροφορίες για το προϊόν κοινοποιούνται στις άλλες χώρες της ΕΕ μέσω του συστήματος:',
      'answers': [
        {'text': 'PROTECT', 'score': 0},
        {'text': 'RAPEX', 'score': 10},
        {'text': 'SAFE USE', 'score': 0},
        {'text': 'DEFECTIVE', 'score': 0},
      ],
    },

//8.357
    {
      'questionText':
          'Για τα τρόφιμα και τις ζωοτροφές λειτουργεί ένα παρόμοιο σύστημα το:',
      'answers': [
        {'text': 'RASFF', 'score': 10},
        {'text': 'FOOD INSPECTION', 'score': 0},
        {'text': 'HEALTH', 'score': 0},
        {'text': 'SAFETY', 'score': 0},
      ],
    },

//8.358
    {
      'questionText':
          'Ποια υπηρεσία είναι, στην Κύπρο, υπεύθυνη για την προστασία της υγείας και της ασφάλειας των καταναλωτών;',
      'answers': [
        {'text': 'Η Υπηρεσία για την Ασφάλεια των Πολιτών', 'score': 0},
        {'text': 'Η Υπηρεσία Ελέγχου Προϊόντων', 'score': 0},
        {'text': 'Η Υπηρεσία Υγιούς Ανταγωνισμού', 'score': 0},
        {'text': 'Η Υπηρεσία Προστασίας Καταναλωτή', 'score': 10},
      ],
    },

//8.359
    {
      'questionText': 'Το τηλέφωνο της Γραμμής Καταναλωτή στην Κύπρο είναι:',
      'answers': [
        {'text': '1429', 'score': 10},
        {'text': '1000', 'score': 0},
        {'text': '1234', 'score': 0},
        {'text': '1888', 'score': 0},
      ],
    },

//8.360
    {
      'questionText':
          'Στα κράτη μέλη της Ευρωπαϊκής Ένωσης λειτουργεί το Δίκτυο Ευρωπαϊκών Κέντρων Καταναλωτή. Σκοπός της ύπαρξης και της λειτουργίας του Δικτύου είναι:',
      'answers': [
        {'text': 'Η ενημέρωση των καταναλωτών για φθηνά προϊόντα', 'score': 0},
        {'text': 'Η προστασία του ανταγωνισμού', 'score': 0},
        {
          'text':
              'Η παροχή πληροφοριών και συμβουλών σε καταναλωτές που κάνουν αγορές εντός της ΕΕ',
          'score': 10
        },
        {'text': 'Η διενέργεια δειγματοληπτικών ελέγχων', 'score': 0},
      ],
    },

//8.361
    {
      'questionText':
          'Στην τιμή ενός προϊόντος που αγοράζετε μέσω διαδικτύου συνυπολογίζεται ο ΦΠΑ του κράτους όπου έχει την έδρα του ο προμηθευτής.',
      'answers': [
        {'text': 'Ναι', 'score': 10},
        {'text': 'Όχι', 'score': 0},
        {'text': 'Καταβάλλεται μόνο 5%', 'score': 0},
        {'text': 'Δεν πληρώνετε ΦΠΑ', 'score': 0},
      ],
    },

//8.362
    {
      'questionText': 'Η 22η Σεπτεμβρίου έχει καθιερωθεί ως:',
      'answers': [
        {'text': 'Ευρωπαϊκή μέρα καταναλωτών', 'score': 0},
        {'text': 'Ευρωπαϊκή μέρα χωρίς αυτοκίνητο', 'score': 10},
        {'text': 'Ευρωπαϊκή μέρα καταπολέμησης της φτώχειας', 'score': 0},
        {'text': 'Ευρωπαϊκή μέρα προστασίας του παιδιού', 'score': 0},
      ],
    },

//8.363
    {
      'questionText':
          'Σκοπός της πύλης EURES είναι η παροχή πληροφοριών, συμβουλών και υπηρεσιών για:',
      'answers': [
        {'text': 'Eύρεση κατάλληλων θέσεων εργασίας', 'score': 10},
        {'text': 'Το λιανικό εμπόριο', 'score': 0},
        {'text': 'Τη γυναικεία επιχειρηματικότητα', 'score': 0},
        {'text': 'Τα εκπαιδευτικά προγράμματα', 'score': 0},
      ],
    },

//8.364
    {
      'questionText':
          'Ως υπήκοος της ΕΕ έχετε το δικαίωμα να σπουδάσετε σε άλλη χώρα της ΕΕ. Αν μείνετε εκεί για λιγότερο από 3 μήνες, χρειάζεστε μόνο:',
      'answers': [
        {
          'text':
              'Απόδειξη της εγγραφής σας σε εγκεκριμένο εκπαιδευτικό ίδρυμα',
          'score': 0
        },
        {'text': 'Απόδειξη πλήρους υγειονομικής ασφάλισης', 'score': 0},
        {'text': 'Ισχύον δελτίο ταυτότητας ή διαβατήριο', 'score': 10},
        {
          'text': 'Δήλωση ότι διαθέτετε επαρκείς πόρους για να ζήσετε',
          'score': 0
        },
      ],
    },

//8.365
    {
      'questionText':
          'Αν επισκεφθείτε άλλη χώρα της ΕΕ ως τουρίστας, πρέπει να προβείτε σε κάποιες διατυπώσεις;',
      'answers': [
        {
          'text': 'Όχι αν παραμείνετε στη χώρα λιγότερο από τρεις μήνες',
          'score': 10
        },
        {
          'text': 'Χρειάζεστε ειδική άδεια εισόδου και παραμονής στη χώρα',
          'score': 0
        },
        {
          'text':
              'Πρέπει να προσκομίσετε βεβαίωση από την πρεσβεία της χώρας σας ότι είστε προσωρινός επισκέπτης',
          'score': 0
        },
        {
          'text': 'Συμπληρώνετε σχετικό έντυπο κατά την είσοδό σας στη χώρα',
          'score': 0
        },
      ],
    },

//8.366
    {
      'questionText':
          'Τι ποσοστό των πολιτών της ευρωζώνης δηλώνουν ότι το ευρώ είναι θετικό για την ΕΕ στο σύνολό της σύμφωνα με έρευνα του Ευρωβαρόμετρου τον Νοέμβριο 2018;',
      'answers': [
        {'text': '74%', 'score': 10},
        {'text': '37%', 'score': 0},
        {'text': '55%', 'score': 0},
        {'text': '27%', 'score': 0},
      ],
    },

//8.367
    {
      'questionText':
          'Ως υπήκοος χώρας της ΕΕ έχετε το δικαίωμα να εργάζεστε σε οποιαδήποτε χώρα της ΕΕ χωρίς να χρειάζεστε άδεια εργασίας.',
      'answers': [
        {'text': 'Όχι', 'score': 0},
        {'text': 'Σε μερικές μόνο χώρες', 'score': 0},
        {'text': 'Ναι', 'score': 10},
        {
          'text': 'Σε όσες χώρες έχουν συνάψει συμφωνία με την Κύπρο',
          'score': 0
        },
      ],
    },

//8.368
    {
      'questionText':
          'Οι Κύπριοι πολίτες έχουν τα ίδια δικαιώματα κοινωνικής ασφάλισης με τους πολίτες του κράτους μέλους της ΕΕ στο οποίο διαμένουν ή εργάζονται.',
      'answers': [
        {'text': 'Όχι', 'score': 0},
        {'text': 'Σε ορισμένες χώρες της ΕΕ', 'score': 0},
        {'text': 'Μόνο όταν συμπληρώσουν δέκα χρόνια εργασίας', 'score': 0},
        {'text': 'Ναι', 'score': 10},
      ],
    },

//8.369
    {
      'questionText':
          'Αν έχετε ζήσει νόμιμα σε άλλη χώρα της ΕΕ για 5 χρόνια χωρίς διακοπή αποκτάτε αυτόματα το δικαίωμα:',
      'answers': [
        {'text': 'Προσωρινής διαμονής', 'score': 0},
        {'text': 'Μόνιμης διαμονής', 'score': 10},
        {'text': 'Άδειας παραμονής', 'score': 0},
        {'text': 'Συμμετοχής σε προγράμματα συνεχούς επιμόρφωσης', 'score': 0},
      ],
    },

//8.370
    {
      'questionText':
          'Η αρχή της ελεύθερης διακίνησης εργαζομένων εφαρμόζεται στην Κύπρο από:',
      'answers': [
        {'text': 'Τον Δεκέμβριο του 2002', 'score': 0},
        {'text': 'Τον Μάιο του 2004', 'score': 10},
        {'text': 'Τον Ιανουάριο του 2008', 'score': 0},
        {'text': 'Τον Απρίλιο του 2003', 'score': 0},
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
                                    builder: (context) => cat8questionpage()),
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
