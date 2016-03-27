/*This code reads multiple txt files that contain CPC Master Classification Data and selects the First Invention CPC code that 
has been statistically mapped to each patent. I processed txt files downloaded from USPTO that contained patents from 2012 to 2016.
It is not the prettiest code, as I should be using a macro to read a directoy of the files, but used brute force to get it done.
I tried to get an option of the SAS FILENAME statement to work, to read in multiple files using wildcards, 
but I couldn't get it to work. */

LIBNAME pats "C:\Users\Public\Documents\CPC_MCF";
data cpc_78;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_7800000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_79;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_7900000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_80;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8000000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_81;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8100000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_82;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8200000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_83;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8300000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_84;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8400000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_85;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8500000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_86;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8600000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_87;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8700000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_88;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8800000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_89;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_8900000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_90;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_9000000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_91;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_9100000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
data cpc_92;
	INFILE "c:\Users\Public\Documents\CPC_MCF\US_Grant_CPC_MCF_9200000.txt";
	INPUT pat_num 11-17 mcf_section $ 18 mcf_class $ 19-20 mcf_subclass $ 21 
			mcf_main_group $ 22-25  mcf_subgroup $ 27-32 mcf_position $ 41 mcf_value $ 42;
	run;
*Appended all my separate datasets.;
data cpc_master;
	set cpc_78 cpc_79 cpc_80 cpc_81 cpc_82 cpc_83 cpc_84 cpc_85 cpc_86 cpc_87 
		cpc_88 cpc_89 cpc_90 cpc_91 cpc_92;
	If mcf_position = "F" and mcf_value = "I"; 
	*Created a variable "cpc_mapped" and concatenated all the parts of the CPC code into it.;
	format cpc_mapped $15. ;
	cpc_mapped= (mcf_section||mcf_class||mcf_subclass||trim(left(mcf_main_group))||'/'||trim(left(mcf_subgroup)));
	run;
/*I used a proc sort with nodupkey option to get rid of duplicate patents (duped because they had multiple "kind codes" in the
	patent files). This induces some error into my parsing, as I really should be decided which of the dups to keep, but as there 
	are only 172 dups out of 1,461,130 I'll take the error. */
proc sort data=cpc_master out=pats.cpc_master nodupkey;
	by pat_num;
	run;
