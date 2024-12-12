/* Set SAS system options */
options nonotes nostimer nosource nosyntaxcheck;

/* Import CSV data into a SAS dataset */
proc import out=prostate_data
    datafile="/home/u62189146/Biostatistics2/Blood Storage.csv"
    dbms=csv
    replace;
    getnames=YES;
run;

/* Review the dataset contents */
proc contents data=prostate_data;
run;

/* Recode censoring indicator */
data prostate_data;
    set prostate_data;
    Censor_SAS = (Censor = 0); /* Assuming 'Censor' indicates if the observation is censored */
run;

/* Cox Proportional Hazards Model */
proc phreg data=prostate_data;
    class "RBC Age Group"n(ref='1'); /* Handle spaces and special characters in variable names */
    model TimeToRecurrence* Censor_SAS(0) = "RBC Age Group"n Age PreopPSA bGS;
    hazardratio "RBC Age Group"n / diff=all; /* Calculate hazard ratios */
run;

/* Define custom labels for RBC Age Groups for visual representation */
proc format;
   value RBCAgeFmt
   1 = 'Younger (≤13 days)'
   2 = 'Middle (14-18 days)'
   3 = 'Older (≥19 days)';
run;

/* Kaplan-Meier Survival Curves with custom labels */
proc lifetest data=prostate_data plots=survival(cb=hw test);
   format "RBC Age Group"n RBCAgeFmt.; /* Apply custom format */
   time TimeToRecurrence*Censor_SAS(0);
   strata "RBC Age Group"n;
run;

/* Capture parameter estimates for further analysis */
ods output ParameterEstimates=pe_data;
proc phreg data=prostate_data;
    class "RBC Age Group"n(ref='1');
    model TimeToRecurrence* Censor_SAS(0) = "RBC Age Group"n Age PreopPSA bGS;
    hazardratio "RBC Age Group"n / diff=all;
run;
ods output close;

/* Checking contents of PE_DATA to confirm variable names */
proc contents data=pe_data;
run;

/* Extract Hazard Ratios for RBC Age Group */
data HR_data;
    set pe_data;
    /* Assuming 'Parameter' contains the categorical variable information like 'RBC Age Group' */
    if upcase(Parameter) = "RBC AGE GROUP"; /* Adjust 'Parameter' to the correct condition if needed */
    length Group $50;
    Group = "RBC Age Group " || trim(left(put(Estimate, 8.)));
    hazardratio = exp(Estimate);
    lcl = exp(Estimate - 1.96*StdErr);
    ucl = exp(Estimate + 1.96*StdErr);
    keep Group hazardratio lcl ucl;
run;

/* Checking contents of HR_DATA to confirm variable names */
proc contents data=HR_data;
run;

/* Set SAS system options */
options nonotes nostimer nosource nosyntaxcheck;

/* Check to ensure options are set if needed for debugging */
proc options data=HR_data;
run;

/* Set SAS system options */
options nonotes nostimer nosource nosyntaxcheck;

/* Generate the forest plot for hazard ratios */
proc sgplot data=WORK.HR_DATA;
    forest x=HazardRatio lower=lcl upper=ucl / group=Group;
    xaxis grid;
    yaxis display=(nolabel) discreteorder=data;
    refline 1 / axis=x lineattrs=(pattern=solid color=black);
run;

