% Andrew Rodrigue
% CSC 2262
% Sample 5

[ID, Exam1, Exam2, Final, Lab, currQP, currHours] = textread('Lab5.dat');

grade = Exam1 * 0.25 + Exam2 * .25 + Final * .35 + Lab * .15;

QP = 3 * ceil((grade - 59) / 10);
totalQP = QP + currQP;
totalHours = currHours + 3;
GPA = totalQP ./ totalHours;

ID
grade
GPA

avgGrade = sum(grade) / length(grade);
stdGrade = sqrt((length(grade) * sum(grade .^ 2) - sum(grade) ^ 2) / (length(grade) * (length(grade) - 1)));

avgGPA = sum(GPA) / length(GPA);
stdGPA = sqrt((length(GPA) * sum(GPA .^ 2) - sum(GPA) .^ 2) / (length(GPA) * (length(GPA) - 1)));

fprintf("Semester Grade: Average = %.2f\tStandard Deviation = %.2f\n", avgGrade, stdGrade);
fprintf("GPA: Average = %.3f\tStandard Deviation = %.3f\n", avgGPA, stdGPA);