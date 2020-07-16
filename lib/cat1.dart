import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './answer.dart';
import './start.dart';
import 'dart:math';

class cat1questionpage extends StatefulWidget {
  @override
  _cat1questionpageState createState() => _cat1questionpageState();
}

class _cat1questionpageState extends State<cat1questionpage> {
  final questions = const [
//1.1
    {
      'questionText': 'Γιατί δημιουργήθηκε η Ευρωπαϊκή Ένωση;',
      'answers': [
        {
          'text':
              'Για να τεθεί τέλος στους συχνούς πολέμους που κατέληξαν στον Β’ Παγκόσμιο Πόλεμο',
          'score': 10
        },
        {
          'text':
              'Για να αντισταθούν οι Ευρωπαίοι στην οικονομική ανάπτυξη των Ηνωμένων Πολιτειών της Αμερικής',
          'score': 0
        },
        {
          'text':
              'Για να ενωθούν οι δυτικές χώρες της Ευρώπης έναντι των χωρών του Συμφώνου της Βαρσοβίας',
          'score': 0
        },
        {
          'text': 'Για να καταργηθούν τα σύνορα μεταξύ των χωρών της Ευρώπης',
          'score': 0
        },
      ],
    },

//1.2
    {
      'questionText':
          'Ποιος ήταν ο πρόδρομος της δημιουργίας της Ευρωπαϊκής Ένωσης;',
      'answers': [
        {'text': 'Η Κοινωνία των Εθνών', 'score': 0},
        {'text': 'Η Ευρωπαϊκή Κοινότητα Άνθρακα και Χάλυβα', 'score': 10},
        {'text': 'Το Κίνημα των Αδεσμεύτων', 'score': 0},
        {'text': 'Η Κοινοπολιτεία των Εθνών', 'score': 0},
      ],
    },

//1.3
    {
      'questionText':
          'Πότε δημιουργήθηκε η ΕΟΚ (Ευρωπαϊκή οικονομική κοινότητα);',
      'answers': [
        {'text': '9 Μαΐου 1950', 'score': 0},
        {'text': '18 Απριλίου 1951', 'score': 0},
        {'text': '30 Αυγούστου 1954', 'score': 0},
        {'text': '25 Μαρτίου 1957', 'score': 10},
      ],
    },

//1.4
    {
      'questionText':
          'Πότε υπέβαλαν η Ελλάδα και η Τουρκία αίτηση σύνδεσης με την ΕΟΚ;',
      'answers': [
        {'text': '2004', 'score': 0},
        {'text': '1999', 'score': 0},
        {'text': '2012', 'score': 0},
        {'text': '1959', 'score': 10},
      ],
    },

//1.5
    {
      'questionText':
          'Ποιος από τους πιο κάτω δεν περιλαμβάνεται στους ιδρυτές της ΕΕ;',
      'answers': [
        {'text': 'Μιχαήλ Γκορμπατσώφ (Mikhail Gorbachev)', 'score': 10},
        {'text': 'Ουίνστον Τσόρτσιλ (Winston Churchill) ', 'score': 0},
        {'text': 'Ρομπέρ Σουμάν (Robert Schuman)', 'score': 0},
        {'text': 'Αλτιέρο Σπινέλι (Altiero Spinelli)', 'score': 0},
      ],
    },

//1.6
    {
      'questionText':
          'Ο Oυίνστον Tσόρτσιλ, ένας εκ των 11 ανθρώπων που θεωρούνται οι ιδρυτές της ΕΕ, διετέλεσε:',
      'answers': [
        {'text': 'Πρωθυπουργός του Ηνωμένου Βασιλείου', 'score': 10},
        {'text': 'Κυβερνήτης της Κύπρου', 'score': 0},
        {'text': 'Πρωθυπουργός της Πολωνίας', 'score': 0},
        {'text': 'Πρόεδρος των ΗΠΑ', 'score': 0},
      ],
    },

//1.7
    {
      'questionText':
          'Τι καταργήθηκε την 1η Ιουλίου 1968 μεταξύ των έξι, τότε, κρατών μελών της ΕΕ;',
      'answers': [
        {'text': 'Η ελεύθερη διασυνοριακή διακίνηση ανθρώπων', 'score': 0},
        {'text': 'Η απαγόρευση στη μεταφορά κατοικίδιων ζώων', 'score': 0},
        {'text': 'Οι τελωνειακοί δασμοί', 'score': 10},
        {
          'text': 'Η απαγόρευση πώλησης γαλλικής σαμπάνιας εκτός Γαλλίας',
          'score': 0
        },
      ],
    },

//1.8
    {
      'questionText':
          'Ποια από τις πιο κάτω δεν περιλαμβάνεται στις «τέσσερις ελευθερίες» μεταξύ των κρατών μελών της ΕΕ που καθιερώθηκαν με την ολοκλήρωση της Ενιαίας Αγοράς το 1993;',
      'answers': [
        {'text': 'Ελεύθερη κυκλοφορία εφευρέσεων', 'score': 10},
        {'text': 'Ελεύθερη κυκλοφορία αγαθών', 'score': 0},
        {'text': 'Ελεύθερη κυκλοφορία προσώπων', 'score': 0},
        {'text': 'Ελεύθερη κυκλοφορία υπηρεσιών', 'score': 0},
      ],
    },

//1.9
    {
      'questionText':
          'Με ποια συνθήκη η «Ευρωπαϊκή Κοινότητα» μετονομάστηκε, στις 7 Φεβρουαρίου 1992, επίσημα, σε «Ευρωπαϊκή Ένωση»;',
      'answers': [
        {'text': 'Συνθήκη της Λευκωσίας', 'score': 0},
        {'text': 'Συνθήκη των Ευρωπαίων', 'score': 0},
        {'text': 'Συνθήκη του Μάαστριχτ', 'score': 10},
        {'text': 'Συνθήκη των Σεβρών', 'score': 0},
      ],
    },

//1.10
    {
      'questionText':
          'Η συμφωνία του Σένγκεν, που τέθηκε σε εφαρμογή στις 26 Μαρτίου 1995, σε επτά χώρες προνοούσε ότι οι υπήκοοί τους μπορούσαν: ',
      'answers': [
        {
          'text': 'Να αγωνίζονται σε ποδοσφαιρικές ομάδες όποιας χώρας ήθελαν',
          'score': 0
        },
        {'text': 'Να επιλέξουν την υπηκοότητα που προτιμούσαν', 'score': 0},
        {
          'text': 'Να διακινούνται χωρίς έλεγχο διαβατηρίων στα σύνορα',
          'score': 10
        },
        {
          'text':
              'Να επιλέγουν τη χώρα στην οποία θα πληρώνουν φόρο εισοδήματος',
          'score': 0
        },
      ],
    },

//1.11
    {
      'questionText':
          'Στις 13 Δεκεμβρίου 2007 τα 27 κράτη μέλη της ΕΕ υπογράφουν τη Συνθήκη της Λισαβόνας. Ποιος ήταν ο στόχος της;',
      'answers': [
        {
          'text':
              'Να καταστήσει την ΕΕ πιο δημοκρατική, αποτελεσματική και διαφανή',
          'score': 10
        },
        {
          'text': 'Να απαγορεύσει τις εισαγωγές προϊόντων από την Κίνα',
          'score': 0
        },
        {'text': 'Να μειώσει τις εργάσιμες μέρες σε τέσσερις', 'score': 0},
        {
          'text': 'Να μετατραπούν όλες οι γεωργικές καλλιέργειες σε βιολογικές',
          'score': 0
        },
      ],
    },

//1.12
    {
      'questionText':
          'Η σημαία της ΕΕ δεν είναι μόνο σύμβολο της Ευρωπαϊκής Ένωσης, αλλά και:',
      'answers': [
        {'text': 'Της Εθνικής ομάδας καλαθόσφαιρας του Βελγίου', 'score': 0},
        {
          'text': 'Της ενότητας και της ταυτότητας της Ευρώπης γενικότερα',
          'score': 10
        },
        {'text': 'Των μουσικών της Ευρώπης', 'score': 0},
        {'text': 'Των αστρονόμων της Ευρώπης', 'score': 0},
      ],
    },

//1.13
    {
      'questionText':
          'Η σημαία της ΕΕ περιέχει κίτρινα αστέρια, σε κύκλο με μπλε φόντο, ο αριθμός των οποίων είναι:',
      'answers': [
        {'text': 'Όσα τα εκάστοτε κράτη μέλη', 'score': 0},
        {'text': '43', 'score': 0},
        {'text': '1', 'score': 0},
        {'text': '12', 'score': 10},
      ],
    },

//1.14
    {
      'questionText': 'Τα αστέρια σε κύκλο της σημαίας της ΕΕ συμβολίζουν:',
      'answers': [
        {'text': 'Το πλανητικό μας σύστημα', 'score': 0},
        {'text': 'Το φως του πολιτισμού', 'score': 0},
        {'text': 'Το μέλλον ', 'score': 0},
        {
          'text':
              'Τα ιδανικά της ενότητας, της αλληλεγγύης και της αρμονίας ανάμεσα στους λαούς της Ευρώπης',
          'score': 10
        },
      ],
    },

//1.15
    {
      'questionText':
          'Το 1983 η σημαία της ΕΕ, εγκρίθηκε από το Ευρωπαϊκό κοινοβούλιο. Αναγνωρίστηκε από όλους τους ηγέτες της ΕΕ ως το επίσημο έμβλημα της Ευρωπαϊκής Ένωσης το:',
      'answers': [
        {'text': '2013', 'score': 0},
        {'text': '1940', 'score': 0},
        {'text': '1985', 'score': 10},
        {'text': '2012', 'score': 0},
      ],
    },

//1.16
    {
      'questionText': 'Κάθε ευρωπαϊκό όργανο έχει τώρα το δικό του έμβλημα:',
      'answers': [
        {'text': 'Ναι', 'score': 10},
        {'text': 'Όχι', 'score': 0},
        {'text': 'Μόνο το Ευρωκοινοβούλιο', 'score': 0},
        {'text': 'Μόνο η Ευρωπαϊκή Κεντρική Τράπεζα', 'score': 0},
      ],
    },

//1.17
    {
      'questionText':
          'Η Ενάτη Συμφωνία που συνέθεσε ο Λούντβιχ βαν Μπετόβεν το 1823, που μελοποίησε τους στίχους του Φρίντριχ Σίλερ «Ωδή στη Χαρά», χρησιμοποιείται:',
      'answers': [
        {'text': 'Από την Μπάγερν Μονάχου ως ο ύμνος της', 'score': 0},
        {'text': 'Από την ΕΕ ως ο ύμνος της', 'score': 10},
        {
          'text': 'Για να χαλαρώνουν οι υπάλληλοι της Ευρωπαϊκής Επιτροπής',
          'score': 0
        },
        {'text': 'Από την UEFA στα παιχνίδια του Champions League', 'score': 0},
      ],
    },

//1.18
    {
      'questionText': 'Πότε γιορτάζεται η Ημέρα της Ευρώπης;',
      'answers': [
        {'text': 'Την 1η Ιανουαρίου', 'score': 0},
        {'text': 'Στις 9 Μαΐου', 'score': 10},
        {'text': 'Κάθε τέσσερα χρόνια στις 29 Φεβρουαρίου', 'score': 0},
        {'text': 'Δεν υπάρχει Ημέρα της Ευρώπης', 'score': 0},
      ],
    },

//1.19
    {
      'questionText':
          'Οι ιδέες πάνω στις οποίες θεμελιώθηκε η ΕΕ διατυπώθηκαν στις 9 Μαΐου 1910 από τον Ρομπέρ Σουμάν. Για αυτό το λόγο στις 9 Μαΐου τιμάται και η επέτειος της:',
      'answers': [
        {'text': 'Διακήρυξης Σουμάν', 'score': 10},
        {'text': 'Επανάστασης Σουμάν', 'score': 0},
        {'text': 'Ιδέας Σουμάν', 'score': 0},
        {'text': 'Θεμελίωσης', 'score': 0},
      ],
    },

//1.20
    {
      'questionText':
          'Η «Ημέρα της Ευρώπης» δίνει την ευκαιρία για δραστηριότητες και εκδηλώσεις που φέρνουν τα θεσμικά όργανα της ΕΕ πιο κοντά στο ευρύ κοινό και:',
      'answers': [
        {'text': 'Είναι δημόσια αργία στην Κύπρο', 'score': 0},
        {
          'text': 'Είναι η μοναδική κοινή δημόσια αργία στις χώρες της ΕΕ',
          'score': 0
        },
        {
          'text':
              'Μόνο για αυτή τη μέρα εφαρμόζεται η Συμφωνία Σέγκεν σε όλες τις χώρες της ΕΕ',
          'score': 0
        },
        {'text': 'Προάγει την προσέγγιση των λαών της Ευρώπης', 'score': 10},
      ],
    },

//1.21
    {
      'questionText':
          'Το Σύνθημα της ΕΕ τονίζει την απόφαση των Ευρωπαίων να ενωθούν δημιουργώντας την ΕΕ και να συνεργαστούν για την ειρήνη & ευημερία. Το Σύνθημα είναι:',
      'answers': [
        {'text': '«Μαζί μπορούμε»', 'score': 0},
        {'text': '«Ενωμένοι στην πολυμορφία»', 'score': 10},
        {'text': '«Η Ευρώπη δεν είναι μόνη»', 'score': 0},
        {'text': '«Πάντα μαζί»', 'score': 0},
      ],
    },

//1.22
    {
      'questionText': 'Πόσες είναι οι επίσημες γλώσσες στην ΕΕ;',
      'answers': [
        {'text': '24', 'score': 10},
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '33', 'score': 0},
      ],
    },

//1.23
    {
      'questionText':
          'Τα άτομα που ζουν στην ΕΕ έχουν το δικαίωμα να απευθυνθούν γραπτώς στην Ευρωπαϊκή Επιτροπή και να λάβουν απάντηση:',
      'answers': [
        {'text': 'Στα ουγγρικά', 'score': 0},
        {'text': 'Στα ελληνικά', 'score': 0},
        {'text': 'Στην ίδια γλώσσα', 'score': 10},
        {'text': 'Στα σουηδικά', 'score': 0},
      ],
    },

//1.24
    {
      'questionText':
          'Τα μέλη του Ευρωπαϊκού κοινοβουλίου έχουν το δικαίωμα να χρησιμοποιούν οποιαδήποτε από τις επίσημες γλώσσες της ΕΕ, όταν μιλούν:',
      'answers': [
        {'text': 'Μεταξύ τους', 'score': 0},
        {'text': 'Στην καφετέρια', 'score': 0},
        {'text': 'Στο τηλέφωνο', 'score': 0},
        {'text': 'Στο Κοινοβούλιο', 'score': 10},
      ],
    },

//1.25
    {
      'questionText': 'Στις 10 Δεκεμβρίου 2012 απονεμήθηκε στην ΕΕ:',
      'answers': [
        {'text': 'Το Βραβείο Όσκαρ', 'score': 0},
        {'text': 'Το Βραβείο Νόμπελ Χημείας', 'score': 0},
        {'text': 'Η Χρυσή Άρκτος', 'score': 0},
        {'text': 'Το Βραβείο Νόμπελ Ειρήνης', 'score': 10},
      ],
    },

//1.26
    {
      'questionText':
          'Η Νορβηγική Επιτροπή Νόμπελ ανέφερε ότι η βράβευση της ΕΕ βασίστηκε στον ρόλο της ΕΕ ως σταθεροποιητικού παράγοντα, ο οποίος μετέτρεψε την Ευρώπη:',
      'answers': [
        {'text': 'Από ήπειρο πολέμων σε ήπειρο ειρήνης', 'score': 10},
        {'text': 'Σε μια πλούσια ήπειρο', 'score': 0},
        {'text': 'Σε μια γαλήνια περιοχή', 'score': 0},
        {'text': 'Σε ασφαλή τόπο κατοίκησης', 'score': 0},
      ],
    },

//1.27
    {
      'questionText':
          'Η ΕΕ διέθεσε τα χρήματα του Βραβείου Νόμπελ (930.000 ευρώ) που κέρδισε:',
      'answers': [
        {'text': 'Στο διαστημικό της πρόγραμμα', 'score': 0},
        {'text': 'Για την αμυντική της ενίσχυση', 'score': 0},
        {
          'text':
              'Σε προγράμματα στήριξης παιδιών που έχουν πέσει θύματα πολέμων και συγκρούσεων',
          'score': 10
        },
        {'text': 'Για ανέγερση μνημείου ειρήνης', 'score': 0},
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
    randnum = Random().nextInt(27);
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
                                    builder: (context) => cat1questionpage()),
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
