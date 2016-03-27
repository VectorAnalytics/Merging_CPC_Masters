/*This code merges patents with the CPC master classification files, so that old patents get
assigned with a CPC code based on the USPTO statistical mapping.*/

LIBNAME pats "C:\Users\Public\Documents\Patent_SAS";

data patents;
	set pats.patent_data_2011;
	*Change grant_num in my patent data into a number (from a character variable);
	pat_num=input(grant_num,comma8.);
	run;
proc sort data=patents ;
	by pat_num;
	run;
data cpc_mapping;
	set pats.cpc_master;
	run;
proc sort data=cpc_mapping ;
	by pat_num;
	run;
data pats.patent_data_2011_mapped;
	merge cpc_mapping (in=cpc) patents (in=pat);
	by pat_num;
	if pat=1; *this keeps only records that are in the patent dataset after the merge;
	run;

