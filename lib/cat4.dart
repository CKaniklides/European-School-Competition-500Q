import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './answer.dart';
import './start.dart';
import 'dart:math';

class cat4questionpage extends StatefulWidget {
  @override
  _cat4questionpageState createState() => _cat4questionpageState();
}

class _cat4questionpageState extends State<cat4questionpage> {
  final questions = const [
//4.133
    {
      'questionText':
          'Την 1η Οκτωβρίου 2019, από πόσα κράτη μέλη αποτελείτο η Ευρωπαϊκή Ένωση;',
      'answers': [
        {'text': '15', 'score': 0},
        {'text': '25', 'score': 0},
        {'text': '28', 'score': 10},
        {'text': '30', 'score': 0},
      ],
    },

//4.134
    {
      'questionText':
          'Πως λέγεται το χρηματοδοτικό πρόγραμμα της Ευρωπαϊκής Ένωσης που στηρίζει τον πολιτισμό;',
      'answers': [
        {'text': 'Δημιουργική Ευρώπη', 'score': 10},
        {'text': 'Πολιτιστική Ευρώπη', 'score': 0},
        {'text': 'Διασυνοριακή Ευρώπη', 'score': 0},
        {'text': 'Ευρώπη της κουλτούρας', 'score': 0},
      ],
    },

//4.135
    {
      'questionText':
          'Ποια από τις πιο κάτω δεν είναι υποψήφια προς ένταξη στην Ευρωπαϊκή Ένωση χώρα;',
      'answers': [
        {'text': 'Ιρλανδία', 'score': 10},
        {'text': 'Μαυροβούνιο', 'score': 0},
        {'text': 'Σερβία', 'score': 0},
        {'text': 'Τουρκία', 'score': 0},
      ],
    },

//4.136
    {
      'questionText':
          'Ποιο από τα πιο κάτω κράτη της ευρωπαϊκής ηπείρου δεν ανήκει στην Ευρωπαϊκή Ένωση;',
      'answers': [
        {'text': 'Εσθονία', 'score': 0},
        {'text': 'Λετονία', 'score': 0},
        {'text': 'Ελβετία', 'score': 10},
        {'text': 'Ουγγαρία', 'score': 0},
      ],
    },

//4.137
    {
      'questionText':
          'Ποια από τις πιο κάτω είναι εν δυνάμει υποψήφια προς ένταξη στην Ευρωπαϊκή Ένωση χώρα;',
      'answers': [
        {'text': 'Λιθουανία', 'score': 0},
        {'text': 'Βοσνία - Ερζεγοβίνη', 'score': 10},
        {'text': 'Λετονία', 'score': 0},
        {'text': 'Κροατία', 'score': 0},
      ],
    },

//4.138
    {
      'questionText':
          'Ποιο κράτος προσχώρησε στην Ευρωπαϊκή Ένωση την 1η Ιουλίου 2013;',
      'answers': [
        {'text': 'Ρουμανία', 'score': 0},
        {'text': 'Κροατία', 'score': 10},
        {'text': 'Νορβηγία', 'score': 0},
        {'text': 'Δανία', 'score': 0},
      ],
    },

//4.139
    {
      'questionText':
          'Με πόσα ακόμη κράτη της ευρωπαϊκής ηπείρου συνορεύει η Ευρωπαϊκή Ένωση;',
      'answers': [
        {'text': '6', 'score': 0},
        {'text': '10', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '18', 'score': 10},
      ],
    },

//4.140
    {
      'questionText':
          'Ποιο είναι το μικρότερο πληθυσμιακά κράτος μέλος της Ευρωπαϊκής Ένωσης;',
      'answers': [
        {'text': 'Κύπρος', 'score': 0},
        {'text': 'Μάλτα', 'score': 10},
        {'text': 'Πολωνία', 'score': 0},
        {'text': 'Λουξεμβούργο', 'score': 0},
      ],
    },

//4.141
    {
      'questionText':
          'Ποια κριτήρια πρέπει να πληροί ένα κράτος για να προσχωρήσει στην Ευρωπαϊκή Ένωση;',
      'answers': [
        {'text': 'Μάαστριχτ', 'score': 0},
        {'text': 'Σένγκεν', 'score': 0},
        {'text': 'Λισαβόνας', 'score': 0},
        {'text': 'Κοπεγχάγης', 'score': 10},
      ],
    },

//4.142
    {
      'questionText': 'Δεν είναι ιδρυτικό μέλος της Ευρωπαϊκής Ένωσης:',
      'answers': [
        {'text': 'Το Βέλγιο', 'score': 0},
        {'text': 'Το Λουξεμβούργο', 'score': 0},
        {'text': 'Η Ισπανία', 'score': 10},
        {'text': 'Οι Κάτω Χώρες', 'score': 0},
      ],
    },

//4.143
    {
      'questionText': 'Το βορειότερο άκρο της Ευρωπαϊκής Ένωσης είναι η:',
      'answers': [
        {'text': 'Εσθονία', 'score': 0},
        {'text': 'Φινλανδία', 'score': 10},
        {'text': 'Λετονία', 'score': 0},
        {'text': 'Σουηδία', 'score': 0},
      ],
    },

//4.144
    {
      'questionText':
          'Η Λιουμπλιάνα είναι πρωτεύουσα αυτού του κράτους της ΕΕ:',
      'answers': [
        {'text': 'Αυστρίας', 'score': 0},
        {'text': 'Σλοβακίας', 'score': 0},
        {'text': 'Ιρλανδίας', 'score': 0},
        {'text': 'Σλοβενίας', 'score': 10},
      ],
    },

//4.145
    {
      'questionText':
          'Κράτος μέλος του οποίου η ονομασία σημαίνει «ανατολικό βασίλειο»:',
      'answers': [
        {'text': 'Βουλγαρία', 'score': 0},
        {'text': 'Τσεχία', 'score': 0},
        {'text': 'Αυστρία', 'score': 10},
        {'text': 'Ρουμανία', 'score': 0},
      ],
    },

//4.146
    {
      'questionText':
          'Ποιο από τα παρακάτω εδάφη δεν αποτελεί μέρος της Ευρωπαϊκής Ένωσης;',
      'answers': [
        {'text': 'Μαδέρα', 'score': 0},
        {'text': 'Κανάριοι Νήσοι', 'score': 0},
        {'text': 'Γουαδελούπη', 'score': 0},
        {'text': 'Νήσοι Φερόες', 'score': 10},
      ],
    },

//4.147
    {
      'questionText':
          'Πότε έλαβε χώρα η τελευταία διεύρυνση της Ευρωπαϊκής Ένωσης;',
      'answers': [
        {'text': '1995', 'score': 0},
        {'text': '2004', 'score': 0},
        {'text': '2007', 'score': 0},
        {'text': '2013', 'score': 10},
      ],
    },

//4.148
    {
      'questionText':
          'Κοινή πατρίδα των Μότσαρτ, Σούμπερτ, Φρόυντ και Βιτγκενστάιν:',
      'answers': [
        {'text': 'Γερμανία', 'score': 0},
        {'text': 'Αυστρία', 'score': 10},
        {'text': 'Ουγγαρία', 'score': 0},
        {'text': 'Δανία', 'score': 0},
      ],
    },

//4.149
    {
      'questionText':
          'To Ίνσμπρουκ είναι πρωτεύουσα αυτού του κρατιδίου χώρας μέλους της ΕΕ:',
      'answers': [
        {'text': 'Μπούργκενλαντ', 'score': 0},
        {'text': 'Καρινθία', 'score': 0},
        {'text': 'Στυρία', 'score': 0},
        {'text': 'Τυρόλο της Αυστρίας', 'score': 10},
      ],
    },

//4.150
    {
      'questionText': 'Στο Βέλγιο αυτή η επαρχία αποτελεί τμήμα της Φλάνδρας:',
      'answers': [
        {'text': 'Λιμβουργία', 'score': 10},
        {'text': 'Ενό', 'score': 0},
        {'text': 'Ναμίρ', 'score': 0},
        {'text': 'Ζηλανδία', 'score': 0},
      ],
    },

//4.151
    {
      'questionText': 'Ο κωδικός κλήσης +32 ανήκει στο κράτος μέλος:',
      'answers': [
        {'text': 'Ελλάδα', 'score': 0},
        {'text': 'Βουλγαρία', 'score': 0},
        {'text': 'Βέλγιο', 'score': 10},
        {'text': 'Λουξεμβούργο', 'score': 0},
      ],
    },

//4.152
    {
      'questionText':
          'Βασική έδρα θεσμικών οργάνων της Ευρωπαϊκής Ένωσης, το όνομα της οποίας σημαίνει «σπίτι στον βάλτο»:',
      'answers': [
        {'text': 'Στρασβούργο', 'score': 0},
        {'text': 'Βρυξέλλες', 'score': 10},
        {'text': 'Χάγη', 'score': 0},
        {'text': 'Φρανκφούρτη', 'score': 0},
      ],
    },

//4.153
    {
      'questionText':
          'Το Λεβ αποτελεί εθνικό νόμισμα αυτού του κράτους μέλους:',
      'answers': [
        {'text': 'Ρουμανίας', 'score': 0},
        {'text': 'Ουγγαρίας', 'score': 0},
        {'text': 'Βουλγαρίας', 'score': 10},
        {'text': 'Πολωνίας', 'score': 0},
      ],
    },

//4.154
    {
      'questionText':
          'Ποιος ποταμός αποτελεί φυσικό σύνορο της Ρουμανίας και της Βουλγαρίας;',
      'answers': [
        {'text': 'Βόλγας', 'score': 0},
        {'text': 'Δούναβης', 'score': 10},
        {'text': 'Σηκουάνας', 'score': 0},
        {'text': 'Ρήνος', 'score': 0},
      ],
    },

//4.155
    {
      'questionText':
          'Ποια πόλη της Βουλγαρίας αποκαλείται και «θερινή πρωτεύουσα»;',
      'answers': [
        {'text': 'Σόφια', 'score': 0},
        {'text': 'Λόβετς', 'score': 0},
        {'text': 'Ρούσε', 'score': 0},
        {'text': 'Βάρνα', 'score': 10},
      ],
    },

//4.156
    {
      'questionText':
          'Η καγιέν είναι πρωτεύουσα υπερπόντιου διαμερίσματος της χώρας αυτής της ΕΕ:',
      'answers': [
        {'text': 'Γαλλίας', 'score': 10},
        {'text': 'Ιταλίας', 'score': 0},
        {'text': 'Πορτογαλίας', 'score': 0},
        {'text': 'Ισπανίας', 'score': 0},
      ],
    },

//4.157
    {
      'questionText':
          'Στο έμβλημά της αναγράφεται το σύνθημα «Ελευθερία, Ισότητα, Αδελφοσύνη»:',
      'answers': [
        {'text': 'Σλοβακίας', 'score': 0},
        {'text': 'Δανίας', 'score': 0},
        {'text': 'Ηνωμένου Βασιλείου', 'score': 0},
        {'text': 'Γαλλίας', 'score': 10},
      ],
    },

//4.158
    {
      'questionText':
          'Οι όχθες του ποταμού αυτού καταγράφονται από την UNESCO ανάμεσα στα μνημεία παγκόσμιας πολιτισμικής κληρονομιάς:',
      'answers': [
        {'text': 'Τάμεση', 'score': 0},
        {'text': 'Λίγηρα', 'score': 0},
        {'text': 'Σηκουάνα', 'score': 10},
        {'text': 'Γαρούνα', 'score': 0},
      ],
    },

//4.159
    {
      'questionText': 'Ποια είναι η πολυπληθέστερη χώρα στην Ευρωπαϊκή Ένωση;',
      'answers': [
        {'text': 'Πολωνία', 'score': 0},
        {'text': 'Γερμανία', 'score': 10},
        {'text': 'Ισπανία', 'score': 0},
        {'text': 'Ηνωμένο Βασίλειο', 'score': 0},
      ],
    },

//4.160
    {
      'questionText': 'Οι 12 κίονες στην Πύλη του Βρανδεμβούργου είναι ρυθμού:',
      'answers': [
        {'text': 'Ιωνικού', 'score': 0},
        {'text': 'Γοτθικού', 'score': 0},
        {'text': 'Κορινθιακού', 'score': 0},
        {'text': 'Δωρικού', 'score': 10},
      ],
    },

//4.161
    {
      'questionText':
          'Το Σπίτι του Γκαίτε αποτελεί αξιοθέατο της πόλης αυτής της ΕΕ:',
      'answers': [
        {'text': 'Δρέσδης', 'score': 0},
        {'text': 'Φρανκφούρτης', 'score': 10},
        {'text': 'Στουτγκάρδης', 'score': 0},
        {'text': 'Βρέμης', 'score': 0},
      ],
    },

//4.162
    {
      'questionText':
          'Η μικρή γοργόνα είναι τοποθετημένη στην άκρη του λιμανιού της:',
      'answers': [
        {'text': 'Μασσαλίας', 'score': 0},
        {'text': 'Νίκαιας', 'score': 0},
        {'text': 'Θεσσαλονίκης', 'score': 0},
        {'text': 'Κοπεγχάγης', 'score': 10},
      ],
    },

//4.163
    {
      'questionText':
          'Από πού καταγόταν ο λογοτέχνης και συγγραφέας παραμυθιών Χανς Κρίστιαν Άντερσεν;',
      'answers': [
        {'text': 'Σουηδία', 'score': 0},
        {'text': 'Αυστρία', 'score': 0},
        {'text': 'Δανία', 'score': 10},
        {'text': 'Φινλανδία', 'score': 0},
      ],
    },

//4.164
    {
      'questionText':
          'Πόσα μέτρα πάνω από το επίπεδο της θάλασσας βρίσκεται το υψηλότερο σημείο της Δανίας; ',
      'answers': [
        {'text': '532', 'score': 0},
        {'text': '173', 'score': 10},
        {'text': '246', 'score': 0},
        {'text': '309', 'score': 0},
      ],
    },

//4.165
    {
      'questionText': 'Κράτος μέλος στο νοτιότερο άκρο των Βαλκανίων:',
      'answers': [
        {'text': 'Ιταλία', 'score': 0},
        {'text': 'Ουγγαρία', 'score': 0},
        {'text': 'Σλοβενία', 'score': 0},
        {'text': 'Ελλάδα', 'score': 10},
      ],
    },

//4.166
    {
      'questionText':
          'Η Ελλάδα είναι το μοναδικό κράτος μέλος της Ευρωπαϊκής Ένωσης που έχει μεγαλύτερη ακτογραμμή από την:',
      'answers': [
        {'text': 'Κίνα', 'score': 10},
        {'text': 'Αυστραλία', 'score': 0},
        {'text': 'Ιαπωνία', 'score': 0},
        {'text': 'Ινδονησία', 'score': 0},
      ],
    },

//4.167
    {
      'questionText': 'Γιος του Δία και της Ευρώπης σύμφωνα με τη μυθολογία:',
      'answers': [
        {'text': 'Ορφέας', 'score': 0},
        {'text': 'Ηρακλής', 'score': 0},
        {'text': 'Περσέας', 'score': 0},
        {'text': 'Μίνωας', 'score': 10},
      ],
    },

//4.168
    {
      'questionText':
          'Το Σάαρεμαα είναι το μεγαλύτερο νησί της πιο κάτω χώρας της ΕΕ στη Βαλτική θάλασσα:',
      'answers': [
        {'text': 'Σουηδίας', 'score': 0},
        {'text': 'Λετονίας', 'score': 0},
        {'text': 'Εσθονίας', 'score': 10},
        {'text': 'Φινλανδίας', 'score': 0},
      ],
    },

//4.169
    {
      'questionText':
          'Η μεγαλύτερη υπερεθνική λίμνη γλυκού νερού στην Ευρώπη, στα σύνορα μεταξύ της Εσθονίας και της Ρωσίας, ονομάζεται:',
      'answers': [
        {'text': 'Λάντογκα', 'score': 0},
        {'text': 'Πέιπους', 'score': 10},
        {'text': 'Βένερν', 'score': 0},
        {'text': 'Σαϊμάα', 'score': 0},
      ],
    },

//4.170
    {
      'questionText':
          'Ο χαρακτηρισμός «Γηραιά Αλβιώνα» χρησιμοποιείται κάποιες φορές ως εναλλακτικό όνομα για αυτό το κράτος μέλος:',
      'answers': [
        {'text': 'Ηνωμένο Βασίλειο', 'score': 10},
        {'text': 'Γαλλία', 'score': 0},
        {'text': 'Ισπανία', 'score': 0},
        {'text': 'Γερμανία', 'score': 0},
      ],
    },

//4.171
    {
      'questionText': 'Με ποια από τις πιο κάτω χώρες δεν συνορεύει η Κροατία;',
      'answers': [
        {'text': 'Ουγγαρία', 'score': 0},
        {'text': 'Σλοβενία', 'score': 0},
        {'text': 'Σερβία', 'score': 0},
        {'text': 'Αυστρία', 'score': 10},
      ],
    },

//4.172
    {
      'questionText':
          'Αστικό κέντρο που δεν βρίσκεται στη βρετανική πλευρά της Μάγχης:',
      'answers': [
        {'text': 'Τόρκι', 'score': 0},
        {'text': 'Χερβούργο', 'score': 10},
        {'text': 'Μπόνορ Ρέτζις', 'score': 0},
        {'text': 'Ντόβερ', 'score': 0},
      ],
    },

//4.173
    {
      'questionText': 'Κράτος το οποίο εντάχθηκε στην Ευρωπαϊκή Ένωση το 1973:',
      'answers': [
        {'text': 'Λουξεμβούργο', 'score': 0},
        {'text': 'Τσεχία', 'score': 0},
        {'text': 'Ιρλανδία', 'score': 10},
        {'text': 'Βέλγιο', 'score': 0},
      ],
    },

//4.174
    {
      'questionText':
          'Το The Spire, μια χαλύβδινη «βελόνα» ύψους 120 μ., αποτελεί σύμβολο της πιο κάτω πρωτεύουσας κράτους μέλους:',
      'answers': [
        {'text': 'Ρίγας', 'score': 0},
        {'text': 'Πράγας', 'score': 0},
        {'text': 'Βίλνιους', 'score': 0},
        {'text': 'Δουβλίνου', 'score': 10},
      ],
    },

//4.175
    {
      'questionText':
          'Κράτος μέλος το οποίο καταλαμβάνει το μεγαλύτερο μέρος της Ιβηρικής χερσονήσου:',
      'answers': [
        {'text': 'Πορτογαλία', 'score': 0},
        {'text': 'Ισπανία', 'score': 10},
        {'text': 'Ιταλία', 'score': 0},
        {'text': 'Γαλλία', 'score': 0},
      ],
    },

//4.176
    {
      'questionText': 'Αρχηγός του ισπανικού κράτους είναι ο:',
      'answers': [
        {'text': 'Βασιλιάς', 'score': 10},
        {'text': 'Πρωθυπουργός', 'score': 0},
        {'text': 'Πρόεδρος της Δημοκρατίας', 'score': 0},
        {'text': 'Καγκελάριος', 'score': 0},
      ],
    },

//4.177
    {
      'questionText':
          'Το ημιτελές έργο του Γκαουντί, η εκκλησία Σαγράδα Φαμίλια, βρίσκεται στη(ν):',
      'answers': [
        {'text': 'Μαδρίτη', 'score': 0},
        {'text': 'Ανδαλουσία', 'score': 0},
        {'text': 'Βαρκελώνη', 'score': 10},
        {'text': 'Βαλένθια', 'score': 0},
      ],
    },

//4.178
    {
      'questionText': 'Το σχήμα αυτής της χώρας της ΕΕ μοιάζει με μπότα:',
      'answers': [
        {'text': 'Σουηδία', 'score': 0},
        {'text': 'Πορτογαλία', 'score': 0},
        {'text': 'Ελλάδα', 'score': 0},
        {'text': 'Ιταλία', 'score': 10},
      ],
    },

//4.179
    {
      'questionText':
          'Από πόσους ορόφους (μαζί με το καμπαναριό) αποτελείται ο κεκλιμένος πύργος της Πίζας, στη βορειοδυτική Ιταλία;',
      'answers': [
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 10},
        {'text': '12', 'score': 0},
        {'text': '17', 'score': 0},
      ],
    },

//4.180
    {
      'questionText': 'Πρόεδρος της Ιταλίας από το 2015 είναι ο:',
      'answers': [
        {'text': 'Μάριο Μόντι (Mario Monti)', 'score': 0},
        {'text': 'Ρομάνο Πρόντι (Romano Prodi)', 'score': 0},
        {'text': 'Τζόρτζιο Ναπολιτάνο (Giorgio Napolitano)', 'score': 0},
        {'text': 'Σέρτζιο Ματαρέλα (Sergio Mattarella)', 'score': 10},
      ],
    },

//4.181
    {
      'questionText':
          'Νοτιοανατολικό άκρο της Ευρωπαϊκής Ένωσης αλλά και της Ευρώπης ολόκληρης:',
      'answers': [
        {'text': 'Ρουμανία', 'score': 0},
        {'text': 'Ελλάδα', 'score': 0},
        {'text': 'Κύπρος', 'score': 10},
        {'text': 'Βουλγαρία', 'score': 0},
      ],
    },

//4.182
    {
      'questionText':
          'Στα κυπριακά κέρματα ευρώ των 1, 2 και 5 λεπτών απεικονίζεται:',
      'answers': [
        {'text': 'Το αρχαίο καράβι της Κερύνειας', 'score': 0},
        {'text': 'Η Πέτρα του Ρωμιού', 'score': 0},
        {'text': 'Το σταυρόσχημο ειδώλιο του Πωμού', 'score': 0},
        {'text': 'Το αγρινό', 'score': 10},
      ],
    },

//4.183
    {
      'questionText': 'Το πολίτευμα της Κύπρου είναι:',
      'answers': [
        {'text': 'Βασιλευόμενη κοινοβουλευτική δημοκρατία', 'score': 0},
        {'text': 'Απόλυτη μοναρχία', 'score': 0},
        {'text': 'Προεδρική δημοκρατία', 'score': 10},
        {'text': 'Προεδρευόμενη κοινοβουλευτική δημοκρατία', 'score': 0},
      ],
    },

//4.184
    {
      'questionText':
          'Ποιας κουζίνας, κράτους της ΕΕ, χαρακτηριστική σπεσιαλιτέ είναι τα πιροσκί με μπέικον; ',
      'answers': [
        {'text': 'Ιταλικής', 'score': 0},
        {'text': 'Λετονικής', 'score': 10},
        {'text': 'Φινλανδικής', 'score': 0},
        {'text': 'Εσθονικής', 'score': 0},
      ],
    },

//4.185
    {
      'questionText':
          'Άγαλμα της Ελευθερίας, ύψους 43 μέτρων, βρίσκεται στην πρωτεύουσα της πιο κάτω χώρας της Ευρωπαϊκής Ένωσης:',
      'answers': [
        {'text': 'Σουηδίας', 'score': 0},
        {'text': 'Γερμανίας', 'score': 0},
        {'text': 'Γαλλίας', 'score': 0},
        {'text': 'Λετονίας', 'score': 10},
      ],
    },

//4.186
    {
      'questionText':
          'Το λετονικό κοινοβούλιο (Saeima), είναι ένα νομοθετικό σώμα:',
      'answers': [
        {'text': '84 εδρών', 'score': 0},
        {'text': '100 εδρών', 'score': 10},
        {'text': '165 εδρών', 'score': 0},
        {'text': '300 εδρών', 'score': 0},
      ],
    },

//4.187
    {
      'questionText':
          'Ποιο είναι το μεγαλύτερο και πολυπληθέστερο βαλτικό κράτος της ΕΕ;',
      'answers': [
        {'text': 'Εσθονία', 'score': 0},
        {'text': 'Λετονία', 'score': 0},
        {'text': 'Λιθουανία', 'score': 10},
        {'text': 'Σουηδία', 'score': 0},
      ],
    },

//4.188
    {
      'questionText':
          'Πότε απέκτησε την ανεξαρτησία της η Λιθουανία από τη Σοβιετική Ένωση;',
      'answers': [
        {'text': '1959', 'score': 0},
        {'text': '1964', 'score': 0},
        {'text': '1978', 'score': 0},
        {'text': '1990', 'score': 10},
      ],
    },

//4.189
    {
      'questionText': 'Οι λίμνες της Λιθουανίας είναι περισσότερες από:',
      'answers': [
        {'text': '8000', 'score': 0},
        {'text': '11000', 'score': 0},
        {'text': '2800', 'score': 10},
        {'text': '7000', 'score': 0},
      ],
    },

//4.190
    {
      'questionText':
          'Ιδρυτικό κράτος μέλος της ΕΕ και του OΗΕ, με μόλις μισό εκατομμύριο πληθυσμό:',
      'answers': [
        {'text': 'Μάλτα', 'score': 0},
        {'text': 'Λουξεμβούργο', 'score': 10},
        {'text': 'Δανία', 'score': 0},
        {'text': 'Κύπρος', 'score': 0},
      ],
    },

//4.191
    {
      'questionText': 'Το Λουξεμβούργο είναι ένα μεγάλο:',
      'answers': [
        {'text': 'Δουκάτο', 'score': 10},
        {'text': 'Πριγκιπάτο', 'score': 0},
        {'text': 'Εμιράτο', 'score': 0},
        {'text': 'Καντόνιο', 'score': 0},
      ],
    },

//4.192
    {
      'questionText':
          'Ο Σαβιέ Μπετέλ είναι πρωθυπουργός του Λουξεμβούργου από το:',
      'answers': [
        {'text': '1984', 'score': 0},
        {'text': '1995', 'score': 0},
        {'text': '2008', 'score': 0},
        {'text': '2013', 'score': 10},
      ],
    },

//4.193
    {
      'questionText':
          'Κράτος μέλος του οποίου η εθνική γλώσσα ανήκει στην ίδια οικογένεια σημιτικών γλωσσών με τα αραβικά:',
      'answers': [
        {'text': 'Ισπανία', 'score': 0},
        {'text': 'Κύπρος', 'score': 0},
        {'text': 'Μάλτα', 'score': 10},
        {'text': 'Βουλγαρία', 'score': 0},
      ],
    },

//4.194
    {
      'questionText': 'Ποιο νησί του αρχιπελάγους της Μάλτας δεν κατοικείται;',
      'answers': [
        {'text': 'Μάλτα', 'score': 0},
        {'text': 'Γκόζο', 'score': 0},
        {'text': 'Κομίνο', 'score': 0},
        {'text': 'Φίλφλα', 'score': 10},
      ],
    },

//4.195
    {
      'questionText': 'Χώρα της ΕΕ που αποκαλείται και «χώρα της τουλίπας»:',
      'answers': [
        {'text': 'Σλοβακία', 'score': 0},
        {'text': 'Ολλανδία', 'score': 10},
        {'text': 'Τσεχία', 'score': 0},
        {'text': 'Αυστρία', 'score': 0},
      ],
    },

//4.196
    {
      'questionText':
          'Η επαρχία Φλέβολαντ της Ολλανδίας ονομάζεται Πόλντερ, καθότι προηγουμένως υπήρξε:',
      'answers': [
        {'text': 'Λίμνη', 'score': 0},
        {'text': 'Βάλτος', 'score': 0},
        {'text': 'Οροπέδιο', 'score': 0},
        {'text': 'Θάλασσα', 'score': 10},
      ],
    },

//4.197
    {
      'questionText':
          'Με τη σημαία ποιου άλλου κράτους της ΕΕ μοιάζει περισσότερο η σημαία της Ολλανδίας;',
      'answers': [
        {'text': 'Γαλλίας', 'score': 0},
        {'text': 'Τσεχίας', 'score': 0},
        {'text': 'Λουξεμβούργου', 'score': 10},
        {'text': 'Σλοβενίας', 'score': 0},
      ],
    },

//4.198
    {
      'questionText':
          'Οι άλλοτε δύο ξεχωριστές πόλεις Βούδα και Πέστη αποτελούν τώρα πρωτεύουσα αυτής της χώρας της Ευρωπαϊκής Ένωσης:',
      'answers': [
        {'text': 'Ρουμανίας', 'score': 0},
        {'text': 'Αυστρίας', 'score': 0},
        {'text': 'Γερμανίας', 'score': 0},
        {'text': 'Ουγγαρίας', 'score': 10},
      ],
    },

//4.199
    {
      'questionText':
          'Με ποιο άλλο μεγάλο κράτος της ΕΕ συναποτέλεσε μέχρι το 1918 η Ουγγαρία μέρος μιας μεγάλης αυτοκρατορίας της κεντρικής Ευρώπης;',
      'answers': [
        {'text': 'Αυστρία', 'score': 10},
        {'text': 'Πολωνία', 'score': 0},
        {'text': 'Γαλλία', 'score': 0},
        {'text': 'Βουλγαρία', 'score': 0},
      ],
    },

//4.200
    {
      'questionText':
          'Το αλατωρυχείο της Βιελίτσκα, μνημείο Παγκόσμιας κληρονομιάς της ουνέσκο, μια ολόκληρη πόλη κάτω από το έδαφος, βρίσκεται σε αυτό το κράτος μέλος:',
      'answers': [
        {'text': 'Ολλανδία', 'score': 0},
        {'text': 'Σουηδία', 'score': 0},
        {'text': 'Ρουμανία', 'score': 0},
        {'text': 'Πολωνία', 'score': 10},
      ],
    },

//4.201
    {
      'questionText': 'Επιφανής προσωπικότητα, όχι όμως πολωνικής καταγωγής:',
      'answers': [
        {'text': 'Βάγκνερ (Wagner)', 'score': 10},
        {'text': 'Κοπέρνικος (Copernicus)', 'score': 0},
        {'text': 'Σοπέν (Chopin)', 'score': 0},
        {'text': 'Μαρί Κιουρί (Marie Curie)', 'score': 0},
      ],
    },

//4.202
    {
      'questionText':
          'Ο διεθνής ποδοσφαιριστής Κριστιάνο Ρονάλντο κατάγεται από αυτό το κράτος μέλος της ΕΕ:',
      'answers': [
        {'text': 'Ιταλία', 'score': 0},
        {'text': 'Πορτογαλία', 'score': 10},
        {'text': 'Κύπρο', 'score': 0},
        {'text': 'Φινλανδία', 'score': 0},
      ],
    },

//4.203
    {
      'questionText':
          'Στην Ιβηρική χερσόνησο, μαζί με την Πορτογαλία, βρίσκεται ακόμη μία χώρα της ΕΕ, η:',
      'answers': [
        {'text': 'Γερμανία', 'score': 0},
        {'text': 'Γαλλία', 'score': 0},
        {'text': 'Ισπανία', 'score': 10},
        {'text': 'Δανία', 'score': 0},
      ],
    },

//4.204
    {
      'questionText':
          'Ο θρύλος του Δράκουλα ανάγεται στον κόμη Βλαντ Ντρακούλ, που έζησε το 15ο αιώνα, στη σημερινή (χώρα της ΕΕ):',
      'answers': [
        {'text': 'Αυστρία', 'score': 0},
        {'text': 'Ουγγαρία', 'score': 0},
        {'text': 'Βουλγαρία', 'score': 0},
        {'text': 'Ρουμανία', 'score': 10},
      ],
    },

//4.205
    {
      'questionText':
          'Κορυφαία αθλήτρια της ενόργανης γυμναστικής από τη Ρουμανία, η πρώτη που βραβεύτηκε με το τέλειο 10:',
      'answers': [
        {'text': 'Καρολίν Βοζνιάκι (Caroline Wozniacki)', 'score': 0},
        {'text': 'Νάντια Κομανέτσι (Nadia Comaneci)', 'score': 10},
        {'text': 'Σερένα Γουίλιαμς (Serena Williams)', 'score': 0},
        {'text': 'Άνα Ιβάνοβιτς (Ana Ivanovic)', 'score': 0},
      ],
    },

//4.206
    {
      'questionText':
          'Χώρα μέλος της ΕΕ που προέκυψε το 1993 όταν χωρίστηκε στα δύο ένα άλλο κράτος:',
      'answers': [
        {'text': 'Σλοβενία', 'score': 0},
        {'text': 'Γερμανία', 'score': 0},
        {'text': 'Σλοβακία', 'score': 10},
        {'text': 'Λιθουανία', 'score': 0},
      ],
    },

//4.207
    {
      'questionText':
          'Ο Σλοβακικής καταγωγής Στέφαν Μπάνιτς, εφηύρε, το 1913, το σύγχρονο:',
      'answers': [
        {'text': 'Αλεξίπτωτο', 'score': 10},
        {'text': 'Αερόστατο', 'score': 0},
        {'text': 'Ανεμόπτερο', 'score': 0},
        {'text': 'Αλεξικέραυνο', 'score': 0},
      ],
    },

//4.208
    {
      'questionText':
          'Η πρώτη χώρα, κομμάτι της πρώην Γιουγκοσλαβίας, η οποία το 2004 έγινε κράτος μέλος της Ευρωπαϊκής Ένωσης:',
      'answers': [
        {'text': 'Σερβία', 'score': 0},
        {'text': 'Κροατία', 'score': 0},
        {'text': 'Βουλγαρία', 'score': 0},
        {'text': 'Σλοβενία', 'score': 10},
      ],
    },

//4.209
    {
      'questionText':
          'Ο φανταστικός χαρακτήρας Μαρτίν κρπαν, λαϊκός ήρωας της Σλοβενίας, σύμφωνα με τον μύθο, έκανε αρχικά λαθρεμπόριο:',
      'answers': [
        {'text': 'Μπαχαρικών', 'score': 0},
        {'text': 'Μεταξιού', 'score': 0},
        {'text': 'Αλατιού', 'score': 10},
        {'text': 'Διαμαντιών', 'score': 0},
      ],
    },

//4.210
    {
      'questionText':
          'Χώρα της Ευρωπαϊκής Ένωσης με τον μεγαλύτερο πληθυσμό από όλες τις σκανδιναβικές χώρες:',
      'answers': [
        {'text': 'Φινλανδία', 'score': 0},
        {'text': 'Σουηδία', 'score': 10},
        {'text': 'Δανία', 'score': 0},
        {'text': 'Γερμανία', 'score': 0},
      ],
    },

//4.211
    {
      'questionText':
          'Η Στοκχόλμη, πρωτεύουσα της Σουηδίας, είναι γνωστή για τα βραβεία:',
      'answers': [
        {'text': 'Όσκαρ', 'score': 0},
        {'text': 'Έμμυ', 'score': 0},
        {'text': 'Πούλιτζερ', 'score': 0},
        {'text': 'Νόμπελ', 'score': 10},
      ],
    },

//4.212
    {
      'questionText':
          'Κράτος μέλος της ΕΕ που παράγει μεγάλες ποσότητες μεταλλικού νερού από 900 φυσικές πηγές (παγκόσμιο ρεκόρ):',
      'answers': [
        {'text': 'Τσεχία', 'score': 10},
        {'text': 'Κύπρος', 'score': 0},
        {'text': 'Ελλάδα', 'score': 0},
        {'text': 'Ολλανδία', 'score': 0},
      ],
    },

//4.213
    {
      'questionText':
          'Τα νερά των ποταμών της Τσεχίας δεν χύνονται σε αυτή τη θάλασσα:',
      'answers': [
        {'text': 'Βόρεια Θάλασσα', 'score': 0},
        {'text': 'Βαλτική Θάλασσα', 'score': 0},
        {'text': 'Μεσόγειο Θάλασσα', 'score': 10},
        {'text': 'Μαύρη Θάλασσα', 'score': 0},
      ],
    },

//4.214
    {
      'questionText':
          'Τον χειμώνα, σε αυτή τη χώρα της Ευρωπαϊκής Ένωσης, για 8 περίπου εβδομάδες ο ήλιος δεν ανατέλλει:',
      'answers': [
        {'text': 'Δανία', 'score': 0},
        {'text': 'Εσθονία', 'score': 0},
        {'text': 'Πορτογαλία', 'score': 0},
        {'text': 'Φινλανδία', 'score': 10},
      ],
    },

//4.215
    {
      'questionText': 'Διάσημος Φινλανδός πιλότος της Φόρμουλα 1:',
      'answers': [
        {'text': 'Ζακ Βιλνέβ (Jacques Villeneuve)', 'score': 0},
        {'text': 'Κίμι Ραϊκόνεν (Kimi Räikkönen)', 'score': 10},
        {'text': 'Άιρτον Σένα (Ayrton Senna)', 'score': 0},
        {'text': 'Λιούις Χάμιλτον (Lewis Hamilton)', 'score': 0},
      ],
    },

//4.216
    {
      'questionText':
          'Ο όρος καγκελάριος, ως πολιτικό αξίωμα αντίστοιχο του πρωθυπουργού, ισχύει σε αυτό το κράτος μέλος της Ευρωπαϊκής Ένωσης:',
      'answers': [
        {'text': 'Ηνωμένο Βασίλειο', 'score': 0},
        {'text': 'Γαλλία', 'score': 0},
        {'text': 'Αυστρία', 'score': 10},
        {'text': 'Ιταλία', 'score': 0},
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
                                    builder: (context) => cat4questionpage()),
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
