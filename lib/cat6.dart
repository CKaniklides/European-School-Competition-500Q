import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './answer.dart';
import './start.dart';
import 'dart:math';

class cat6questionpage extends StatefulWidget {
  @override
  _cat6questionpageState createState() => _cat6questionpageState();
}

class _cat6questionpageState extends State<cat6questionpage> {
  final questions = const [
//6.253
    {
      'questionText':
          'Πότε αποφασίστηκε για πρώτη φορά στη διάσκεψη αρχηγών κρατών και κυβερνήσεων της Ευρώπης ότι ήταν αναγκαία μια κοινοτική πολιτική περιβάλλοντος;',
      'answers': [
        {'text': 'Το 1972', 'score': 10},
        {'text': 'Το 1952', 'score': 0},
        {'text': 'Το 1962', 'score': 0},
        {'text': 'Το 1982', 'score': 0},
      ],
    },

//6.254
    {
      'questionText':
          'Πόσες νομοθετικές αποφάσεις έχει εγκρίνει η κοινότητα για περιορισμό της ρύπανσης;',
      'answers': [
        {'text': '26', 'score': 0},
        {'text': '250', 'score': 10},
        {'text': '2.500', 'score': 0},
        {'text': '25.000', 'score': 0},
      ],
    },

//6.255
    {
      'questionText':
          'Η κοινοτική περιβαλλοντική πολιτική βασίζεται στις αρχές της προφύλαξης, της πρόληψης, της αποκατάστασης της ρύπανσης στην πηγή και:',
      'answers': [
        {'text': 'στην αρχή «ο ρυπαίνων πληρώνει»', 'score': 10},
        {'text': 'στην αρχή της ισότητας', 'score': 0},
        {'text': 'στην αρχή «ο ρυπαίνων φταίει»', 'score': 0},
        {'text': 'στην αρχή της αναλογικότητας', 'score': 0},
      ],
    },

//6.256
    {
      'questionText':
          'Ποια συνθήκη ενίσχυσε τη σημασία της περιβαλλοντικής πολιτικής της Ευρωπαϊκής Ένωσης;',
      'answers': [
        {'text': 'Η Συνθήκη του Μάαστριχτ', 'score': 0},
        {'text': 'Η Συνθήκη του Άμστερνταμ', 'score': 10},
        {'text': 'Η Συνθήκη της Λισαβόνας', 'score': 0},
        {'text': 'Η Συνθήκη των Βρυξελλών', 'score': 0},
      ],
    },

//6.257
    {
      'questionText':
          'Πόση μείωση CO2 μπορεί να επιφέρει η ανακύκλωση 1 kg πλαστικού, σε σύγκριση με την κατασκευή νέων συσκευασιών;',
      'answers': [
        {'text': '150 kg', 'score': 0},
        {'text': '15 kg', 'score': 0},
        {'text': '500 kg', 'score': 0},
        {'text': '1,5 kg', 'score': 10},
      ],
    },

//6.258
    {
      'questionText':
          'Ποια χρονολογία όρισε η ΕΕ για απαγόρευση των πλαστικών μιας χρήσης;',
      'answers': [
        {'text': '2021', 'score': 10},
        {'text': '2023', 'score': 0},
        {'text': '2024', 'score': 0},
        {'text': '2026', 'score': 0},
      ],
    },

//6.259
    {
      'questionText':
          'Ποιο από τα παρακάτω δεν θεωρείται πλαστικό μιας χρήσης;',
      'answers': [
        {'text': 'Πλαστικά μαχαιροπήρουνα', 'score': 0},
        {'text': 'Πλαστικά καλαμάκια', 'score': 0},
        {'text': 'Επαναχρησιμοποιούμενα δοχεία φαγητού', 'score': 10},
        {'text': 'Μπατονέτες', 'score': 0},
      ],
    },

//6.260
    {
      'questionText': 'Ένα στα πόσα παιδιά στη ΕΕ πάσχουν από άσθμα;',
      'answers': [
        {'text': '7', 'score': 10},
        {'text': '17', 'score': 0},
        {'text': '27', 'score': 0},
        {'text': '37', 'score': 0},
      ],
    },

//6.261
    {
      'questionText':
          'Η στρατηγική της ΕΕ για την αειφόρο ανάπτυξη ζητεί η οικονομική, περιβαλλοντική και ποια άλλη πολιτική να συμπληρώνουν η μια την άλλη;',
      'answers': [
        {'text': 'Επιχειρηματική', 'score': 0},
        {'text': 'Ιατροφαρμακευτική', 'score': 0},
        {'text': 'Αγροτική', 'score': 0},
        {'text': 'Κοινωνική', 'score': 10},
      ],
    },

//6.262
    {
      'questionText':
          'Κατά ποιο ποσοστό δεσμεύτηκαν τα κράτη μέλη της ΕΕ, να μειώσουν τις εκπομπές αερίων του θερμοκηπίου το 2008-12, κάτω από τα επίπεδα του 1990;',
      'answers': [
        {'text': '0,8%', 'score': 0},
        {'text': '8%', 'score': 10},
        {'text': '18%', 'score': 0},
        {'text': '180%', 'score': 0},
      ],
    },

//6.263
    {
      'questionText':
          'Μέχρι πότε η ΕΕ συμφώνησε να μειώσει τις εκπομπές της και να αυξήσει το μερίδιό της όσον αφορά τη χρήση ανανεώσιμων πηγών ενέργειας κατά 20%;',
      'answers': [
        {'text': '2020', 'score': 10},
        {'text': '2015', 'score': 0},
        {'text': '2025', 'score': 0},
        {'text': '2030', 'score': 0},
      ],
    },

//6.264
    {
      'questionText':
          'Πώς ονομάζεται το ευρωπαϊκό δίκτυο που περιλαμβάνει 26.000 προστατευόμενες φυσικές περιοχές οι οποίες καλύπτουν σχεδόν το 20% του εδάφους της ΕΕ;',
      'answers': [
        {'text': 'Natura 1000', 'score': 0},
        {'text': 'Natura 2000', 'score': 10},
        {'text': 'Natura 3000', 'score': 0},
        {'text': 'Natura 4000', 'score': 0},
      ],
    },

//6.265
    {
      'questionText':
          'Ποια ευρωπαϊκή οδηγία ρυθμίζει την καταχώριση, την αξιολόγηση, την αδειοδότηση και τους περιορισμούς των χημικών προϊόντων;',
      'answers': [
        {'text': 'REACH', 'score': 0},
        {'text': 'STRETCH', 'score': 0},
        {'text': 'BREACH', 'score': 10},
        {'text': 'TEACH', 'score': 0},
      ],
    },

//6.266
    {
      'questionText':
          'Η προσχώρηση το 1995 της Σουηδίας, της Φινλανδίας και ποιας άλλης χώρας επέτρεψε στην ΕΕ να διπλασιάσει την έκταση των δασών της;',
      'answers': [
        {'text': 'Ελλάδας', 'score': 0},
        {'text': 'Ρουμανίας', 'score': 0},
        {'text': 'Βουλγαρίας', 'score': 0},
        {'text': 'Αυστρίας', 'score': 10},
      ],
    },

//6.267
    {
      'questionText':
          'Πότε ενέκρινε το Ε.Συμβούλιο κανονισμό για την ίδρυση του Ευρωπαϊκού οργανισμού Περιβάλλοντος και του ευρωπαϊκού δικτύου πληροφοριών περιβάλλοντος;',
      'answers': [
        {'text': '1930', 'score': 0},
        {'text': '1940', 'score': 0},
        {'text': '1990', 'score': 10},
        {'text': '1950', 'score': 0},
      ],
    },

//6.268
    {
      'questionText':
          'Η Υπηρεσία Ενέργειας, η οποία έχει τη γενική ευθύνη για τα ενεργειακά θέματα της Κύπρου, υπάγεται σε ποιο υπουργείο;',
      'answers': [
        {'text': 'Υπουργείο Συγκοινωνιών και Έργων', 'score': 0},
        {'text': 'Υπουργείο Οικονομικών', 'score': 0},
        {'text': 'Υπουργείο Άμυνας', 'score': 0},
        {'text': 'Υπουργείο Ενέργειας, Εμπορίου και Βιομηχανίας', 'score': 10},
      ],
    },

//6.269
    {
      'questionText':
          'Ποια από τις παρακάτω ΔΕΝ είναι ανανεώσιμη πηγή ενέργειας;',
      'answers': [
        {'text': 'Αιολική', 'score': 0},
        {'text': 'Παλιρροϊκή', 'score': 0},
        {'text': 'Σφαιρική', 'score': 10},
        {'text': 'Ηλιακή', 'score': 0},
      ],
    },

//6.270
    {
      'questionText': 'Το κοίτασμα «Αφροδίτη» στην κυπριακή ΑΟΖ περιέχει:',
      'answers': [
        {'text': 'Πετρέλαιο', 'score': 0},
        {'text': 'Φυσικό αέριο', 'score': 10},
        {'text': 'Μαζούτ', 'score': 0},
        {'text': 'Ουράνιο', 'score': 0},
      ],
    },

//6.271
    {
      'questionText':
          'Η ατμοσφαιρική ρύπανση οφείλεται σε τρεις βασικούς λόγους: μέσα μεταφοράς, εκπομπές από μόνιμες πηγές και:',
      'answers': [
        {'text': 'Eκπομπές από την παραγωγή ηλεκτρικής ενέργειας', 'score': 10},
        {'text': 'Kάπνισμα', 'score': 0},
        {'text': 'Iούς', 'score': 0},
        {'text': 'Aκαθαρσία', 'score': 0},
      ],
    },

//6.272
    {
      'questionText':
          'Σε περίπου πόσους τόνους ανέρχεται ετησίως η συνολική παραγωγή αποβλήτων στην ΕΕ (στοιχεία 2016);',
      'answers': [
        {'text': '1,8 χιλιάδες τόνους', 'score': 0},
        {'text': '1,8 εκατομμύρια τόνους', 'score': 0},
        {'text': '2,5 δισεκατομμύρια τόνους', 'score': 10},
        {'text': '1,8 τρισεκατομμύρια τόνους', 'score': 0},
      ],
    },

//6.273
    {
      'questionText':
          'Πόσο λιγότερη ενέργεια καταναλώνουν οι συμπαγείς λαμπτήρες φθορισμού από τους κλασικούς λαμπτήρες;',
      'answers': [
        {'text': '0,075%', 'score': 0},
        {'text': '0,75%', 'score': 0},
        {'text': '7,5%', 'score': 0},
        {'text': '75%', 'score': 10},
      ],
    },

//6.274
    {
      'questionText':
          'Ποιο από τα παρακάτω ΔΕΝ οδηγεί στην εξοικονόμηση ενέργειας;',
      'answers': [
        {'text': 'Η χρήση συμπαγών λαμπτήρων ενέργειας', 'score': 0},
        {'text': 'Η ανακύκλωση', 'score': 0},
        {'text': 'Η χρήση ηλεκτρικών θερμαστρών', 'score': 10},
        {'text': 'Η αποφυγή χρήσης προϊόντων αμιάντου', 'score': 0},
      ],
    },

//6.275
    {
      'questionText':
          'Η κύρια αιτία έκλυσης διοξινών από καιόμενα απορρίμματα είναι η παρουσία χλωρίου σε αυτά. Ποια είναι ίσως η σημαντικότερη πηγή χλωρίου;',
      'answers': [
        {'text': 'Τα πλαστικά PVC', 'score': 10},
        {'text': 'Τα σιδερικά PVC', 'score': 0},
        {'text': 'Τα άλατα PVC', 'score': 0},
        {'text': 'Τα ξύλινα PVC', 'score': 0},
      ],
    },

//6.276
    {
      'questionText':
          'Έχει αποδειχθεί ότι ένα ποσοστό των ειδών που αγοράζονται από τις υπεραγορές πηγαίνουν κατευθείαν στα σκουπίδια πριν καταναλωθούν. Ποιο είναι αυτό το ποσοστό;',
      'answers': [
        {'text': '1%-2%', 'score': 0},
        {'text': '10%-20%', 'score': 10},
        {'text': '30%-40%', 'score': 0},
        {'text': '50%-60%', 'score': 0},
      ],
    },

//6.277
    {
      'questionText':
          'Ποιες είναι οι περιβαλλοντικά πιο σωστές σακούλες για να χρησιμοποιείτε στα ψώνια σας;',
      'answers': [
        {'text': 'Πλαστικές', 'score': 0},
        {'text': 'Πάνινες', 'score': 10},
        {'text': 'Χάρτινες', 'score': 0},
        {'text': 'Νάιλον', 'score': 0},
      ],
    },

//6.278
    {
      'questionText':
          'Σε παλιές κατοικίες μπορούμε να μειώσουμε την κατανάλωση ενέργειας μέχρι και 60%. Με σωστό σχεδιασμό, πόσο μειώνεται η κατανάλωση σε νέες κατοικίες;',
      'answers': [
        {'text': '10%', 'score': 0},
        {'text': '30%', 'score': 0},
        {'text': '50%', 'score': 0},
        {'text': '90%', 'score': 10},
      ],
    },

//6.279
    {
      'questionText':
          'Ποιο από τα παρακάτω βοηθά να δροσίζεται το σπίτι και να μην χρησιμοποιούμε κλιματιστικά το καλοκαίρι;',
      'answers': [
        {'text': 'Εγκατάσταση ανεμιστήρων οροφής', 'score': 0},
        {
          'text': 'Φύτεμα φυλλοβόλων δέντρων σε ακάλυπτους εξωτερικούς χώρους',
          'score': 0
        },
        {
          'text': 'Χρήση ανοιχτόχρωμων χρωμάτων για το βάψιμο εξωτερικών χώρων',
          'score': 0
        },
        {'text': 'Όλα τα παραπάνω', 'score': 10},
      ],
    },

//6.280
    {
      'questionText':
          'Πόση είναι η μείωση στον λογαριασμό του ηλεκτρικού ρεύματος με την εγκατάσταση ηλιακού θερμοσίφωνα;',
      'answers': [
        {'text': 'Μέχρι και 40%', 'score': 10},
        {'text': 'Μέχρι και 4%', 'score': 0},
        {'text': 'Μέχρι και 0,4%', 'score': 0},
        {'text': 'Μέχρι και 400%', 'score': 0},
      ],
    },

//6.281
    {
      'questionText':
          'Κάθε φορά που κάνετε ένα ντους με ζεστό νερό από τον ήλιο, αποφεύγεται η έκλυση πόσων κιλών διοξειδίου του άνθρακα στην ατμόσφαιρα;',
      'answers': [
        {'text': '0,3 κιλών', 'score': 0},
        {'text': '3 κιλών ', 'score': 10},
        {'text': '30 κιλών', 'score': 0},
        {'text': '300 κιλών', 'score': 0},
      ],
    },

//6.282
    {
      'questionText':
          'Ποια είναι η σωστή ονομασία της γνωστής περιβαλλοντικής οργάνωσης;',
      'answers': [
        {'text': 'Greenpeace', 'score': 10},
        {'text': 'Redpeace', 'score': 0},
        {'text': 'Bluepeace', 'score': 0},
        {'text': 'Yellowpeace', 'score': 0},
      ],
    },

//6.283
    {
      'questionText':
          'Η παραγωγή ενός τόνου ανακυκλωμένου χαρτιού συνεπάγεται:',
      'answers': [
        {'text': '74% λιγότερη ατμοσφαιρική ρύπανση', 'score': 0},
        {'text': '35% λιγότερη ρύπανση των νερών', 'score': 0},
        {'text': 'λιγότερα στερεά απόβλητα', 'score': 0},
        {'text': 'όλα τα παραπάνω', 'score': 10},
      ],
    },

//6.284
    {
      'questionText':
          'Η παρουσία του στρατοσφαιρικού όζοντος στην ατμόσφαιρα είναι σημαντική γιατί:',
      'answers': [
        {
          'text':
              'Απορροφά το υπεριώδες τμήμα του φάσματος της ηλιακής ακτινοβολίας',
          'score': 0
        },
        {
          'text': 'Απορροφά μεγάλο ποσοστό της ηλιακής ακτινοβολίας',
          'score': 0
        },
        {
          'text': 'Σε μεγάλες συγκεντρώσεις είναι επικίνδυνο για τον άνθρωπο',
          'score': 0
        },
        {'text': 'Όλα τα παραπάνω', 'score': 10},
      ],
    },

//6.285
    {
      'questionText': 'Ποιο από τα παρακάτω ΔΕΝ είναι είδος κλίματος;',
      'answers': [
        {'text': 'Σκληρό', 'score': 10},
        {'text': 'Ξηρό', 'score': 0},
        {'text': 'Τροπικό', 'score': 0},
        {'text': 'Ηπειρωτικό', 'score': 0},
      ],
    },

//6.286
    {
      'questionText': 'Ποιος είναι ο φυσικός δορυφόρος της Γης;',
      'answers': [
        {'text': 'Ο Ήλιος', 'score': 0},
        {'text': 'Η Σελήνη', 'score': 10},
        {'text': 'Ο Άρης', 'score': 0},
        {'text': 'Τα αστέρια', 'score': 0},
      ],
    },

//6.287
    {
      'questionText': 'Η πολιτική της ΕΕ για το νερό στοχεύει στο:',
      'answers': [
        {
          'text':
              'Να έχουν όλοι οι Ευρωπαίοι πρόσβαση σε νερό καλής ποιότητας και σε επαρκείς ποσότητες',
          'score': 0
        },
        {
          'text':
              'Να πληρούν όλα τα υδατικά συστήματα στην Ευρώπη ελάχιστα ποιοτικά πρότυπα',
          'score': 0
        },
        {
          'text': 'Να προστατεύονται τα ευπαθή υδάτινα περιβάλλοντα',
          'score': 0
        },
        {'text': 'Όλα τα παραπάνω', 'score': 10},
      ],
    },

//6.288
    {
      'questionText':
          'Μέσω ποιου προγράμματος κυρίως στηρίζει η ΕΕ σχέδια για το περιβάλλον και την προστασία της φύσης;',
      'answers': [
        {'text': 'BREATHE', 'score': 0},
        {'text': 'DEATH', 'score': 0},
        {'text': 'LIFE', 'score': 10},
        {'text': 'EXHALE', 'score': 0},
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
    randnum = Random().nextInt(36);
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
                                    builder: (context) => cat6questionpage()),
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
