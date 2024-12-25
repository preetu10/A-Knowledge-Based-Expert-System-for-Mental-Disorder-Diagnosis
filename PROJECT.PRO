domains  
    disease,indication =symbol 
    Patient,name = string 
 
predicates 
    hypothesis(string,disease) 
    symptom(name,indication) 
    response(char) 
    go 
 
clauses 
    go :- 
        write("What is the name of patient?"), 
        readln(Patient), 
        hypothesis(Patient,Disease), 
        write(Patient," probably has ",Disease,"."),nl. 
     
    go :- 
        write("The disorder could not be determined"),nl. 
     
    symptom(Patient,persistent_sadness) :- 
        write("Does ",Patient," have persistent sadness (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,loss_of_interest) :- 
        write("Does ",Patient," feel loss of interest (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,fatigue) :- 
        write("Does ",Patient," feel fatigue (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,excessive_worry) :- 
        write("Does ",Patient," have excessive_worry (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,restlessness) :- 
        write("Does ",Patient," feel restlessness (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,difficulty_concentrating) :- 
        write("Does ",Patient," face difficulty concentrating (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
     
    symptom(Patient,mood_swings) :- 
        write("Does ",Patient," have mood swing (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,periods_of_mania) :- 
        write("Does ",Patient," have periods of mania (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,periods_of_depression) :- 
        write("Does ",Patient," have periods of depression (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,hallucinations) :- 
        write("Does ",Patient," have hallucination (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,delusions) :- 
        write("Does ",Patient," have delusions (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,disorganized_thinking) :- 
        write("Does ",Patient," have disorganized thinking (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,repetitive_behaviors) :- 
        write("Does ",Patient," have repetitive behaviors (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,obsessive_thoughts) :- 
        write("Does ",Patient," have obsessive thoughts (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,compulsions) :- 
        write("Does ",Patient," have compulsions (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,flashbacks) :- 
        write("Does ",Patient," have flashbacks (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,nightmares) :- 
        write("Does ",Patient," have nightmares (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    symptom(Patient,severe_anxiety) :- 
        write("Does ",Patient," have severe anxiety (y/n) ?"), 
        response(Reply), 
        Reply = 'y'. 
 
    hypothesis(Patient,depression):- 
        symptom(Patient,persistent_sadness), 
        symptom(Patient,loss_of_interest), 
        symptom(Patient,fatigue). 
 
     hypothesis(Patient,anxiety):- 
        symptom(Patient,excessive_worry), 
        symptom(Patient,restlessness), 
        symptom(Patient,difficulty_concentrating). 
     
     hypothesis(Patient,bipolar_disorder):- 
        symptom(Patient,mood_swings), 
        symptom(Patient,periods_of_mania), 
        symptom(Patient,periods_of_depression). 
 
     hypothesis(Patient,schizophrenia):- 
        symptom(Patient,hallucinations), 
        symptom(Patient,delusions), 
        symptom(Patient,disorganized_thinking). 
 
     hypothesis(Patient,obsessive_compulsive_disorder):- 
        symptom(Patient,repetitive_behaviors), 
        symptom(Patient,obsessive_thoughts), 
        symptom(Patient,compulsions). 
     
     hypothesis(Patient,post_traumatic__stress_disorder):- 
        symptom(Patient,flashbacks), 
        symptom(Patient,nightmares), 
        symptom(Patient,severe_anxiety). 
 
    response(Reply) :- 
        readchar(Reply), 
        write(Reply),nl.