import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './answer.dart';
import './start.dart';
import 'dart:math';

class cat10questionpage extends StatefulWidget {
  @override
  _cat10questionpageState createState() => _cat10questionpageState();
}

class _cat10questionpageState extends State<cat10questionpage> {
  final questions = const [
//10.417
    {
      'questionText': 'Τι πληθυσμό έχει η Ευρώπη των 28 (στοιχεία 2018);',
      'answers': [
        {'text': 'Περίπου 300 εκατομμύρια', 'score': 0},
        {'text': 'Περίπου 1 δισεκατομμύριο', 'score': 0},
        {'text': 'Περίπου 500 εκατομμύρια', 'score': 10},
        {'text': 'Περίπου 800 εκατομμύρια', 'score': 0},
      ],
    },

//10.418
    {
      'questionText': 'Ποια χώρα της ΕΕ έχει τη μεγαλύτερη έκταση;',
      'answers': [
        {'text': 'Η Κροατία', 'score': 0},
        {'text': 'Η Γαλλία', 'score': 10},
        {'text': 'Η Ισπανία', 'score': 0},
        {'text': 'Η Γερμανία', 'score': 0},
      ],
    },

//10.419
    {
      'questionText':
          'Σύμφωνα με το Ευρωβαρόμετρο της Άνοιξης 2019, τι ποσοστό των Ευρωπαίων πολιτών απάντησε ότι η ζωή τους θα είναι καλύτερη σε ένα χρόνο;',
      'answers': [
        {'text': '26%', 'score': 0},
        {'text': '32%', 'score': 10},
        {'text': '43%', 'score': 0},
        {'text': '49%', 'score': 0},
      ],
    },

//10.420
    {
      'questionText': 'Τι δεν ισχύει για τα χαρτονομίσματα του ευρώ;',
      'answers': [
        {'text': 'Είναι σε κάθε χώρα διαφορετικά', 'score': 10},
        {'text': 'Είναι ίδια σε όλες τις χώρες', 'score': 0},
        {
          'text': 'Απεικονίζουν γέφυρες που συμβολίζουν την επικοινωνία',
          'score': 0
        },
        {
          'text':
              'Απεικονίζουν παράθυρα και πύλες που συμβολίζουν την ευρύτητα',
          'score': 0
        },
      ],
    },

//10.421
    {
      'questionText':
          'Η Γερμανία, με πληθυσμό πάνω από 81 εκατομμύρια, τι ποσοστό του ευρωπαϊκού πληθυσμού έχει;',
      'answers': [
        {'text': 'Σχεδόν το μισό', 'score': 0},
        {'text': 'Το ένα τέταρτο', 'score': 0},
        {'text': 'Γύρω στο 16%', 'score': 10},
        {'text': 'Ένα 10%', 'score': 0},
      ],
    },

//10.422
    {
      'questionText':
          'Οι τρεις μεγαλύτερες σε έκταση χώρες της ΕΕ είναι με τη σειρά:',
      'answers': [
        {'text': 'Γαλλία, Ισπανία, Γερμανία', 'score': 0},
        {'text': 'Γαλλία, Ισπανία, Ηνωμένο Βασίλειο', 'score': 0},
        {'text': 'Γαλλία, Ισπανία, Σουηδία', 'score': 10},
        {'text': 'Γαλλία, Ισπανία, Πολωνία', 'score': 0},
      ],
    },

//10.423
    {
      'questionText':
          'Η Γαλλία, που είναι η μεγαλύτερη χώρα της ΕΕ των 28, τι ποσοστό του συνολικού εδάφους έχει;',
      'answers': [
        {'text': '14,8%', 'score': 10},
        {'text': '25,3%', 'score': 0},
        {'text': '8%', 'score': 0},
        {'text': '9,5%', 'score': 0},
      ],
    },

//10.424
    {
      'questionText':
          'Σύμφωνα με την απογραφή του 2011, τι ποσοστό του πληθυσμού της Κύπρου είναι άνω των 65 ετών;',
      'answers': [
        {'text': '10%', 'score': 0},
        {'text': '13%', 'score': 10},
        {'text': '20%', 'score': 0},
        {'text': '22%', 'score': 0},
      ],
    },

//10.425
    {
      'questionText': 'Χώρες με πληθυσμό γύρω στα 10 εκατομμύρια είναι:',
      'answers': [
        {
          'text': 'Η Πορτογαλία, η Ουγγαρία, η Τσεχία και το Βέλγιο',
          'score': 10
        },
        {
          'text': 'Η Μάλτα, το Λουξεμβούργο, η Λιθουανία και η Λετονία',
          'score': 0
        },
        {
          'text': 'Η Πορτογαλία, η Γαλλία, το Ηνωμένο Βασίλειο και η Πολωνία',
          'score': 0
        },
        {'text': 'Η Βουλγαρία, η Ρουμανία, η Ελλάδα και η Κύπρος', 'score': 0},
      ],
    },

//10.426
    {
      'questionText':
          'Το νόμισμα της Ελλάδας πριν αντικατασταθεί από το ευρώ ήταν:',
      'answers': [
        {'text': 'Η μνα', 'score': 0},
        {'text': 'Η δραχμή', 'score': 10},
        {'text': 'Ο παράς', 'score': 0},
        {'text': 'Η ελληνική λίρα', 'score': 0},
      ],
    },

//10.427
    {
      'questionText':
          'Σε ποια πόλη της Ευρώπης οι κάτοικοι που δεν είναι Ευρωπαίοι πολίτες ξεπερνούν το 25%;',
      'answers': [
        {'text': 'Στη Λεμεσό', 'score': 0},
        {'text': 'Στην Αθήνα', 'score': 0},
        {'text': 'Στο Ταλίν', 'score': 10},
        {'text': 'Στο Παρίσι', 'score': 0},
      ],
    },

//10.428
    {
      'questionText':
          'Σύμφωνα με το Ευρωβαρόμετρο της Άνοιξης 2019, ποια είναι τα 2 πιο σημαντικά έματα για τους κύπριους;',
      'answers': [
        {'text': 'Μεταναστευτικό και Ανεργία', 'score': 0},
        {'text': 'Εκπαίδευση και Ανεργία', 'score': 0},
        {'text': 'Υγεία και Ανεργία', 'score': 0},
        {'text': 'Οικονομία και Ανεργία', 'score': 10},
      ],
    },

//10.429
    {
      'questionText':
          'Στη Μάλτα, που είναι η πιο πυκνοκατοικημένη χώρα της ΕΕ, σε κάθε τετραγωνικό χιλιόμετρο ζουν:',
      'answers': [
        {'text': 'Πάνω από 300 κάτοικοι', 'score': 0},
        {'text': 'Πάνω από 800 κάτοικοι', 'score': 0},
        {'text': 'Πάνω από 1000 κάτοικοι', 'score': 0},
        {'text': 'Πάνω από 1200 κάτοικοι', 'score': 10},
      ],
    },

//10.430
    {
      'questionText':
          'Σε αυτές τις χώρες οι πολίτες δείχνουν μεγάλη εμπιστοσύνη στα πολιτικά κόμματα:',
      'answers': [
        {'text': 'Ελλάδα και Κύπρος', 'score': 0},
        {'text': 'Γερμανία και Αυστρία', 'score': 0},
        {'text': 'Δανία και Φινλανδία', 'score': 10},
        {'text': 'Ηνωμένο Βασίλειο και Ιρλανδία', 'score': 0},
      ],
    },

//10.431
    {
      'questionText':
          'Στη Φινλανδία, που είναι η πιο αραιοκατοικημένη χώρα της ΕΕ, σε κάθε τετραγωνικό χιλιόμετρο ζουν λιγότεροι από:',
      'answers': [
        {'text': 'Δέκα κάτοικοι', 'score': 0},
        {'text': 'Είκοσι κάτοικοι', 'score': 10},
        {'text': 'Πενήντα κάτοικοι', 'score': 0},
        {'text': 'Εκατό κάτοικοι', 'score': 0},
      ],
    },

//10.432
    {
      'questionText': 'Η ψηλότερη κορυφή της Ευρώπης, με 4.810 μέτρα, είναι:',
      'answers': [
        {'text': 'Στον Όλυμπο', 'score': 0},
        {'text': 'Στο Τρόοδος', 'score': 0},
        {'text': 'Στα Πυρηναία', 'score': 0},
        {'text': 'Στο Λευκό Όρος', 'score': 10},
      ],
    },

//10.433
    {
      'questionText': 'Πυκνοκατοικημένες χώρες είναι:',
      'answers': [
        {'text': 'Η Μάλτα, η Γερμανία και η Σουηδία', 'score': 0},
        {'text': 'Η Κύπρος, η Μάλτα και η Γαλλία', 'score': 0},
        {'text': 'Το Βέλγιο, η Ολλανδία και το Ηνωμένο Βασίλειο', 'score': 10},
        {'text': 'Η Ιρλανδία, η Εσθονία και η Βουλγαρία', 'score': 0},
      ],
    },

//10.434
    {
      'questionText': 'Οι περισσότεροι γάμοι σε αναλογία πληθυσμού γίνονται:',
      'answers': [
        {'text': 'Στην Κύπρο', 'score': 10},
        {'text': 'Στην Ελλάδα', 'score': 0},
        {'text': 'Στη Μάλτα', 'score': 0},
        {'text': 'Στη Βουλγαρία', 'score': 0},
      ],
    },

//10.435
    {
      'questionText': 'Νησιωτικά κράτη είναι:',
      'answers': [
        {'text': 'Η Κύπρος, η Κρήτη και η Μάλτα', 'score': 0},
        {'text': 'Η Κύπρος, η Ελλάδα και το Ηνωμένο Βασίλειο', 'score': 0},
        {'text': 'Η Φιλανδία, η Σουηδία και η Δανία ', 'score': 0},
        {'text': 'Η Ιρλανδία, το Ηνωμένο Βασίλειο και η Κύπρος', 'score': 10},
      ],
    },

//10.436
    {
      'questionText': 'Ποιων χωρών οι άντρες ζουν περισσότερο (στοιχεία 2017);',
      'answers': [
        {'text': 'Της Ουγγαρίας και της Πολωνίας', 'score': 0},
        {'text': 'Της Σουηδίας και της Ιταλίας', 'score': 10},
        {'text': 'Της Ελλάδας και της Κύπρου', 'score': 0},
        {'text': 'Του Ηνωμένου Βασιλείου και της Ιρλανδίας', 'score': 0},
      ],
    },

//10.437
    {
      'questionText': 'Οι μικρότερες σε πληθυσμό χώρες της ΕΕ των 28 είναι:',
      'answers': [
        {'text': 'Η Λετονία, η Λιθουανία και η Ολλανδία', 'score': 0},
        {'text': 'Η Μάλτα, το Λουξεμβούργο και η Κύπρος', 'score': 10},
        {'text': 'Η Σλοβενία, η Σλοβακία και η Σουηδία', 'score': 0},
        {'text': 'Η Κύπρος, η Ελλάδα και η Μάλτα', 'score': 0},
      ],
    },

//10.438
    {
      'questionText':
          'Σύμφωνα με τον οργανισμό «Διεθνής Διαφάνεια» αυτές οι χώρες έχουν αντιμετωπίσει αποτελεσματικά τη διαφθορά:',
      'answers': [
        {'text': 'Γαλλία και Γερμανία', 'score': 0},
        {'text': 'Ελλάδα και Ιταλία', 'score': 0},
        {'text': 'Κύπρος και Ηνωμένο Βασίλειο', 'score': 0},
        {'text': 'Δανία και Φινλανδία', 'score': 10},
      ],
    },

//10.439
    {
      'questionText':
          'Ο μέσος όρος του ποσοστού απασχόλησης στις γυναίκες στην ΕΕ των 28 είναι 58,8%. Η χώρα με το υψηλότερο ποσοστό είναι:',
      'answers': [
        {'text': 'Η Γερμανία', 'score': 0},
        {'text': 'Η Γαλλία', 'score': 0},
        {'text': 'Η Σουηδία', 'score': 10},
        {'text': 'Η Βουλγαρία', 'score': 0},
      ],
    },

//10.440
    {
      'questionText':
          'Πόσα χρόνια ζουν περισσότερο οι κύπριες από τους κύπριους;',
      'answers': [
        {'text': 'Τρία χρόνια', 'score': 0},
        {'text': 'Τέσσερα χρόνια', 'score': 10},
        {'text': 'Επτά χρόνια', 'score': 0},
        {'text': 'Εννέα χρόνια', 'score': 0},
      ],
    },

//10.441
    {
      'questionText': 'Η μεγαλύτερη ευρωπαϊκή πόλη είναι:',
      'answers': [
        {'text': 'Η Ρώμη', 'score': 0},
        {'text': 'Η Αθήνα', 'score': 0},
        {'text': 'Το Παρίσι', 'score': 0},
        {'text': 'Το Βερολίνο', 'score': 10},
      ],
    },

//10.442
    {
      'questionText': 'Το μεγαλύτερο εμπορικό λιμάνι της ΕΕ είναι:',
      'answers': [
        {'text': 'Το Άμστερνταμ', 'score': 0},
        {'text': 'Το Ρότερνταμ', 'score': 10},
        {'text': 'Ο Πειραιάς', 'score': 0},
        {'text': 'Η Μασσαλία', 'score': 0},
      ],
    },

//10.443
    {
      'questionText':
          'Τον Ιανουάριο του 2019, οι προβλεπόμενες από το νόμο ακαθάριστες μηνιαίες κατώτατες αποδοχές κυμαίνονταν:',
      'answers': [
        {'text': 'Από τα 280 έως τα 2000 ευρώ', 'score': 10},
        {'text': 'Από τα 200 έως τα 1.000 ευρώ', 'score': 0},
        {'text': 'Από τα 300 έως τα 2.000 ευρώ', 'score': 0},
        {'text': 'Από τα 50 έως τα 1.500 ευρώ', 'score': 0},
      ],
    },

//10.444
    {
      'questionText': 'Το νοτιότερο σημείο της ΕΕ των 28 είναι:',
      'answers': [
        {'text': 'Η ιταλική Σικελία', 'score': 0},
        {'text': 'Η ιταλική Σαρδηνία', 'score': 0},
        {'text': 'Η ελληνική Γαύδος', 'score': 10},
        {'text': 'Η γαλλική Ριβιέρα', 'score': 0},
      ],
    },

//10.445
    {
      'questionText':
          'Σε αυτή χώρα της ΕΕ των 28 ένας στους δύο δασκάλους είναι άνω των 50 ετών:',
      'answers': [
        {'text': 'Στην Ιταλία', 'score': 10},
        {'text': 'Στην Ελλάδα', 'score': 0},
        {'text': 'Στην Κύπρο', 'score': 0},
        {'text': 'Στο Λουξεμβούργο', 'score': 0},
      ],
    },

//10.446
    {
      'questionText':
          'Τον Ιανουάριο του 2019 η χώρα με τις κατώτατες ακαθάριστες μηνιαίες αποδοχές (280 ευρώ) ήταν:',
      'answers': [
        {'text': 'Η Ελλάδα', 'score': 0},
        {'text': 'Η Κύπρος', 'score': 0},
        {'text': 'Η Βουλγαρία', 'score': 10},
        {'text': 'Η Πορτογαλία', 'score': 0},
      ],
    },

//10.447
    {
      'questionText':
          'Χώρες στις οποίες οι πολίτες δεν εμπιστεύονται καθόλου τα πολιτικά τους κόμματα είναι:',
      'answers': [
        {'text': 'Η Ελλάδα και η Λετονία', 'score': 10},
        {'text': 'Η Ουγγαρία και η Πολωνία', 'score': 0},
        {'text': 'Το Βέλγιο και η Γαλλία', 'score': 0},
        {'text': 'Η Σουηδία και η Ολλανδία', 'score': 0},
      ],
    },

//10.448
    {
      'questionText':
          'Πόσα από τα δέκα μεγαλύτερα γήπεδα ποδοσφαίρου του κόσμου βρίσκονται στην ΕΕ των 28;',
      'answers': [
        {'text': 'Κανένα', 'score': 0},
        {'text': 'Ένα', 'score': 0},
        {'text': 'Δύο', 'score': 10},
        {'text': 'Πέντε', 'score': 0},
      ],
    },

//10.449
    {
      'questionText':
          'Το 2019 η χώρα με τις ανώτατες ακαθάριστες μηνιαίες αποδοχές (4.916 ευρώ) ήταν:',
      'answers': [
        {'text': 'Η Γερμανία', 'score': 0},
        {'text': 'Το Λουξεμβούργο', 'score': 10},
        {'text': 'Το Βέλγιο', 'score': 0},
        {'text': 'Η Γαλλία', 'score': 0},
      ],
    },

//10.450
    {
      'questionText': 'Οι λιγότεροι γάμοι γίνονται:',
      'answers': [
        {'text': 'Σε Βέλγιο και Γαλλία', 'score': 0},
        {'text': 'Σε Αυστρία και Γερμανία', 'score': 0},
        {'text': 'Σε Βουλγαρία και Σλοβενία', 'score': 10},
        {'text': 'Σε Κύπρο και Ελλάδα', 'score': 0},
      ],
    },

//10.451
    {
      'questionText':
          'Σε ποια χώρα οι κάτοικοι έχουν τη μεγαλύτερη αγοραστική δύναμη;',
      'answers': [
        {'text': 'Στο Λουξεμβούργο', 'score': 10},
        {'text': 'Στη Γερμανία', 'score': 0},
        {'text': 'Στην Κύπρο', 'score': 0},
        {'text': 'Στη Σουηδία', 'score': 0},
      ],
    },

//10.452
    {
      'questionText': 'Ποιες είναι οι μακροβιότερες Ευρωπαίες;',
      'answers': [
        {'text': 'Οι Ισπανίδες και οι Γαλλίδες', 'score': 10},
        {'text': 'Οι Κύπριες και οι Ελληνίδες', 'score': 0},
        {'text': 'Οι Λιθουανές και οι Λετονές', 'score': 0},
        {'text': 'Οι Γερμανίδες και οι Ολλανδές', 'score': 0},
      ],
    },

//10.453
    {
      'questionText':
          'Στην Ευρώπη των 28 οι γυναίκες που απασχολούνται στη δημοτική εκπαίδευση αποτελούν:',
      'answers': [
        {'text': 'Το 50% των δασκάλων', 'score': 0},
        {'text': 'Το 60% των δασκάλων', 'score': 0},
        {'text': 'Το 70% των δασκάλων', 'score': 0},
        {'text': 'Πάνω από το 80% των δασκάλων', 'score': 10},
      ],
    },

//10.454
    {
      'questionText':
          'Σε ποια χώρα οι κάτοικοι έχουν τη μικρότερη αγοραστική δύναμη;',
      'answers': [
        {'text': 'Στην Κύπρο', 'score': 0},
        {'text': 'Στην Ελλάδα', 'score': 0},
        {'text': 'Στην Ισπανία', 'score': 0},
        {'text': 'Στη Βουλγαρία', 'score': 10},
      ],
    },

//10.455
    {
      'questionText':
          'Πιο δυσαρεστημένοι από τη δημόσια διοίκηση στη χώρα τους δηλώνουν:',
      'answers': [
        {'text': 'Γερμανοί, Σουηδοί και Εσθονοί', 'score': 0},
        {'text': 'Έλληνες, Ιταλοί και Ισπανοί', 'score': 10},
        {'text': 'Κύπριοι, Σλοβάκοι και Βούλγαροι', 'score': 0},
        {'text': 'Γάλλοι, Ρουμάνοι και Ούγγροι', 'score': 0},
      ],
    },

//10.456
    {
      'questionText':
          'Σε ποια χώρα παρατηρείται η μεγαλύτερη διαφορά στη διάρκεια της ζωής αντρών και γυναικών;',
      'answers': [
        {'text': 'Στη Γαλλία', 'score': 0},
        {'text': 'Στη Λιθουανία', 'score': 10},
        {'text': 'Στην Ελλάδα', 'score': 0},
        {'text': 'Στην Ολλανδία', 'score': 0},
      ],
    },

//10.457
    {
      'questionText':
          'Ποιες χώρες έχουν το μεγαλύτερο ποσοστό δασκάλων κάτω από 30 ετών;',
      'answers': [
        {'text': 'Η Ιταλία και η Ισπανία', 'score': 0},
        {'text': 'Η Κύπρος και η Μάλτα', 'score': 10},
        {'text': 'Η Βουλγαρία και η Ρουμανία', 'score': 0},
        {'text': 'Η Γερμανία και το Λουξεμβούργο', 'score': 0},
      ],
    },

//10.458
    {
      'questionText':
          'Πιο ευχαριστημένοι από τη δημόσια διοίκηση στη χώρα τους δηλώνουν:',
      'answers': [
        {'text': 'Λουξεμβουργιανοί, Γερμανοί και Σουηδοί', 'score': 10},
        {'text': 'Έλληνες, Κύπριοι και Πολωνοί', 'score': 0},
        {'text': 'Γερμανοί, Γάλλοι και Βέλγοι', 'score': 0},
        {'text': 'Ρουμάνοι, Βούλγαροι και Πορτογάλοι', 'score': 0},
      ],
    },

//10.459
    {
      'questionText':
          'Σύμφωνα με τον οργανισμό «Διεθνής Διαφάνεια» αυτές οι χώρες απέτυχαν να αντιμετωπίσουν αποτελεσματικά τη διαφθορά:',
      'answers': [
        {'text': 'Ρουμανία και Βουλγαρία', 'score': 10},
        {'text': 'Βέλγιο και Λουξεμβούργο', 'score': 0},
        {'text': 'Γαλλία και Γερμανία', 'score': 0},
        {'text': 'Αυστρία και Ολλανδία', 'score': 0},
      ],
    },

//10.460
    {
      'questionText': 'Πόση είναι η μεγαλύτερη διαφορά ώρας στην ΕΕ των 28;',
      'answers': [
        {'text': 'Όλες οι χώρες έχουν την ίδια ώρα', 'score': 0},
        {'text': 'Μία ώρα', 'score': 0},
        {'text': 'Δύο ώρες', 'score': 10},
        {'text': 'Τρεις ώρες', 'score': 0},
      ],
    },

//10.461
    {
      'questionText':
          'Οι χώρες όπου οι εκπαιδευτικοί στη δημοτική εκπαίδευση είναι σχεδόν αποκλειστικά γυναίκες είναι:',
      'answers': [
        {'text': 'Η Ιρλανδία και η Λετονία', 'score': 10},
        {'text': 'Η Σουηδία και η Ολλανδία', 'score': 0},
        {'text': 'Η Μάλτα και η Γερμανία', 'score': 0},
        {'text': 'Η Τσεχία και η Σλοβενία', 'score': 0},
      ],
    },

//10.462
    {
      'questionText':
          'Ο μέσος όρος του ποσοστού απασχόλησης στις γυναίκες στην ΕΕ των 28 είναι 58,8%. Η χώρα με το χαμηλότερο ποσοστό είναι:',
      'answers': [
        {'text': 'Η Μάλτα', 'score': 10},
        {'text': 'Η Ολλανδία', 'score': 0},
        {'text': 'Η Ιταλία', 'score': 0},
        {'text': 'Η Ελλάδα', 'score': 0},
      ],
    },

//10.463
    {
      'questionText':
          'Στην ΕΕ των 28, 89 στα 100 νοικοκυριά έχουν σύνδεση με το διαδίκτυο (στοιχεία 2018). Η χώρα με το υψηλότερο ποσοστό είναι:',
      'answers': [
        {'text': 'Η Σουηδία', 'score': 0},
        {'text': 'Η Ισπανία', 'score': 0},
        {'text': 'Η Κύπρος', 'score': 0},
        {'text': 'Η Ολλανδία', 'score': 10},
      ],
    },

//10.464
    {
      'questionText':
          'Ποια είναι η προσδοκώμενη διάρκεια ζωής των αντρών στην ΕΕ των 28 (στοιχεία του 2017);',
      'answers': [
        {'text': '80,1 έτη', 'score': 0},
        {'text': '78,3 έτη', 'score': 10},
        {'text': '83,3 έτη', 'score': 0},
        {'text': '74,8 έτη', 'score': 0},
      ],
    },

//10.465
    {
      'questionText':
          'Γαμηλιότητα ονομάζεται το ποσοστό των γάμων ανά 1.000 κατοίκους. Το ποσοστό αυτό για την Ευρώπη των 28 είναι:',
      'answers': [
        {'text': '10%', 'score': 0},
        {'text': '20%', 'score': 0},
        {'text': 'Κάτω από 5%', 'score': 10},
        {'text': 'Κάτω από 2%', 'score': 0},
      ],
    },

//10.466
    {
      'questionText':
          'Στην ΕΕ των 28, 89 στα 100 νοικοκυριά έχουν σύνδεση με το διαδίκτυο. οι χώρες με τα χαμηλότερα ποσοστά είναι:',
      'answers': [
        {'text': 'Γαλλία, Αυστρία, Βέλγιο', 'score': 0},
        {'text': 'Βουλγαρία, Ρουμανία, Ελλάδα', 'score': 10},
        {'text': 'Πολωνία, Λετονία, Εσθονία', 'score': 0},
        {'text': 'Ισπανία, Ιταλία, Κύπρος', 'score': 0},
      ],
    },

//10.467
    {
      'questionText':
          'Σε όλες τις χώρες της ΕΕ των 28 οι δασκάλες είναι περισσότερες από τους δασκάλους. Σε ποια χώρα οι δάσκαλοι είναι πάνω από 30%;',
      'answers': [
        {'text': 'Στην Ιρλανδία', 'score': 0},
        {'text': 'Στη Σουηδία', 'score': 0},
        {'text': 'Στη Δανία', 'score': 10},
        {'text': 'Στην Κύπρο', 'score': 0},
      ],
    },

//10.468
    {
      'questionText':
          'Στην ΕΕ των 28 σε ποιο ποσοστό οι πολίτες διαβάζουν εφημερίδες από τον υπολογιστή τους (στοιχεία 2016);',
      'answers': [
        {'text': 'Σε ποσοστό 40%', 'score': 0},
        {'text': 'Σε ποσοστό 50%', 'score': 0},
        {'text': 'Σε ποσοστό 60%', 'score': 0},
        {'text': 'Σε ποσοστό 70%', 'score': 10},
      ],
    },

//10.469
    {
      'questionText': 'Το ανατολικότερο κράτος της ΕΕ των 28 είναι:',
      'answers': [
        {'text': 'Η Κύπρος', 'score': 10},
        {'text': 'Η Πορτογαλία', 'score': 0},
        {'text': 'Η Βουλγαρία', 'score': 0},
        {'text': 'Η Ελλάδα', 'score': 0},
      ],
    },

//10.470
    {
      'questionText':
          'Ποιας χώρας οι πολίτες ανησυχούν περισσότερο για την οικονομική κατάσταση;',
      'answers': [
        {'text': 'Της Κύπρου', 'score': 0},
        {'text': 'Της Γερμανίας', 'score': 0},
        {'text': 'Της Ελλάδας', 'score': 10},
        {'text': 'Της Πολωνίας', 'score': 0},
      ],
    },

//10.471
    {
      'questionText':
          'Οι πολίτες ποιων χωρών διαβάζουν σε μεγαλύτερο ποσοστό εφημερίδες ηλεκτρονικά;',
      'answers': [
        {'text': 'Λιθουανίας και Εσθονίας', 'score': 10},
        {'text': 'Ελλάδας και Ισπανίας', 'score': 0},
        {'text': 'Κύπρου και Μάλτας', 'score': 0},
        {'text': 'Γερμανίας και Πορτογαλίας', 'score': 0},
      ],
    },

//10.472
    {
      'questionText':
          'Σε ποια χώρα οι πολίτες δεν ανησυχούν ιδιαίτερα για την τιμή της ενέργειας;',
      'answers': [
        {'text': 'Στη Γερμανία', 'score': 0},
        {'text': 'Στο Βέλγιο', 'score': 0},
        {'text': 'Στην Εσθονία', 'score': 10},
        {'text': 'Στην Ελλάδα', 'score': 0},
      ],
    },

//10.473
    {
      'questionText':
          'Ποιων χωρών οι γυναίκες έχουν πιο σύντομη ζωή (σύμφωνα με στοιχεία του 2017);',
      'answers': [
        {'text': 'Της Γαλλίας και της Ιταλίας', 'score': 0},
        {'text': 'Της Βουλγαρίας και της Ρουμανίας', 'score': 10},
        {'text': 'Της Ελλάδας και του Βελγίου', 'score': 0},
        {'text': 'Της Γερμανίας και της Αυστρίας', 'score': 0},
      ],
    },

//10.474
    {
      'questionText':
          'Σε ποια χώρα οι εργαζόμενοι έχουν τη «μικρότερη» εβδομάδα εργασίας;',
      'answers': [
        {'text': 'Στη Δανία', 'score': 10},
        {'text': 'Στην Ελλάδα', 'score': 0},
        {'text': 'Στο Λουξεμβούργο', 'score': 0},
        {'text': 'Στην Ιρλανδία', 'score': 0},
      ],
    },

//10.475
    {
      'questionText':
          'Οι πολίτες ποιων χωρών χρησιμοποιούν περισσότερο τα online κοινωνικά δίκτυα (στοιχεία 2018);',
      'answers': [
        {'text': 'Ουγγαρίας και Ρουμανίας', 'score': 10},
        {'text': 'Γαλλίας και Ιρλανδίας', 'score': 0},
        {'text': 'Ελλάδας και Μάλτας', 'score': 0},
        {'text': 'Γερμανίας και Αυστρίας', 'score': 0},
      ],
    },

//10.476
    {
      'questionText':
          'Οι δύο χώρες με το χαμηλότερο ποσοστό αυτοκτονιών είναι:',
      'answers': [
        {'text': 'Η Αυστρία και η Ολλανδία', 'score': 0},
        {'text': 'Η Κύπρος και η Ελλάδα', 'score': 10},
        {'text': 'Η Γαλλία και η Ρουμανία', 'score': 0},
        {'text': 'Η Γερμανία και το Βέλγιο', 'score': 0},
      ],
    },

//10.477
    {
      'questionText': 'Οι Ευρωπαίοι πολίτες εμπιστεύονται τα πολιτικά κόμματα:',
      'answers': [
        {'text': 'Πάρα πολύ', 'score': 0},
        {'text': 'Σε ποσοστό 50%', 'score': 0},
        {'text': 'Σε ποσοστό 19%', 'score': 10},
        {'text': 'Σε ποσοστό μικρότερο του 10%', 'score': 0},
      ],
    },

//10.478
    {
      'questionText':
          'Τι ποσοστό των Ευρωπαίων πολιτών συμφωνούν στη δημιουργία μιας ενιαίας ευρωπαϊκής πολιτικής στο θέμα της μετανάστευσης (στοιχεία 2019);',
      'answers': [
        {'text': '67%', 'score': 10},
        {'text': '26%', 'score': 0},
        {'text': '59%', 'score': 0},
        {'text': '87%', 'score': 0},
      ],
    },

//10.479
    {
      'questionText':
          'Στατιστικά οι πολίτες αυτών των χωρών παραμένουν υγιέστεροι περισσότερο χρόνο της ζωής τους:',
      'answers': [
        {'text': 'Της Γερμανίας και της Ολλανδίας', 'score': 0},
        {'text': 'Της Σουηδίας και της Μάλτας', 'score': 10},
        {'text': 'Της Κύπρου και της Γαλλίας', 'score': 0},
        {'text': 'Της Πολωνίας και της Ρουμανίας', 'score': 0},
      ],
    },

//10.480
    {
      'questionText':
          'Οι Ευρωπαίοι πολίτες εμπιστεύονται κατά μέσο όρο την τηλεόραση σε ποσοστό:',
      'answers': [
        {'text': '70%', 'score': 0},
        {'text': '60%', 'score': 0},
        {'text': '50%', 'score': 10},
        {'text': '40%', 'score': 0},
      ],
    },

//10.481
    {
      'questionText':
          'Τι ποσοστό των Ευρωπαίων πολιτών είναι υπέρ της κοινής εμπορικής πολιτικής της Ένωσης (στοιχεία 2019):',
      'answers': [
        {'text': 'Ποσοστό 52%', 'score': 0},
        {'text': 'Ποσοστό 40%', 'score': 0},
        {'text': 'Ποσοστό 64%', 'score': 0},
        {'text': 'Ποσοστό 71%', 'score': 10},
      ],
    },

//10.482
    {
      'questionText': 'Τα υψηλότερα ποσοστά θανάτων από καρκίνο καταγράφονται:',
      'answers': [
        {'text': 'Στην Πολωνία', 'score': 0},
        {'text': 'Στη Γερμανία', 'score': 0},
        {'text': 'Στην Αυστρία', 'score': 10},
        {'text': 'Στην Κύπρο', 'score': 0},
      ],
    },

//10.483
    {
      'questionText': 'Οι χώρες με τα υψηλότερα ποσοστά ανεργίας είναι:',
      'answers': [
        {'text': 'Η Κύπρος και η Γερμανία', 'score': 0},
        {'text': 'Η Ισπανία και η Ελλάδα', 'score': 10},
        {'text': 'Το Λουξεμβούργο και η Μάλτα', 'score': 0},
        {'text': 'Η Βουλγαρία και η Πολωνία', 'score': 0},
      ],
    },

//10.484
    {
      'questionText':
          'Ποιας χώρας οι πολίτες εμφανίζουν νωρίτερα προβλήματα υγείας;',
      'answers': [
        {'text': 'Της Σλοβακίας', 'score': 10},
        {'text': 'Της Ισπανίας', 'score': 0},
        {'text': 'Της Κύπρου', 'score': 0},
        {'text': 'Του Λουξεμβούργου', 'score': 0},
      ],
    },

//10.485
    {
      'questionText':
          'Ο μέσος όρος των ωρών εργασίας την εβδομάδα στην ΕΕ των 28, το 2016, ήταν:',
      'answers': [
        {'text': '35,8', 'score': 0},
        {'text': '38,1', 'score': 0},
        {'text': '40,3', 'score': 10},
        {'text': '42,3', 'score': 0},
      ],
    },

//10.486
    {
      'questionText':
          'Πόσοι Ευρωπαίοι δηλώνουν ικανοποιημένοι από το σύστημα υγείας της χώρας τους;',
      'answers': [
        {'text': 'Τρεις στους δέκα', 'score': 0},
        {'text': 'Οι μισοί', 'score': 0},
        {'text': 'Εφτά στους δέκα', 'score': 10},
        {'text': 'Οκτώ στους δέκα', 'score': 0},
      ],
    },

//10.487
    {
      'questionText':
          'Τι ποσοστό των Ευρωπαίων πολιτών χρησιμοποιεί το διαδίκτυο καθημερινά ή σχεδόν καθημερινά (στοιχεία 2018);',
      'answers': [
        {'text': '90%', 'score': 0},
        {'text': '86%', 'score': 0},
        {'text': '55%', 'score': 0},
        {'text': '76%', 'score': 10},
      ],
    },

//10.488
    {
      'questionText': 'Τα λιγότερα κατά κεφαλή σκουπίδια παράγουν οι πολίτες:',
      'answers': [
        {'text': 'Της Φινλανδίας', 'score': 0},
        {'text': 'Της Αυστρίας', 'score': 0},
        {'text': 'Της Τσεχίας', 'score': 10},
        {'text': 'Της Σουηδίας', 'score': 0},
      ],
    },

//10.489
    {
      'questionText':
          'Πόσα κιλά σκουπίδια παρήγαγε το 2016 ο κάθε κύπριος πολίτης:',
      'answers': [
        {'text': '2.892', 'score': 10},
        {'text': '3.515', 'score': 0},
        {'text': '225', 'score': 0},
        {'text': '1.500', 'score': 0},
      ],
    },

//10.490
    {
      'questionText':
          'Ποιες δύο χώρες έχουν τους λιγότερους καθηγητές άνω των 50 ετών;',
      'answers': [
        {'text': 'Το Βέλγιο και η Γαλλία', 'score': 0},
        {'text': 'Η Μάλτα και η Κύπρος', 'score': 0},
        {'text': 'Η Ιταλία και η Πορτογαλία', 'score': 0},
        {'text': 'Η Ολλανδία και η Ιρλανδία', 'score': 10},
      ],
    },

//10.491
    {
      'questionText':
          'Ποιας χώρας οι πολίτες είναι οι πιο δυσαρεστημένοι από τις συντάξεις τους;',
      'answers': [
        {'text': 'Της Κύπρου', 'score': 0},
        {'text': 'Της Ελλάδας', 'score': 10},
        {'text': 'Της Γερμανίας', 'score': 0},
        {'text': 'Της Ιταλίας', 'score': 0},
      ],
    },

//10.492
    {
      'questionText':
          'Ποια είναι η χώρα με το μεγαλύτερο ποσοστό μερικής απασχόλησης;',
      'answers': [
        {'text': 'Η Ελλάδα', 'score': 0},
        {'text': 'Η Τσεχία', 'score': 0},
        {'text': 'Η Ολλανδία', 'score': 10},
        {'text': 'Η Ιταλία', 'score': 0},
      ],
    },

//10.493
    {
      'questionText':
          'Σε ποια χώρα καταγράφηκαν το 2015 τα λιγότερα, σε απόλυτους αριθμούς, περιστατικά θανάτου από καρκίνο;',
      'answers': [
        {'text': 'Στην Κροατία', 'score': 0},
        {'text': 'Στη Σουηδία', 'score': 0},
        {'text': 'Στην Κύπρο', 'score': 10},
        {'text': 'Στη Λιθουανία', 'score': 0},
      ],
    },

//10.494
    {
      'questionText':
          'Σε ποια χώρα σημειώθηκαν το 2015 οι περισσότεροι, σε απόλυτους αριθμούς, θάνατοι από ατυχήματα;',
      'answers': [
        {'text': 'Στην Ιρλανδία', 'score': 0},
        {'text': 'Στη Λιθουανία', 'score': 0},
        {'text': 'Στη Γερμανία', 'score': 10},
        {'text': 'Στην Τσεχία', 'score': 0},
      ],
    },

//10.495
    {
      'questionText': 'Στην ΕΕ των 28 ποσοστό των αυτοκτονιών το 2015 ήταν:',
      'answers': [
        {'text': '1.1%', 'score': 10},
        {'text': '5%', 'score': 0},
        {'text': '2%', 'score': 0},
        {'text': '3%', 'score': 0},
      ],
    },

//10.496
    {
      'questionText':
          'Το 2016, πόσα κιλά σκουπιδιών παρήγαγε, κατά μέσο όρο, κάθε Ευρωπαίος πολίτης;',
      'answers': [
        {'text': '4968', 'score': 10},
        {'text': '2550', 'score': 0},
        {'text': '9800', 'score': 0},
        {'text': '7620', 'score': 0},
      ],
    },

//10.497
    {
      'questionText':
          'Πιο ικανοποιημένοι από την καταπολέμηση των διακρίσεων στη χώρα τους δηλώνουν:',
      'answers': [
        {'text': 'Οι Βέλγοι', 'score': 10},
        {'text': 'Οι Γερμανοί', 'score': 0},
        {'text': 'Οι Κύπριοι', 'score': 0},
        {'text': 'Οι Πολωνοί', 'score': 0},
      ],
    },

//10.498
    {
      'questionText':
          'Ποιας χώρας οι πολίτες εκτιμούν περισσότερο την τηλεόραση;',
      'answers': [
        {'text': 'Της Φινλανδίας', 'score': 10},
        {'text': 'Του Βελγίου', 'score': 0},
        {'text': 'Της Κύπρου', 'score': 0},
        {'text': 'Της Γερμανίας', 'score': 0},
      ],
    },

//10.499
    {
      'questionText':
          'Σύμφωνα με το Ευρωβαρόμετρο της Άνοιξης 2019, τι ποσοστό κυπρίων θεωρεί τα περιβαλλοντικά θέματα πολύ σημαντικά;',
      'answers': [
        {'text': '3%', 'score': 0},
        {'text': '7%', 'score': 10},
        {'text': '9%', 'score': 0},
        {'text': '10%', 'score': 0},
      ],
    },

//10.500
    {
      'questionText':
          'Σύμφωνα με το Ευρωβαρόμετρο της Άνοιξης 2019, ποιο ποσοστό κυπρίων δηλώνουν ότι νιώθουν Ευρωπαίοι πολίτες;',
      'answers': [
        {'text': '46%', 'score': 0},
        {'text': '49%', 'score': 0},
        {'text': '73%', 'score': 10},
        {'text': '81%', 'score': 0},
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
    randnum = Random().nextInt(84);
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
                                    builder: (context) => cat10questionpage()),
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
