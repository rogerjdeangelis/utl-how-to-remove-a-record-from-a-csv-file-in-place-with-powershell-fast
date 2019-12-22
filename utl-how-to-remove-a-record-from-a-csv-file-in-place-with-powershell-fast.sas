How-to-remove-a-record-from-a-csv-file-in-place-with-powershell-fast;

Delete the 3rd record in a csv file without importing.
Should be very fast;

git hub
https://tinyurl.com/vyf9kmk
https://github.com/rogerjdeangelis/utl-how-to-remove-a-record-from-a-csv-file-in-place-with-powershell-fast

F6a4 profile
https://stackoverflow.com/users/4037258/f6a4

Command pipe macro on end and in

macros
https://tinyurl.com/y9nfugth
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories

*
__      ___ __  ___
\ \ /\ / / '_ \/ __|
 \ V  V /| |_) \__ \
  \_/\_/ | .__/|___/
         |_|
;

SOAPBOX ON

I wanted to download the WPS Express edition, because it supports the command line interface,
but was unable to find it? Express supports batch processing outside of interactive WPS.

EA COmmunity edition

Comamnd line batch is not possible with the community edition.
For instance executing WPS from Powershell, DOS, SAS, PERL, Bash shell, C-Chell ..

Also Since WPS does not support the classic SAS editor, the DM commands do not work!!!

438       dm 'dexport sashelp.classfit "d:/csv/classfit.csv"';
          ^
ERROR: Expected a statement keyword : found "dm"

Since Community WPS does not have a command line interface, I have not
been able to find autoexec and config file options that mimic
all the command line options. May not be possible?

After making a minor change to the powershell command macro, it worked interactivly.

I also have not been able to remove all the 'clutter' and 'stolen screen realestate'
from the WPS 'eclipse' interface. It's like programming in a postage stamp?
Reminds me of SAS EG.

Should be possible 'clean up' the IDE, since 'eclipse' supports templates, but whio have the time?

I contacted WPS and asked for the download page for WPS express.

At least WPS did not cal the removal of the command line interface an enhancement.
Th new WPS lownload page now lets you now what functionality has been removed from the
community page.

It is too difficult for me to compare SAS and WPS functionality without a CLI so I will concentrate
on problems where I suspect SAS and WPS differ.


SOAPBOX OFF;


*_                   _
(_)_ __  _ __  _   _| |_
| | '_ \| '_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
;

%let rec=3;

* create csv file;
dm 'dexport sashelp.classfit "d:/csv/classfit.csv"';


NAME,SEX,AGE,HEIGHT,WEIGHT,PREDICT,LOWERMEAN,UPPERMEAN,LOWER,UPPER
Joyce,F,11,51.3,50.5,56.993334349,43.804363464,70.182305235,29.883498439,84.103170259

Louise,F,12,56.3,77,76.488485693,67.960050237,85.016921149,51.314521735,101.66244965   ==> Remove this record (3rd record)

Alice,F,13,56.5,84,77.268291747,68.906553333,85.630030161,52.150311745,102.38627175
James,M,12,57.3,83,80.387515962,72.667088548,88.107943376,55.475686453,105.29934547
Thomas,M,11,57.5,85,81.167322016,73.600043341,88.73460069,56.3025285,106.03211553
John,M,12,59,99.5,87.015867419,80.4792515,93.552483338,62.445120631,111.58661421
Jane,F,12,59.8,84.5,90.135091634,84.039505624,96.230677643,65.677977764,114.5922055
Janet,F,15,62.5,112.5,100.66247336,95.225785487,106.09916123,76.361201272,124.96374545
Jeffrey,M,13,62.5,84,100.66247336,95.225785487,106.09916123,76.361201272,124.96374545
Carol,F,14,62.8,102.5,101.83218244,96.375045159,107.28931972,77.526327233,126.13803765
Henry,M,14,63.5,102.5,104.56150363,98.9820695,110.14093776,80.227898568,128.89510869
Judy,F,14,64.3,90,107.68072784,101.84160205,113.51985364,83.286268634,132.07518705
Robert,M,12,64.8,128,109.63024298,103.57059279,115.68989317,85.182060827,134.07842513
Barbara,F,13,65.3,98,111.57975811,105.26025322,117.89926301,87.06587649,136.09363973
Mary,F,15,66.5,112,116.25859443,109.18221905,123.33496982,91.538777715,140.97841115
William,M,15,66.5,112,116.25859443,109.18221905,123.33496982,91.538777715,140.97841115
Ronald,M,15,67,133,118.20810957,110.77121311,125.64500603,93.382685523,143.03353361
Alfred,M,14,69,112.5,126.00617011,116.94168423,135.07065599,100.64558742,151.36675279
Philip,M,16,72,150,137.70326091,125.8611556,149.54536623,111.2225187,164.18400313


*            _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| '_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
;

NOTE LOUISE RECXORD IS MISSING;

