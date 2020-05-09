%Goal: show deaths of coronavirus by race in selected states
%Abigail Brazil

filename='deathbyrace.csv';
T=readtable(filename);


X = categorical({'California','Alabama','Colorado'});
X = reordercats(X,{'California','Alabama','Colorado'});
Yalab=findval(4,T);
Ycalif=findval(10,T);
Ycolo=findval(13,T);

figure
NewY=[Ycalif(1) Ycalif(2) Ycalif(3) Ycalif(4) Ycalif(5) Ycalif(6); Yalab(1) Yalab(2) Yalab(3) Yalab(4) Yalab(5) Yalab(6); Ycolo(1) Ycolo(2) Ycolo(3) Ycolo(4) Ycolo(5) Ycolo(6)];
bar(X,NewY,'stacked')
leg=legend('White','Black/African American','American Indian/Alaska Native','Asian', 'Hispanic/Latino', 'Other','Location','NorthEastOutside');
title(leg, 'Race')
xlabel('State')
ylabel('Distribution of COVID-19 Deaths (%)')
title('Coronavirus Deaths by Race in Selection of States')

function NewY=findval(x,T)
    input = T(x,4:9);
output=table2array(input);
NewY=[output(1) output(2) output(3) output(4) output(5) output(6)];
end
    