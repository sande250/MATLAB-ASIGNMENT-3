clc; clear;

ourclass=readtable('C:\Users\user\Desktop\GROUP ONE\water class.xlsx');

Name = ourclass.NAME;
Address = ourclass.ADRESS;
Hostel = ourclass.HOSTEL;
Friends = ourclass.FRIENDS;
Tribe = ourclass.TRIBE;
Association = ourclass.ASSOCIATION;
Age = ourclass.AGE;
Gender = ourclass.GENDER;

disp(ourclass);

writetable(ourclass,'GROUPONE1C.XLSX');

bar(ourclass.AGE);
xlabel('Student');
ylabel('AGE');
title('Age of the five students');
grid on;
saveas(gcf, 'Student_age_plot.png');

%  Course Unit Matrix
Course_Units = {'Engineering Mathematics III','Mechanics of materials','Computer programing','Engineering Geology','Soil Mechanics','Hydrology 1'};

%Calculating the number of CourseUnits
CUs_Number = length(Course_Units);

%Matrix for Marks
Marks = zeros(1, CUs_Number);

%Entering The Marks into The Matrix
for index = 1:CUs_Number
    %combine input string using brackets for concatenation
  Marks(index) = input(['Enter your mark for', Course_Units{index}, ':']);
 end
 

  % DisplayThe Marks
  disp('Your marks:');
  disp(Mark);

  %Grading System intialisation
  Grade = zeros(1, CUs_Number);
  GradingRange=[80, 75, 70, 65, 60, 55, 50];
  GradingSystem=[5,4.5,4,3.5,3,2.5,2,0;];

% Fixed the loop to apply correctGPAs
for index = 1:CUs_Number
      current_mark = Marks(index);
      Grade(index) = GradingSystem(end);

      for g = 1:length(GradingRange)
          if current_mark >=GradingRange(g)
              Grade(index) = GradingSystem(g);
              break;
          end
      end
 end

  %Display results
  disp('Your Grades:');
  disp(Grade);

  %update the marks array
  % Credit_Units
  Credit_Units= [4, 4, 4, 4, 4, 4];

  % calculate total CUs
  Total_CUs = sum(Credit_Units,'all','double');

  CGPA = sum(Grade .* Credit_Units')/Total_CUs;

  disp('Your CGPA is:')
  disp(CGPA)
