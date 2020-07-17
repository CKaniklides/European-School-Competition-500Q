import 'dart:async';

import 'package:european_school_competition_ck/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './answer.dart';
import './start.dart';
import 'dart:math';

class cat7questionpage extends StatefulWidget {
  @override
  _cat7questionpageState createState() => _cat7questionpageState();
}

class _cat7questionpageState extends State<cat7questionpage> {
  final questions = const [
//7.289
    {
      'questionText':
          'Πόσα από τα κράτη μέλη της ΕΕ έχουν ως νόμισμά τους το ευρώ;',
      'answers': [
        {'text': '14', 'score': 0},
        {'text': '18', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '19', 'score': 10},
      ],
    },

//7.290
    {
      'questionText':
          'Ποια Αρχή είναι υπεύθυνη για τη διαχείριση των νομισματικών ζητημάτων στην ΕΕ;',
      'answers': [
        {'text': 'Η Ευρωπαϊκή Κεντρική Τράπεζα', 'score': 10},
        {'text': 'Η Κομισιόν', 'score': 0},
        {'text': 'Η Τρόικα', 'score': 0},
        {'text': 'Το Διεθνές Νομισματικό Ταμείο', 'score': 0},
      ],
    },

//7.291
    {
      'questionText':
          'Σε ποια πόλη λήφθηκε η απόφαση για τη δημιουργία μιας οικονομικής και νομισματικής ένωσης;',
      'answers': [
        {'text': 'Βερολίνο', 'score': 0},
        {'text': 'Μάαστριχτ', 'score': 10},
        {'text': 'Παρίσι', 'score': 0},
        {'text': 'Κοπεγχάγη', 'score': 0},
      ],
    },

//7.292
    {
      'questionText':
          'Για ποιο από τα πιο κάτω ποσά δεν υπάρχει χαρτονόμισμα του ευρώ;',
      'answers': [
        {'text': '20 ευρώ', 'score': 0},
        {'text': '100 ευρώ', 'score': 0},
        {'text': '250 ευρώ', 'score': 10},
        {'text': '500 ευρώ', 'score': 0},
      ],
    },

//7.293
    {
      'questionText':
          'Σε ποιο κυπριακό κέρμα του ευρώ απεικονίζεται το καράβι της Κερύνειας;',
      'answers': [
        {'text': 'Των 2 σεντ', 'score': 0},
        {'text': 'Των 5 σεντ', 'score': 0},
        {'text': 'Των 10 σεντ', 'score': 10},
        {'text': 'Των 2 ευρώ', 'score': 0},
      ],
    },

//7.294
    {
      'questionText':
          'Σε πόσα σεντ υποδιαιρείτο η κυπριακή λίρα που αντικαταστάθηκε από το ευρώ;',
      'answers': [
        {'text': '1000', 'score': 0},
        {'text': '100', 'score': 10},
        {'text': '200', 'score': 0},
        {'text': '500', 'score': 0},
      ],
    },

//7.295
    {
      'questionText': 'Το χαρτονόμισμα της μίας κυπριακής λίρας ήταν χρώματος:',
      'answers': [
        {'text': 'Γαλάζιου', 'score': 0},
        {'text': 'Πράσινου', 'score': 0},
        {'text': 'Μπορντό', 'score': 0},
        {'text': 'Καφέ', 'score': 10},
      ],
    },

//7.296
    {
      'questionText':
          'Πότε κυκλοφόρησαν τα χαρτονομίσματα και τα κέρματα του ευρώ;',
      'answers': [
        {'text': '1999', 'score': 0},
        {'text': '2000', 'score': 0},
        {'text': '2002', 'score': 10},
        {'text': '2004', 'score': 0},
      ],
    },

//7.297
    {
      'questionText':
          'Ποια ήταν η τελευταία χώρα που εντάχθηκε στη ζώνη του ευρώ;',
      'answers': [
        {'text': 'Κύπρος', 'score': 0},
        {'text': 'Σλοβακία', 'score': 0},
        {'text': 'Σλοβενία', 'score': 0},
        {'text': 'Λιθουανία', 'score': 10},
      ],
    },

//7.298
    {
      'questionText': 'Ποιο ήταν το νόμισμα της Γερμανίας πριν από το ευρώ;',
      'answers': [
        {'text': 'Μάρκο', 'score': 10},
        {'text': 'Λίρα', 'score': 0},
        {'text': 'Φράγκο', 'score': 0},
        {'text': 'Κορόνα', 'score': 0},
      ],
    },

//7.299
    {
      'questionText':
          'Ποια από τις πιο κάτω χώρες, ενώ μπορεί να πληροί τις προϋποθέσεις, επέλεξε να μην υιοθετήσει ως νόμισμά της το ευρώ;',
      'answers': [
        {'text': 'Πολωνία', 'score': 0},
        {'text': 'Δανία', 'score': 10},
        {'text': 'Λιθουανία', 'score': 0},
        {'text': 'Λετονία', 'score': 0},
      ],
    },

//7.300
    {
      'questionText':
          'Πόσα περίπου εκατομμύρια είναι οι πολίτες των χωρών μελών της ζώνης του ευρώ;',
      'answers': [
        {'text': '280', 'score': 0},
        {'text': '400', 'score': 0},
        {'text': '360', 'score': 0},
        {'text': '341', 'score': 10},
      ],
    },

//7.301
    {
      'questionText':
          'Πότε έγινε στη Μαδρίτη η συνεδρία του Ευρωπαϊκού Συμβουλίου κατά την οποία υιοθετήθηκε η ονομασία «ευρώ»;',
      'answers': [
        {'text': '1992', 'score': 0},
        {'text': '1995', 'score': 10},
        {'text': '1998', 'score': 0},
        {'text': '1999', 'score': 0},
      ],
    },

//7.302
    {
      'questionText':
          'Ποια χώρα υιοθέτησε το ευρώ ταυτόχρονα με την Κύπρο την 1η Ιανουαρίου 2008;',
      'answers': [
        {'text': 'Μάλτα', 'score': 10},
        {'text': 'Ισπανία', 'score': 0},
        {'text': 'Ελλάδα', 'score': 0},
        {'text': 'Ιταλία', 'score': 0},
      ],
    },

//7.303
    {
      'questionText': 'Ποιο ήταν το νόμισμα της Γαλλίας πριν από το ευρώ;',
      'answers': [
        {'text': 'Λίρα', 'score': 0},
        {'text': 'Μάρκο', 'score': 0},
        {'text': 'Φράγκο', 'score': 10},
        {'text': 'Πεσέτα', 'score': 0},
      ],
    },

//7.304
    {
      'questionText':
          'Μέχρι ποια ημερομηνία η κεντρική Τράπεζα της Κύπρου αντάλλαζε χωρίς χρέωση χαρτονομίσματα της λίρας;',
      'answers': [
        {'text': 'Τέλος 2013', 'score': 0},
        {'text': 'Τέλος 2017', 'score': 10},
        {'text': 'Τέλος 2015', 'score': 0},
        {'text': 'Τέλος 2011', 'score': 0},
      ],
    },

//7.305
    {
      'questionText':
          'Πώς λέγεται η νέα σειρά χαρτονομισμάτων του ευρώ, η κυκλοφορία της οποίας άρχισε το 2013 και αναμένεται να ολοκληρωθεί σε αρκετά χρόνια;',
      'answers': [
        {'text': 'Ιστορία και αρχιτεκτονική', 'score': 0},
        {'text': 'Ευρώπη', 'score': 10},
        {'text': 'Ενοποίηση', 'score': 0},
        {'text': 'Εποχές και ρυθμοί', 'score': 0},
      ],
    },

//7.306
    {
      'questionText':
          'Πόσες χώρες αντικατέστησαν τα εθνικά τους νομίσματα με το ευρώ, την 1η Ιανουαρίου 2002;',
      'answers': [
        {'text': '8', 'score': 0},
        {'text': '12', 'score': 10},
        {'text': '14', 'score': 0},
        {'text': '15', 'score': 0},
      ],
    },

//7.307
    {
      'questionText':
          'Πως αποκαλείται η ομάδα των χωρών που έχουν υιοθετήσει το ευρώ;',
      'answers': [
        {'text': 'Ευρωζώνη', 'score': 10},
        {'text': 'Ενιαία Οικονομική Κοινότητα', 'score': 0},
        {'text': 'Ενιαία Οικονομική Ζώνη', 'score': 0},
        {'text': 'Νομισματική Ένωση Κρατών', 'score': 0},
      ],
    },

//7.308
    {
      'questionText':
          'Ποιο από τα πιο κάτω πριγκιπάτα / κρατίδια, απέκτησε δικά του κέρματα ευρώ τον Ιούνιο του 2013;',
      'answers': [
        {'text': 'Βατικανό', 'score': 0},
        {'text': 'Άγιος Μαρίνος', 'score': 0},
        {'text': 'Μονακό', 'score': 0},
        {'text': 'Ανδόρα', 'score': 10},
      ],
    },

//7.309
    {
      'questionText':
          'Σε ποια ισοτιμία «κλείδωσε» η αντικατάσταση της κυπριακής λίρας;',
      'answers': [
        {'text': '0,622425 λίρες ανά ευρώ', 'score': 0},
        {'text': '0,687452 λίρες ανά ευρώ', 'score': 0},
        {'text': '0,585274 λίρες ανά ευρώ', 'score': 10},
        {'text': '1,710347 λίρες ανά ευρώ', 'score': 0},
      ],
    },

//7.310
    {
      'questionText':
          'Πότε έγινε η υποδιαίρεση της κυπριακής λίρας σε 100 σεντ από 1.000 μιλς που ήταν προηγουμένως;',
      'answers': [
        {'text': '1983', 'score': 10},
        {'text': '1986', 'score': 0},
        {'text': '1978', 'score': 0},
        {'text': '1988', 'score': 0},
      ],
    },

//7.311
    {
      'questionText':
          'Ποια είναι αθροιστικά η αξία μιας σειράς κερμάτων του ευρώ;',
      'answers': [
        {'text': '3,00', 'score': 0},
        {'text': '3,62', 'score': 0},
        {'text': '3,88', 'score': 10},
        {'text': '4,20', 'score': 0},
      ],
    },

//7.312
    {
      'questionText':
          'Ποια υπηρεσία έχει αναλάβει τον συντονισμό της προστασίας του ευρώ από φαινόμενα παραχάραξης;',
      'answers': [
        {'text': 'Η Ευρωπαϊκή Κεντρική Τράπεζα', 'score': 0},
        {'text': 'Η Οικονομική και Νομισματική Ένωση', 'score': 0},
        {'text': 'Η Ευρωπαϊκή Αστυνομική Υπηρεσία (Europol)', 'score': 10},
        {
          'text': 'Ο Διεθνής Οργανισμός Εγκληματολογικής Αστυνομίας (Interpol)',
          'score': 0
        },
      ],
    },

//7.313
    {
      'questionText':
          'Ποιας άλλης χώρας, πέραν της Γαλλίας, το εθνικό νόμισμα πριν από το ευρώ ήταν το φράγκο;',
      'answers': [
        {'text': 'Αυστρίας', 'score': 0},
        {'text': 'Βελγίου', 'score': 10},
        {'text': 'Ιταλίας', 'score': 0},
        {'text': 'Ισπανίας', 'score': 0},
      ],
    },

//7.314
    {
      'questionText': 'Που εδρεύει η Ευρωπαϊκή κεντρική Τράπεζα;',
      'answers': [
        {'text': 'Βερολίνο', 'score': 0},
        {'text': 'Φρανκφούρτη', 'score': 10},
        {'text': 'Παρίσι', 'score': 0},
        {'text': 'Βρυξέλλες', 'score': 0},
      ],
    },

//7.315
    {
      'questionText':
          'Ποια από τις πιο κάτω χώρες χρησιμοποιεί το ευρώ, χωρίς επί σημη συμφωνία και χωρίς να αποτελεί μέρος της ευρωζώνης;',
      'answers': [
        {'text': 'Ουγγαρία', 'score': 0},
        {'text': 'Πολωνία', 'score': 0},
        {'text': 'Σερβία', 'score': 0},
        {'text': 'Μαυροβούνιο', 'score': 10},
      ],
    },

//7.316
    {
      'questionText':
          'Τι είδος χαρτιού επιλέχθηκε για την έκδοση των χαρτονομισμάτων του ευρώ;',
      'answers': [
        {'text': 'Από ίνες βαμβακιού', 'score': 10},
        {'text': 'Ανακυκλωμένο', 'score': 0},
        {'text': 'Από ίνες μεταξιού', 'score': 0},
        {'text': 'Από ίνες λιναριού', 'score': 0},
      ],
    },

//7.317
    {
      'questionText':
          'Από ποιο χαρτονόμισμα του ευρώ άρχισε η έκδοση της νέας σειράς χαρτονομισμάτων, η οποία ονομάζεται «Ευρώπη»;',
      'answers': [
        {'text': '5', 'score': 10},
        {'text': '20', 'score': 0},
        {'text': '100', 'score': 0},
        {'text': '500', 'score': 0},
      ],
    },

//7.318
    {
      'questionText':
          'Τι από τα πιο κάτω δεν ισχύει για τα χαρτονομίσματα του ευρώ;',
      'answers': [
        {
          'text':
              'Τα χαρτονομίσματα με διαδοχικές αξίες έχουν χρώματα με ισχυρές αντιθέσεις',
          'score': 0
        },
        {
          'text': 'Η αξία αναγράφεται με μεγάλους αριθμούς και έντονα στοιχεία',
          'score': 0
        },
        {
          'text': 'Τα χαρτονομίσματα διαφόρων αξιών έχουν το ίδιο μέγεθος',
          'score': 10
        },
        {
          'text':
              'Έχουν ανάγλυφη εκτύπωση η οποία είναι εύκολα αισθητή στην αφή',
          'score': 0
        },
      ],
    },

//7.319
    {
      'questionText':
          'Ποιος είναι από την 1 Νοεμβρίου 2019 πρόεδρος της Ευρωπαϊκής κεντρικής Τράπεζας;',
      'answers': [
        {'text': 'Ζοζέ Μανουέλ Μπαρόζο (José Manuel Barroso)', 'score': 0},
        {'text': 'Κριστίν Λαγκάρντ (Christine Lagarde)', 'score': 10},
        {'text': 'Μάριο Μόντι (Mario Monti)', 'score': 0},
        {'text': 'Μάρτιν Σουλτς (Martin Schulz)', 'score': 0},
      ],
    },

//7.320
    {
      'questionText':
          'Η μια πλευρά των κερμάτων του ευρώ είναι ίδια σε όλες τις χώρες. Τι απεικονίζεται στην άλλη πλευρά;',
      'answers': [
        {'text': 'Τα 12 αστέρια της Ευρωπαϊκής Ένωσης', 'score': 0},
        {'text': 'Ο χάρτης της Ευρώπης', 'score': 0},
        {'text': 'Το κτίριο Μπερλεμόντ στις Βρυξέλλες', 'score': 0},
        {
          'text': 'Σχέδια που αντιπροσωπεύουν κάθε συγκεκριμένη χώρα',
          'score': 10
        },
      ],
    },

//7.321
    {
      'questionText':
          'Ποια είναι η μεγαλύτερη ανησυχία κυβερνήσεων και κεντρικών τραπεζών τις πρώτες μέρες εισαγωγής του ευρώ σε μια χώρα;',
      'answers': [
        {
          'text': 'Οι στρογγυλοποιήσεις των τιμών των προϊόντων προς τα πάνω',
          'score': 10
        },
        {
          'text': 'Η πιθανότητα έλλειψης χαρτονομισμάτων και κερμάτων',
          'score': 0
        },
        {'text': 'Η παραχάραξη των χαρτονομισμάτων', 'score': 0},
        {
          'text':
              'Η ισοτιμία στην οποία θα κλειδώσει το ευρώ με το εθνικό νόμισμα',
          'score': 0
        },
      ],
    },

//7.322
    {
      'questionText':
          'Ποια είναι αθροιστικά η αξία μιας σειράς χαρτονομισμάτων του ευρώ;',
      'answers': [
        {'text': '855', 'score': 0},
        {'text': '865', 'score': 0},
        {'text': '885', 'score': 0},
        {'text': '915', 'score': 10},
      ],
    },

//7.323
    {
      'questionText':
          'Πώς λεγόταν η ευρωπαϊκή νομισματική μονάδα, πριν ονομαστεί ευρώ;',
      'answers': [
        {'text': 'ENI', 'score': 0},
        {'text': 'ECU', 'score': 10},
        {'text': 'ONE', 'score': 0},
        {'text': 'ECB', 'score': 0},
      ],
    },

//7.324
    {
      'questionText':
          'Τι από τα πάρα κάτω δεν ισχύει σε σχέση με το σύμβολο του ευρώ;',
      'answers': [
        {
          'text': 'Είναι το ελληνικό γράμμα έψιλον με δύο εγκάρσιες γραμμές',
          'score': 0
        },
        {'text': 'Παραπέμπει στο πρώτο γράμμα της λέξης Ευρώπη', 'score': 0},
        {
          'text': 'Οι δυο γραμμές συμβολίζουν τη σταθερότητα του ευρώ',
          'score': 0
        },
        {
          'text': 'Συνήθως εμφανίζεται σε μπλε χρώμα πάνω σε κίτρινο φόντο',
          'score': 10
        },
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
                                    builder: (context) => cat7questionpage()),
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
