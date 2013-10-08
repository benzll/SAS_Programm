%macro sys_LogInit;
data _null_;
file "&ROOT/REPORT/output.LOG";
put "NOTE: LOG IS BEGIN:";
run;
%mend;
%sys_LogInit;

%macro sys_Log(info=);
data _null_;
file "&ROOT/REPORT/output.LOG" MOD;
put "&info";
run;
%mend;