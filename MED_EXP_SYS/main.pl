/*Mini expert system by co18309 anmol chandel*/
go:-
hypothesis(Disease),
write('I believe that the patient have '),
write( Disease ),
nl,
write('TAKE CARE '),
undo.

/*Hypothesis that should be tested*/
hypothesis(cold) :- cold, !.
hypothesis(flu) :- flu, !.
hypothesis(typhoid) :- typhoid, !.
hypothesis(measles) :- measles, !.
hypothesis(malaria) :- malaria, !.
hypothesis(chronic-cough) :- chronic-cough, !.
hypothesis( unknown_disease_Please..consult to the doctor immediately). /* no diagnosis*/

/*Hypothesis Identification Rules*/

cold :-
verify(headache),
verify(runny_nose),
verify(sneezing),
verify(sore_throat),
write('Advices and Sugestions:'),
nl,
write('1: Tylenol/tab'),
nl,
write('2: panadol/tab'),
nl,
write('3: Nasal spray'),
nl,
write('Please weare warm cloths Because'),
nl.

flu :-
verify(fever),
verify(headache),
verify(chills),
verify(body_ache),
write('TAKE THE ADVICES AND SUGGESTIONS:'),
nl,
write('1: Tamiflu/tab'),
nl,
write('2: panadol/tab'),
nl,
write('3: Zanamivir/tab'),
nl,
write('Keep these treatments in mind if you have the flu:

1. Pain relievers. Analgesics like acetaminophen and ibuprofen are often recommended to help ease symptoms. These include muscle aches and pains, headache, and fever.
2. Decongestants. This type of medication can help relieve nasal congestion and pressure in your sinuses and ears. Each type of decongestant can cause some side effects, so be sure to read labels to find the one that’s best for you.
3. Expectorants. This type of medication helps loosen thick sinus secretions that make your head feel clogged and cause coughing.
4. Cough suppressants. Coughing is a common flu symptom, and some medications can help relieve it. If you don’t want to take medication, some cough drops use honey and lemon to ease a sore throat and cough.
Warning: Children and teens should never take asprins'),
nl.



typhoid :-
verify(headache),
verify(abdominal_pain),
verify(poor_appetite),
verify(fever),
write('Advices and Sugestions:'),
nl,
write('1: Chloramphenicol/tab'),
nl,
write('2: Amoxicillin/tab'),
nl,
write('3: Ciprofloxacin/tab'),
nl,
write('4: Azithromycin/tab'),
nl,
write('Please do complete bed rest and take soft Diet Because'),
nl.

measles :-
verify(fever),
verify(runny_nose),
verify(rash),
verify(conjunctivitis),
write('Advices and Sugestions:'),
nl,
write('1: Tylenol/tab'),
nl,
write('2: Aleve/tab'),
nl,
write('3: Advil/tab'),
nl,
write('4: Vitamin A'),
nl,
write('Please Get rest and use more liquid Because'),
nl.


chronic-cough :-
verify(fever),
verify( running_nose),
verify(chest_pain),
verify(shortness_of_breathe),
verify(vomiting),
verify(wheezing),
write('TAKE THE ADVICES AND SUGGESTIONS:'),
nl,
write('1: Aralen/tab'),
nl,
write('2: Qualaquin/tab'),
nl,
write('3: Plaquenil/tab'),
nl,
write('4: Mefloquine'),
nl,
write('SUGGESTIONS:
1. Drink lots of water or juice. The extra fluid will loosen and thin mucus. 
2. Warm liquids like tea and broth can be especially soothing to your throat.
4. If you have acid reflux, avoid overeating and eating within two to three hours before bed. Losing weight can help as well.
5. Turn on a cool mist humidifier to add moisture to the air, or take a hot shower and breathe in the steam.
6. Use a saline nose spray or nasal irrigation (neti pot). The salt water will loosen up and help drain the mucus that’s making you cough.
7. If you smoke, ask your doctor for advice on how to quit. And stay away from anyone else who smokes.'),
nl.

malaria :-
verify(fever),
verify(sweating),
verify(headache),
verify(nausea),
verify(vomiting),
verify(diarrhea),
write('Advices and Sugestions:'),
nl,
write('1: Aralen/tab'),
nl,
write('2: Qualaquin/tab'),
nl,
write('3: Plaquenil/tab'),
nl,
write('4: Mefloquine'),
nl,
write('Please do not sleep in open air and cover your full skin Because'),
nl.

/* how to ask questions */
ask(Question) :-
write('Does the patient have following symptom:'),
write(Question),
write('? '),
read(Response),
nl,
( (Response == yes ; Response == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).

:- dynamic yes/1,no/1.
/*How to verify something */
verify(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
ask(S))).
/* undo all yes/no assertions*/
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