NAME,SEX,AGE,HEIGHT,WEIGHT,PREDICT,LOWERMEAN,UPPERMEAN,LOWER,UPPER
Joyce,F,11,51.3,50.5,56.993334349,43.804363464,70.182305235,29.883498439,84.103170259
Alice,F,13,56.5,84,77.268291747,68.906553333,85.630030161,52.150311745,102.38627175
James,M,12,57.3,83,80.387515962,72.667088548,88.107943376,55.475686453,105.29934547
Thomas,M,11,57.5,85,81.167322016,73.600043341,88.73460069,56.3025285,106.03211553
John,M,12,59,99.5,87.015867419,80.4792515,93.552483338,62.445120631,111.58661421
Jane,F,12,59.8,84.5,90.135091634,84.039505624,96.230677643,65.677977764,114.5922055
Janet,F,15,62.5,112.5,100.66247336,95.225785487,106.09916123,76.361201272,124.96374545
Jeffrey,M,13,62.5,84,100.66247336,95.225785487,106.09916123,76.361201272,124.96374545
Carol,F,14,62.8,102.5,101.83218244,96.375045159,107.28931972,77.526327233,126.13803765
Henry,M,14,63.5,102.5,104.56150363,98.9820695,110.14093776,80.227898568,128.89510869
Judy,F,14,64.3,90,107.68072784,101.84160205,113.51985364,83.286268634,132.07518705
Robert,M,12,64.8,128,109.63024298,103.57059279,115.68989317,85.182060827,134.07842513
Barbara,F,13,65.3,98,111.57975811,105.26025322,117.89926301,87.06587649,136.09363973
Mary,F,15,66.5,112,116.25859443,109.18221905,123.33496982,91.538777715,140.97841115
William,M,15,66.5,112,116.25859443,109.18221905,123.33496982,91.538777715,140.97841115
Ronald,M,15,67,133,118.20810957,110.77121311,125.64500603,93.382685523,143.03353361
Alfred,M,14,69,112.5,126.00617011,116.94168423,135.07065599,100.64558742,151.36675279
Philip,M,16,72,150,137.70326091,125.8611556,149.54536623,111.2225187,164.18400313

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;

%utl_submit_ps64("
[System.Collections.Generic.List[string]]$csvList = @();
$csvFile = 'd:/csv/classfit.csv';
$csvList = [System.IO.File]::ReadLines( $csvFile );
$lineToDelete = &rec;
[void]$csvList.RemoveAt( $lineToDelete - 1 );
[System.IO.File]::WriteAllLines( $csvFile, $csvList ) | Out-Null;
");

*                                              _         _
  ___ ___  _ __ ___  _ __ ___   __ _ _ __   __| |  _ __ (_)_ __   ___
 / __/ _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` | | '_ \| | '_ \ / _ \
| (_| (_) | | | | | | | | | | | (_| | | | | (_| | | |_) | | |_) |  __/
 \___\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_| | .__/|_| .__/ \___|
                                                  |_|     |_|
;

%macro utl_submit_ps64(
      pgm
     ,return=  /* name for the macro variable from Powershell */
     )/des="Semi colon separated set of python commands - drop down to python";

  * write the program to a temporary file;
  filename py_pgm "%sysfunc(pathname(work))/py_pgm.ps1" lrecl=32766 recfm=v;
  data _null_;
    length pgm  $32755 cmd $1024;
    file py_pgm ;
    pgm=&pgm;
    semi=countc(pgm,';');
      do idx=1 to semi;
        cmd=cats(scan(pgm,idx,';'));
        if cmd=:'. ' then
           cmd=trim(substr(cmd,2));
         put cmd $char384.;
         putlog cmd $char384.;
      end;
  run;quit;
  %let _loc=%sysfunc(pathname(py_pgm));
  %put &_loc;
  filename rut pipe  "powershell.exe -executionpolicy bypass -file &_loc";
  data _null_;
    file print;
    infile rut;
    input;
    put _infile_;
  run;
  filename rut clear;
  filename py_pgm clear;

  * use the clipboard to create macro variable;
  %if "&return" ^= "" %then %do;
    filename clp clipbrd ;
    data _null_;
     length txt $200;
     infile clp;
     input;
     putlog "*******  " _infile_;
     call symputx("&return",_infile_,"G");
    run;quit;
  %end;

%mend utl_submit_ps64;

%utl_submit_ps64("
[System.Collections.Generic.List[string]]$csvList = @();
$csvFile = 'd:/csv/classfit.csv';
$csvList = [System.IO.File]::ReadLines( $csvFile );
$lineToDelete = &rec;
[void]$csvList.RemoveAt( $lineToDelete - 1 );
[System.IO.File]::WriteAllLines( $csvFile, $csvList ) | Out-Null;
");

*
__      ___ __  ___
\ \ /\ / / '_ \/ __|
 \ V  V /| |_) \__ \
  \_/\_/ | .__/|___/
         |_|
;

%macro utl_submit_ps64(
      pgm
     ,return=  /* name for the macro variable from Powershell */
     )/des="Semi colon separated set of python commands - drop down to python";

  * write the program to a temporary file;
  filename py_pgm "d:/ps1/py_pgm.ps1" lrecl=32766 recfm=v;
  data _null_;
    length pgm  $32755 cmd $1024;
    file py_pgm ;
    pgm=&pgm;
    semi=countc(pgm,';');
      do idx=1 to semi;
        cmd=cats(scan(pgm,idx,';'));
        if cmd=:'. ' then
           cmd=trim(substr(cmd,2));
         put cmd $char384.;
         putlog cmd $char384.;
      end;
  run;quit;
  filename rut pipe  "powershell.exe -executionpolicy bypass -file d:/ps1/py_pgm.ps1";
  data _null_;
    file print;
    infile rut;
    input;
    put _infile_;
  run;
  filename rut clear;
  filename py_pgm clear;

  * use the clipboard to create macro variable;
  %if "&return" ^= "" %then %do;
    filename clp clipbrd ;
    data _null_;
     length txt $200;
     infile clp;
     input;
     putlog "*******  " _infile_;
     call symputx("&return",_infile_,"G");
    run;quit;
  %end;

%mend utl_submit_ps64;

%utl_submit_ps64("
[System.Collections.Generic.List[string]]$csvList = @();
$csvFile = 'd:/csv/classfit.csv';
$csvList = [System.IO.File]::ReadLines( $csvFile );
$lineToDelete = &rec;
[void]$csvList.RemoveAt( $lineToDelete - 1 );
[System.IO.File]::WriteAllLines( $csvFile, $csvList ) | Out-Null;
");

