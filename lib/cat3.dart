import 'dart:async';

import 'package:european_school_competition_ck/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './answer.dart';
import './start.dart';
import 'dart:math';

class cat3questionpage extends StatefulWidget {
  @override
  _cat3questionpageState createState() => _cat3questionpageState();
}

class _cat3questionpageState extends State<cat3questionpage> {
  final questions = const [
//3.97
    {
      'questionText': 'Πότε θα πραγματοποιηθούν οι επόμενες ευρωεκλογές;',
      'answers': [
        {'text': '2022', 'score': 0},
        {'text': '2024', 'score': 10},
        {'text': '2020', 'score': 0},
        {'text': '2021', 'score': 0},
      ],
    },

//3.98
    {
      'questionText':
          'Με πόσους βουλευτές εκπροσωπείται η Κύπρος στο Ευρωπαϊκό Κοινοβούλιο;',
      'answers': [
        {'text': 'Δύο', 'score': 0},
        {'text': 'Έξι', 'score': 10},
        {'text': 'Οκτώ', 'score': 0},
        {'text': 'Δεκαέξι', 'score': 0},
      ],
    },

//3.99
    {
      'questionText': 'Πρόεδρος του Ευρωπαϊκού Κοινοβουλίου είναι ο/η:',
      'answers': [
        {'text': 'Ζαν-Κλοντ Γιούνκερ (Jean-Claude Juncker)', 'score': 0},
        {'text': 'Φεντερίκα Μογκερίνι (Federica Mogherini)', 'score': 0},
        {
          'text': 'Νταβίντ - Μαρία Σασσόλι (David - Maria Sassoli)',
          'score': 10
        },
        {'text': 'Ντόναλντ Τουσκ (Donald Tusk)', 'score': 0},
      ],
    },

//3.100
    {
      'questionText':
          'Ποια από τις πιο κάτω πόλεις δεν αποτελεί έδρα εργασιών του Ευρωπαϊκού Κοινοβουλίου;',
      'answers': [
        {'text': 'Λουξεμβούργο', 'score': 0},
        {'text': 'Βρυξέλλες', 'score': 0},
        {'text': 'Βρυξέλλες', 'score': 0},
        {'text': 'Αμβούργο', 'score': 10},
      ],
    },

//3.101
    {
      'questionText': 'Πόσους βουλευτές διαθέτει το Ευρωπαϊκό Κοινοβούλιο;',
      'answers': [
        {'text': 'Κάτω από 500', 'score': 0},
        {'text': 'Λιγότερους από 600', 'score': 0},
        {'text': 'Περισσότερους από 700', 'score': 10},
        {'text': 'Περισσότερους από 1000', 'score': 0},
      ],
    },

//3.102
    {
      'questionText': 'Τον Ευρωπαϊκό Προϋπολογισμό εγκρίνει:',
      'answers': [
        {'text': 'Η Ευρωπαϊκή Επιτροπή και το Συμβούλιο της ΕΕ', 'score': 0},
        {'text': 'Το Ευρωπαϊκό Συμβούλιο', 'score': 0},
        {
          'text': 'Το Ευρωπαϊκό Κοινοβούλιο και η Ευρωπαϊκή Επιτροπή',
          'score': 0
        },
        {
          'text': 'Το Ευρωπαϊκό Κοινοβούλιο και το Συμβούλιο της ΕΕ',
          'score': 10
        },
      ],
    },

//3.103
    {
      'questionText':
          'Οι πρώτες εκλογές για την άμεση ανάδειξη των μελών του Ευρωπαϊκού Κοινοβουλίου έγιναν το:',
      'answers': [
        {'text': '1950', 'score': 0},
        {'text': '1967', 'score': 0},
        {'text': '1979', 'score': 10},
        {'text': '1980', 'score': 0},
      ],
    },

//3.104
    {
      'questionText': 'Το Ευρωπαϊκό Κοινοβούλιο (ΕΚ) διορίζει τον:',
      'answers': [
        {'text': 'Ευρωπαίο Διαμεσολαβητή', 'score': 10},
        {'text': 'Πρόεδρο της Γαλλίας', 'score': 0},
        {'text': 'Πρόεδρο του Συμβουλίου της ΕΕ', 'score': 0},
        {
          'text':
              'Ύπατο Εκπρόσωπο για την Εξωτερική Πολιτική και Πολιτικής Ασφαλείας',
          'score': 0
        },
      ],
    },

//3.105
    {
      'questionText':
          'Ποιο από τα πιο κάτω δεν αποτελεί αρμοδιότητα του Ευρωπαϊκού Κοινοβουλίου;',
      'answers': [
        {'text': 'Ψήφιση νόμων', 'score': 0},
        {'text': 'Έγκριση του προϋπολογισμού της ΕΕ', 'score': 0},
        {
          'text': 'Εκδίκαση ποινικών υποθέσεων που καθυστερούν στα κράτη μέλη',
          'score': 10
        },
        {
          'text':
              'Άσκηση ελέγχου πάνω στη δράση της Ευρωπαϊκής Επιτροπής  και του Ευρωπαϊκού Συμβουλίου',
          'score': 0
        },
      ],
    },

//3.106
    {
      'questionText': 'Τα έγγραφα του Κοινοβουλίου δημοσιεύονται:',
      'answers': [
        {'text': 'Μόνο στα αγγλικά', 'score': 0},
        {'text': 'Στα αγγλικά και τα γαλλικά', 'score': 0},
        {'text': 'Στα αγγλικά, τα γαλλικά και τα γερμανικά', 'score': 0},
        {'text': 'Σε όλες τις επίσημες γλώσσες της ΕΕ', 'score': 10},
      ],
    },

//3.107
    {
      'questionText': 'Στο Κοινοβούλιο κάθε βουλευτής:',
      'answers': [
        {'text': 'Πρέπει να μιλά στα αγγλικά', 'score': 0},
        {
          'text': 'Πρέπει να μιλά είτε στα αγγλικά είτε στα γαλλικά',
          'score': 0
        },
        {
          'text': 'Πρέπει να μιλά ή στα αγγλικά ή στα γαλλικά ή στα γερμανικά',
          'score': 0
        },
        {
          'text': 'Έχει δικαίωμα να μιλά στην επίσημη γλώσσα της επιλογής του',
          'score': 10
        },
      ],
    },

//3.108
    {
      'questionText':
          'Οι έδρες στο ΕΚ κατανέμονται, κατά γενικό κανόνα, αναλογικά:',
      'answers': [
        {'text': 'Με το πότε εντάχθηκε το κάθε κράτος στην ΕΕ:', 'score': 0},
        {'text': 'Με τον πληθυσμό κάθε κράτους μέλους', 'score': 10},
        {'text': 'Με την πολιτική ομάδα', 'score': 0},
        {'text': 'Με την έκταση της κάθε χώρας', 'score': 0},
      ],
    },

//3.109
    {
      'questionText':
          'Ποια χώρα εκπροσωπείται με τους περισσότερους ευρωβουλευτές;',
      'answers': [
        {'text': 'Γερμανία', 'score': 10},
        {'text': 'Γαλλία', 'score': 0},
        {'text': 'Ολλανδία', 'score': 0},
        {'text': 'Πορτογαλία', 'score': 0},
      ],
    },

//3.110
    {
      'questionText': 'Ο πρόεδρος του Ευρωπαϊκού Κοινοβουλίου εκλέγεται:',
      'answers': [
        {'text': 'Για δύο χρόνια', 'score': 0},
        {'text': 'Για δυόμισι χρόνια', 'score': 10},
        {'text': 'Για τρία χρόνια', 'score': 0},
        {'text': 'Για πέντε χρόνια', 'score': 0},
      ],
    },

//3.111
    {
      'questionText':
          'Με ποια συνθήκη αυξήθηκαν οι νομοθετικές εξουσίες του Ευρωπαϊκού Κοινοβουλίου;',
      'answers': [
        {'text': 'Του Μάαστριχτ', 'score': 0},
        {'text': 'Της Λισαβόνας', 'score': 10},
        {'text': 'Της Νίκαιας', 'score': 0},
        {'text': 'Του Άμστερνταμ', 'score': 0},
      ],
    },

//3.112
    {
      'questionText': 'Το πρόγραμμα «EUROSCOLA» αφορά:',
      'answers': [
        {'text': 'Πρακτική άσκηση μαθητών', 'score': 0},
        {'text': 'Εξετάσεις για εισδοχή στο ΕΚ', 'score': 0},
        {'text': 'Ημερίδες Ευρωπαϊκού Κοινοβουλίου Νέων', 'score': 10},
        {'text': 'Διαδικτυακή πύλη για μαθητές', 'score': 0},
      ],
    },

//3.113
    {
      'questionText': 'Ο Ευρωπαίος Διαμεσολαβητής:',
      'answers': [
        {
          'text':
              'Εξετάζει καταγγελίες, προκειμένου να εντοπίσει κρούσματα κακοδιοίκησης',
          'score': 10
        },
        {
          'text':
              'Εκπροσωπεί την ΕΕ στις εξωτερικές σχέσεις της ΕΕ με άλλους  διεθνείς οργανισμούς',
          'score': 0
        },
        {
          'text':
              'Ορίζει τη γενική κατεύθυνση και τις προτεραιότητες της Ένωσης',
          'score': 0
        },
        {
          'text':
              'Διασφαλίζει την ομοιόμορφη ερμηνεία και εφαρμογή του δικαίου της ΕΕ σε όλα τα μέλη της',
          'score': 0
        },
      ],
    },

//3.114
    {
      'questionText': 'Για να ενταχθεί ένα νέο κράτος μέλος στην ΕΕ:',
      'answers': [
        {'text': 'Πρέπει να πάρει την έγκριση του ΕΚ', 'score': 10},
        {'text': 'Πρέπει να το προτείνει το ΕΚ', 'score': 0},
        {'text': 'Πρέπει να πάρει έγκριση από τον ΟΗΕ', 'score': 0},
        {'text': 'Πρέπει να έχει προεδρικό σύστημα', 'score': 0},
      ],
    },

//3.115
    {
      'questionText':
          'Οι Σύνοδοι ολομέλειας του Ευρωπαϊκού Κοινοβουλίου πραγματοποιούνται:',
      'answers': [
        {'text': 'Δύο φορές το χρόνο', 'score': 0},
        {'text': 'Κάθε τρεις μήνες', 'score': 0},
        {'text': 'Κάθε μήνα', 'score': 10},
        {'text': 'Πριν από κάθε Σύνοδο Κορυφής', 'score': 0},
      ],
    },

//3.116
    {
      'questionText': 'Οι ευρωβουλευτές χωρίζονται σε ομάδες με βάση:',
      'answers': [
        {'text': 'Το κράτος μέλος που εκπροσωπούν', 'score': 0},
        {'text': 'Την πολιτική τους ταυτότητα', 'score': 10},
        {'text': 'Τη μητρική τους γλώσσα', 'score': 0},
        {'text': 'Το κόμμα που τους υποστηρίζει', 'score': 0},
      ],
    },

//3.117
    {
      'questionText': 'Κάθε πότε γίνονται ευρωεκλογές;',
      'answers': [
        {'text': 'Κάθε χρόνο', 'score': 0},
        {'text': 'Κάθε δύο χρόνια', 'score': 0},
        {'text': 'Κάθε τρία χρόνια', 'score': 0},
        {'text': 'Κάθε πέντε χρόνια', 'score': 10},
      ],
    },

//3.118
    {
      'questionText': 'Ποιο από τα πιο κάτω ισχύει;',
      'answers': [
        {
          'text':
              'Οι ευρωπαϊκοί νόμοι είναι ανώτεροι των νόμων των κρατών μελών',
          'score': 10
        },
        {
          'text':
              'Οι ευρωπαϊκοί νόμοι δεν έχουν υποχρεωτικό χαρακτήρα για τα κράτη μέλη',
          'score': 0
        },
        {
          'text':
              'Οι νόμοι των κρατών μελών είναι ανώτεροι των αντίστοιχων ευρωπαϊκών',
          'score': 0
        },
        {
          'text':
              'Οι ευρωπαϊκοί νόμοι ισχύουν εφόσον εγκριθούν από το Δικαστήριο της ΕΕ',
          'score': 0
        },
      ],
    },

//3.119
    {
      'questionText':
          'Μια πρόταση μομφής (επίπληξης) προς την Ευρωπαϊκή Επιτροπή από το ΕΚ μπορεί να υιοθετηθεί: ',
      'answers': [
        {'text': 'Με απλή πλειοψηφία', 'score': 0},
        {'text': 'Με απόλυτη πλειοψηφία', 'score': 0},
        {'text': 'Με πλειοψηφία των δύο τρίτων των ψήφων', 'score': 10},
        {'text': 'Με πλειοψηφία των πέντε έκτων των μελών του', 'score': 0},
      ],
    },

//3.120
    {
      'questionText':
          'Ποια ήταν η πρώτη γυναίκα που εκλέχθηκε πρόεδρος του Ευρωπαϊκού Κοινοβουλίου;',
      'answers': [
        {'text': 'Nικόλ Φοντέν (Nicole Fontaine)', 'score': 0},
        {'text': 'Σιμόν Bέιλ (Simone Veil)', 'score': 10},
        {'text': 'Μαργκό Γουόλστρομ (Margot Wallström)', 'score': 0},
        {'text': 'Ντανούτα Χούμπνερ (Danuta Hübner)', 'score': 0},
      ],
    },

//3.121
    {
      'questionText':
          'Οι Σύνοδοι ολομέλειας (πλήρεις και μίνι) του Ευρωπαϊκού Κοινοβουλίου πραγματοποιούνται:',
      'answers': [
        {'text': 'Στο Στρασβούργο και στο Λουξεμβούργο', 'score': 0},
        {
          'text': 'Στις Βρυξέλλες, το Λουξεμβούργο και το Στρασβούργο',
          'score': 0
        },
        {
          'text':
              'Στο Στρασβούργο οι πλήρεις ολομέλειες και στις Βρυξέλλες οι μίνι ολομέλειες',
          'score': 10
        },
        {'text': 'Μόνο στο Στρασβούργο', 'score': 0},
      ],
    },

//3.122
    {
      'questionText': 'Η ανάδειξη των ευρωβουλευτών γίνεται:',
      'answers': [
        {'text': 'Με διορισμό τους από τα εθνικά κοινοβούλια', 'score': 0},
        {
          'text':
              'Με γνωμοδότηση της Ευρωπαϊκής Επιτροπής και του Συμβουλίου της ΕΕ',
          'score': 0
        },
        {
          'text': 'Με καθολική και μυστική ψηφοφορία της Συνόδου Κορυφής',
          'score': 0
        },
        {
          'text':
              'Με άμεση, καθολική και μυστική ψηφοφορία από τους πολίτες της ΕΕ',
          'score': 10
        },
      ],
    },

//3.123
    {
      'questionText': 'Η έδρα του Ευρωπαίου Διαμεσολαβητή βρίσκεται:',
      'answers': [
        {'text': 'Στην Ελλάδα', 'score': 0},
        {'text': 'Στις Βρυξέλλες', 'score': 0},
        {'text': 'Στο Στρασβούργο', 'score': 10},
        {'text': 'Στο Λουξεμβούργο', 'score': 0},
      ],
    },

//3.124
    {
      'questionText':
          'Ποιο από τα πιο κάτω δεν αποτελεί αρμοδιότητα του Γραφείου του Ευρωπαϊκού Κοινοβουλίου στην κύπρο:',
      'answers': [
        {
          'text':
              'Να απαντά σε ερωτήσεις του κοινού για το Ευρωπαϊκό Κοινοβούλιο και τις πολιτικές της ΕΕ',
          'score': 0
        },
        {
          'text':
              'Να τηρεί ενήμερα τα μέσα μαζικής ενημέρωσης για νέα του Κοινοβουλίου',
          'score': 0
        },
        {
          'text':
              'Να εργάζεται σε στενή επαφή με ακαδημαϊκούς φορείς και να παρέχει εκπαιδευτικό υλικό',
          'score': 0
        },
        {
          'text':
              'Να εξετάζει καταγγελίες, προκειμένου να εντοπίσει κρούσματα κακοδιοίκησης',
          'score': 10
        },
      ],
    },

//3.125
    {
      'questionText':
          'Για την υποβολή μιας νομοθετικής πρότασης μέσω της Ευρωπαϊκής Πρωτοβουλίας Πολιτών απαιτούνται:',
      'answers': [
        {'text': '100 χιλιάδες υπογραφές', 'score': 0},
        {'text': 'Ένα εκατομμύριο υπογραφές', 'score': 10},
        {'text': 'Δύο εκατομμύρια υπογραφές', 'score': 0},
        {'text': 'Τρία εκατομμύρια υπογραφές', 'score': 0},
      ],
    },

//3.126
    {
      'questionText':
          'Ποιο από τα πιο κάτω δεν ισχύει αναφορικά με τη διαδικασία συνδιαλλαγής μεταξύ ΕΚ και Συμβουλίου;',
      'answers': [
        {
          'text':
              'Αφού σταλεί από την Επιτροπή η πρόταση εξετάζεται και συζητείται δύο φορές διαδοχικά',
          'score': 0
        },
        {
          'text':
              'Αν τα δύο όργανα δεν μπορούν να συμφωνήσουν, η πρόταση υποβάλλεται στην επιτροπή συνδιαλλαγής',
          'score': 0
        },
        {
          'text':
              'Η οριστική συμφωνία των δύο θεσμικών οργάνων είναι αναγκαία για την έγκριση του κειμένου',
          'score': 0
        },
        {
          'text':
              'Το Κοινοβούλιο δεν μπορεί να απορρίψει σε καμία περίπτωση την οριστική συμφωνία',
          'score': 10
        },
      ],
    },
//3.127
    {
      'questionText':
          'Η διαδικασία συναπόφασης μεταξύ ΕΚ και Συμβουλίου καθιερώθηκε με τη Συνθήκη:',
      'answers': [
        {'text': 'Του Μάαστριχτ', 'score': 10},
        {'text': 'Της Λισαβόνας', 'score': 0},
        {'text': 'Του Παρισιού', 'score': 0},
        {'text': 'Του Άμστερνταμ', 'score': 0},
      ],
    },

//3.128
    {
      'questionText': 'Το ΕΚ είχε ονομάσει το 2018 έτος:',
      'answers': [
        {'text': 'Ανάπτυξης', 'score': 0},
        {'text': 'Ισότητας των δύο φύλων', 'score': 0},
        {
          'text': 'Ενεργού γήρανσης και αλληλεγγύης μεταξύ των γενεών',
          'score': 0
        },
        {'text': 'Ευρωπαϊκό έτος πολιτιστικής κληρονομιάς', 'score': 10},
      ],
    },

//3.129
    {
      'questionText':
          'Ποιος/α από τους πιο κάτω δεν είναι κύπριος ευρωβουλευτής;',
      'answers': [
        {'text': 'Λευτέρης Χριστοφόρου', 'score': 0},
        {'text': 'Δημήτρης Παπαδάκης', 'score': 0},
        {'text': 'Niyazi Kızılyürek', 'score': 0},
        {'text': 'Ελένη Θεοχάρους', 'score': 10},
      ],
    },

//3.130
    {
      'questionText':
          'Η πολιτική ομάδα που είχε τους περισσότερους βουλευτές στο Ευρωπαϊκό Κοινοβούλιο το 2014 είναι η ομάδα:',
      'answers': [
        {
          'text': 'Της Συμμαχίας Φιλελευθέρων και Δημοκρατών για την Ευρώπη ',
          'score': 0
        },
        {'text': 'Του Ευρωπαϊκού Λαϊκού Κόμματος ', 'score': 10},
        {'text': 'Της Ευρώπης Ελευθερίας και Δημοκρατίας ', 'score': 0},
        {'text': 'Των Πρασίνων/Ευρωπαϊκή Ελεύθερη Συμμαχία', 'score': 0},
      ],
    },

//3.131
    {
      'questionText':
          'Για την ελευθερία της σκέψης, κάθε χρόνο το Ευρωπαϊκό Κοινοβούλιο απονέμει σε άτομα ή οργανώσεις το βραβείο:',
      'answers': [
        {'text': 'Μπούκερ', 'score': 0},
        {'text': 'Νόμπελ', 'score': 0},
        {'text': 'Άμπελ', 'score': 0},
        {'text': 'Ζαχάρωφ', 'score': 10},
      ],
    },

//3.132
    {
      'questionText':
          'Πόσες πολιτικές ομάδες υπάρχουν σήμερα στο Ευρωπαϊκό Κοινοβούλιο;',
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 10},
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
          _countnum = _countnum + 1;
          _qnum = _qnum + 1;
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
                                    builder: (context) => cat3questionpage()),
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
