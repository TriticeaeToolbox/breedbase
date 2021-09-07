COPY metadata.md_dbversion (dbversion_id, patch_name, patch_description, metadata_id) FROM stdin;
1	UpdateChadoSchema	Patch for bringing our Chado schema up to date with BCS version 0.09010\n	1
2	GrantPhenCvtermPerm	Grant web_usr permissions on table phenotype_cvterm\n	2
3	CreatePhenProp	Create new phenotypeprop table nad grant web_usr permission\n	3
4	AddVisibleToRoleIita	add stockprops of type visible_to_role\n	4
5	AddOrganismImage	This page adds an image_organism table to the metadata schema, so that images can be associated with organisms and displayed on the organism detail page.\n	5
6	AddOrganismComments	Removes unnecessary database constraint.	12
7	AddFilesExperimentLinkingTable	Adds the linking table between files and experiments to Phenome\n	13
8	ChangeMetadataPerms	Change permissions to allow web_usr to write, update, and delete on metadata.md_files and phenome.nd_experiment_files and metadata.md_metadata\n	14
9	AddBlastDbBlastDbGroupLinkingTable	Adds a linking table between the blast_db and blast_db_group table\n	15
10	FixStockPropPerms	Description of this patch goes here\n	16
11	AddProjectTypes	Description of this patch goes here\n	17
12	AddProjectLocationCvterm	Description of this patch goes here\n	18
13	ModifyProjectTablePrivileges	This patch enables select, update, insert and delete on the Chado project table\nDescription of this patch goes here\n	19
14	ChangeProjectPermissions	Description of this patch goes here\n	21
15	FixLocusGroupPerms	Description of this patch goes here\n	22
16	AddListTypes	Description of this patch goes here\n	23
17	ChangeNdGeolocationPrivileges	Description of this patch goes here\n	24
18	AddTrialTypes	Description of this patch goes here\n	25
19	AddTraitPropTypes	Description of this patch goes here\n	26
20	AddCvPerms	Description of this patch goes here\n	27
21	AddPublicListField	Add is_public boolean field to sgn_people.list	28
22	MarkerPositionSize	Change the sgn.marker_location.position type from numeric(8,5) to numeric(9,6)\nto accomodate full genome location in bp\n	29
23	AddDeletePriv2NDtables	Description of this patch goes here\n	30
24	ChangeProjectRelationshipPerms	Description of this patch goes here\n	31
25	AddMoreProjectTypes	Description of this patch goes here\n	32
26	AddJbrowseSrcField	Add jbrowse_src column to sgn.blast_db	33
27	AddTrialTypesYB	Description of this patch goes here\n	34
28	UnderlineCvNames	This patch will add underline to the cv names \nexperiment type\nstock type\nstock relationship\ntrial type\nthis is important for making CVs uniform and less room for errors when using these\n	35
29	UpdateOrganismSynonymCvterms	This patch will find_or_create a cvterm name organism_synonym\nwith cv of organism_property and dbxref of autocreated:organism_synonym\nThen all organismprops of type_id matching the word synonym will be associated with \nthe organism_synonym cvterm\nthis is important for making organism synonyms unified across the different databases and eliminating redundancy of cvterms with name = synonym\n	36
30	UpdateStockSynonymCvterms	This patch will find_or_create a cvterm name stock_synonym\nwith cv of stock_property and dbxref of autocreated:stock_synonym\nThen all stockprop of type_id matching the word synonym will be associated with \nthe stock_synonym cvterm\nthis is important for making stock synonyms unified across the different databases and eliminating redundancy of cvterms with name = synonym\n	37
31	DeleteNullLocalSynonyms	This patch will find cvterms with name ilike synonyms and cv.name \nlocal or null and will delete those.\nthis is important for using only synonyms with an explicit cvterm.name and cv.name.\n	38
32	UpdateSnpGenotypeCvterm	This patch will find_or_create a snp genotyping cvterm\nwith cv of  genotype_property \nThen all genotypes and genotypeprops of type_id matching the word snp genotyping will be associated with the snp genotyping cvterm\nthis is important for making the snp genotyping cvterm unified across the different databases and eliminating redundancy\n	39
33	UpdateMembersOf	This patch will find_or_create a member_of cvterm\nwith cv of stock_relationship\nThen all stock_relationship rows  of type_id matching the word members of will be associated with the member_of cvterm\nthis is important for making stock_relationship member_of term unified across the different databases and eliminating redundancy\n	40
34	ImplementWizardView	Description of this patch goes here\n	41
35	AddVectorStockType	This patch will find_or_create a cvterm name of vector, which is a new stock type\n	42
36	AddVectorListType	This patch will find_or_create a cvterm name of vector, which is a new stock type\n	43
37	FixRedundantCvterms	This patch will do the following:\n1. Set cv_id = nd_experiment_property for the cvterm cross_name\n2. Update the type_id of nd_experiment rows to cross_experiment where the type_id = cross , and then obsolete this stock_relationship cross cvterm\n3. Create a new term called cross_relationship cv= stock_relationship to be used \nin the stock_relationship table instead of the term cross_name which now \nhas a nd_experiment_property cv and is used as type_id in nd_experimentprop\nthis is important for making CVterms uniform and less room for errors when using these\n	44
38	UnderlineExpCvterms	This patch will add underline to the cvterm names with experiment_type cv \nfield_layout\nphenotyping_experiment\ngenotyping_layout\ngenotyping_experiment\nthis is important for making CVterms uniform and less room for errors when using these\n	45
39	UpdateLocalCvterms	This patch will update the cv id of the following cvterms that currently have a local cv name \ncross_type\nbreeding_program\nbreeding_program_trial_relationship\nharvest_date\nnumber_of_flowers\nnumber_of_seeds\nplanting_date\nthis is important for making CVterms uniform and having an explicit cv name that provides the right context\n	46
40	AddSystemCvterms	This patch will add system cvterms required for the functionality of the cxgn databases\n	47
41	GrantPublicMatviews	This patch grants permission to webuser on public.matviews\n	48
42	AddMdImageCvtermTable	Adds a linking table between the metadata.md_image and cvterm table\n	56
43	AddHasPlantsCvterm	Description of this patch goes here\n	57
44	UpdateMatViews	This patch updates the index of materialized_fullview and the queries used to create the materialized view for each individual category. It adds views for new categories: trial type and trial design\n	58
92	AddTissueSampleCvterm	This patch adds stock)type cvterm for tissue sample.\n	139
45	FixTrialTypes	This patch updates the list of possible trial types by removing duplicates, standardizing names, and assigning types to trials where it can be deduced from the trial name.\n	59
46	LinkPlantEntriesToProject	This patch updates the way that plant entries were being created and stored. Previously, plant entries were not linked directly to the project they are in. This made uploading of phenotypes slow because of additional searches to go from plant to plot to project. Now the connnection of plant to project is available.\n	60
47	AddPlantOfCvterm	This patch will find_or_create a cvterm name of vector, which is a new stock type\n	61
48	RedefineTraitsView	This patch updates the materialized view that stores traits\n	62
49	PlantEntriesInheritPlotProperties	This patch updates the way that plant entries were being created and stored. Previously, plant entries did not inherit plot properties (block, replicate, plot number), as well as a relationship to the accession. Now they are created with these associations.\n	63
50	RenameObsoleteStocks	This patch renames obsolete stocks by adding _OBSOLETED and a timestamp to the end of the uniquename and name. This then allows new stocks to be added with the same name as the obsoleted stock.\n	65
51	RedefineStockViews	This patch updates the materialized view that stores traits\n	66
52	AddNewCrossCvterms	This patch adds new cross cvterms so that they can be stored in the nd_experimentprop table.\n	67
53	AddNewListTypes	This patch will create new cvterms 'dataset', 'crosses', 'populations', and 'numeric' in the 'list_type' cv.\n	68
54	AddNdExperimentProperty	This patch will add number_of_fruits, number_of_seeds_planted and number_of_seedlings_transplanted cvterms to the nd_experiment_property cv.\n	69
55	AddSeedMultiplicationTrialTypesYB	Description of this patch goes here\n	70
56	AddNewFolderCvterms	This patch adds new cross cvterms so that they can be stored in the nd_experimentprop table.\n	71
57	AddDatasetTable	Description of this patch goes here\n	72
58	AddBrAPIPropertyCvterms	Description of this patch goes here\n	73
59	UpdateMaterializedPhenoview	This patch updates the materialized_phenoview view and the binary views that depend on it to remove unnecessary fields and better handle plants vs plots.\n	74
60	AddSeedLotCvterms	Description of this patch goes here\n	75
61	AddProjectPropCvtermForPhenotypeCompletion	When a trial has all phenotypes uploaded, a projectprop called 'phenotypes_fully_uploaded' is set to 1\n	76
62	AddPlantListType	This patch will create the cvterm 'plant'.\n	77
64	AddGraftingCvterms	Add missing cvterms for storing grafted stocks, and grafting experiments or projects \n	81
65	AddNewProjectType	Add new cvterms for Genetic Gain, Storage, Heterosis and Health Status project types\n	92
66	AddDistributedSeedCrossCvterm	This patch adds number of seeds distributed cvterms that can be stored in the nd_experimentprop table.\n	93
67	UpdateProjectDateProps	This patch will update the cvterm name of \nharvest_date -> project_harvest_date\nplanting_date -> project_planting_date\nand remove the redundant terms\nproject harvest date\nproject planting date\nRows in projectprop that point to the redundant cvterms will be updated to point to the correct ones\n	106
68	AddSeedlotListTypeCvterm	Add missing cvterm for seedlot list type\n	107
69	PopulateStockPub	Populating stock_pub table	116
70	AddWebUsrDeletePermToOrganismprop	(no description)	117
71	AddNdprotocolDescriptionChado	patch for adding descriotion column to chado table nd_protocol. This change will go into Chado version 1.4. DO NOT ALTER CHADO TABLES WITHOUT COORDINATING FIRST WITH GMOD!\n	118
72	AddScreenHouseTrialType	Description of this patch goes here\n	119
73	AddComposedTraitCv	Adds a composed trait cv with namespace COMP to allow composition of traits\n	120
74	UpdateCoPrefix	Update cassava_trait db prefix\n	121
75	UpdateGeolocationCvName	Description of this patch goes here\n	122
76	AddSubplotCvterms	Adds subplot stock_type, subplot_index_number stockprop, and subplot_of stock_relationship cvterms.\n	123
77	AddTreatmentCvterms	Add missing cvterms for storing grafted stocks, and grafting experiments or projects \n	124
78	AddSeedlotCurrentCountCvterm	Adds current_count stock_property cvterm which acts as a store for the current count of a seedlot\n	125
79	UpdateNewProjectProps	This patch will update the cvterm name of \nGenetic Gain -> genetic_gain_trial\nHealth Status -> health_status_trial\nHeterosis -> heterosis_trial\nStorage -> storage_trial\n	126
80	AddCrossingExperimentCvterms	Add cvterms for crossing experiment\n	127
81	AddSeedlotViews	This patch updates the materialized views to include seedlots.\n	128
82	AddTimestampToNdTables	Adds a column called 'create_date' to the nd_experiment, stock, project, genotype, phenotype, and nd_protocol tables. this column is set to DEFAULT NOW() when an entry is created. This is useful for creating reports of which project, stocks, phenotypes, etc were added over different time periods.\n	129
83	AddCachedTrialLayoutCvterm	This patch adds the necessary cvterm for storing a cached trial layout in json\n	130
84	UpdateNdExperimentProperty	This patch updates the cvterm "crossing_metadata_json" by changing from  cv = "nd_experiment_property" to cv = "stock_property"  and removes unused cvterms related to crossing experiments.\n	131
85	UpdateProjectTypes	This patch updates the cvterms phenotypeing_trial and genotyping_trial with cv = project_type to be consistent with other projectprops in the database\ncvterm crossing_trial is redundant and is now deleted, as well as the cv.name trial_type. All trial types in the database should use the project_type cvterm since these are stored in the project table \n	132
86	AddAccessionStockpropCvterms	This patch adds the necessary cvterms for accession stockprops\n	133
87	AddLabelDesignListType	This patch will create new cvterm 'label_design' in the 'list_type' cv.\n	134
88	AddStockGeoJsonCvterm	This patch adds the necessary cvterm for storing geo json for plots\n	135
89	AddPhenotypeOutlierCvterm	This patch adds phenotype_property cvterm for storing a suppressed plot phenotype.\n	136
90	AddProjectTissueSampleCvterms	This patch adds cvterms for saving tissue_sample stocks from plants in a trial.\n	137
91	AddStockPropViews	This patch creates a materialized view for stockprops.\n	138
93	AddGenotypingTrialWellTerms	This patch adds stockproperties for wells.\n	140
94	AddSeedlotCurrentWeightCvterm	This patch adds stock)type cvterm for tissue sample.\n	141
95	AddTissueSampleListCvterm	This patch adds list type for tissue_samples.\n	142
96	AddGenotypingTrialListCvterm	This patch adds list type for genotyping_trials.\n	143
97	UpdateStockPropViews	This patch creates/updates a materialized view for stockprops.\n	144
98	UpgradeGenotypeStorage	This patch converts genotypeprop values to jsonb, and fixes genotype related materialized views.\n	145
99	AddFieldTrialProjectMetadataCvterms	This patch adds cvterms for project metadata and trial linkage.\n	146
100	AddCrossStockRelationshipCvterms	Add cvterms for crossing experiment\n	147
101	AddGenotypingTrialprojectType	This patch adds genotyping_trial project type.\n	148
102	AddMarkersListCvterm	This patch adds list type for markers.\n	149
103	EncodePasswords	Description of this patch goes here\n	150
104	AddDataAgreementCvterm	This patch adds the 'data_agreement' projectprop cvterm to databases that do not already have it\n	151
105	PhenotypeJsonbTableMaterializedView	This patch creates/updates a materialized view for phenotypes in the traditional table format.\n	152
106	AddCrossingBlockTrialCvterm	This patch adds the 'crossing_block_trial' project_type cvterm\n	153
107	AddFolderForGenotypingTrialCvterm	This patch adds the 'folder_for_genotyping_trials' projectprop cvterm\n	154
108	AddVCFSNPGenotypingCvterm	This patch adds the 'vcf_snp_genotyping' genotype_property cvterm\n	155
109	UpdatePhenotypeJsonbTableMaterializedView	This patch creates/updates a materialized view for phenotypes in the traditional table format.\n	156
110	AddPhenotypeDateTimeAndCollectorColumns	This patch adds a datetime timestamp column called collect_date to the phenotype table\n	157
111	UpdatePhenotypeJsonbTableMaterializedViewWithCollectDateAndOperator	This patch creates/updates a materialized view for phenotypes in the traditional table format.\n	158
112	AdaptToNewGenotypeStorage	This patch adapts to the new genotype storage by changing nd_protocolprop.value to JSONB and by changing the 'snp genotyping' values in genotypeprop to {'markername1' : {'DS' : '1'}, 'markername2' : {'DS' : '0'}, ... } and by changing the type of these genotypeprops to 'vcf_snp_genotyping'\n	159
113	AddFamilyNameCvterm	This patch adds the 'crossing_block_trial' project_type cvterm\n	160
114	AddImageDisplayOrderColumns	Adds a display_order columns to phenome.locus_image and phenome.stock_image tables\n	161
115	AddIdentifierGenerationCvterm	This patch adds the 'data_agreement' projectprop cvterm to databases that do not already have it\n	162
116	UpdatePhenotypeJsonbTableMaterializedViewWithNotes	This patch creates/updates a materialized view for phenotypes in the traditional table format.\n	163
117	AddODKONAFormsListCvterm	This patch adds odk_ona_forms as a list type cvterm.\n	164
118	FixTrialPluralTypes	This patch fixes the odd "Preliminary Yield Trials" and "Advanced Yeld Trials" and "Advanced Yield Trials" terms that should be singular terms\n	165
119	UpdateProgenyOffspringOfRelationship	Description of this patch goes here\n	166
120	AddProjectPropCvtermForRawDataLink	Allows addition of a link to the raw data file for genotyping plates\n	167
121	AddMissingProgramPropsToLocations	This patch finds locations that are missing a program prop, and adds the correct program if it can be inferred based on the trials that have been held at the location.\n	168
122	ChangeGenotypepropGTKeyToNucleotides	Allows addition of a link to the raw data file for genotyping plates\n	169
123	ChangeGenotypepropGTKeyToDS	Allows addition of a link to the raw data file for genotyping plates\n	170
124	GenotypepropUserPermissions	This patch gives web_usr permissions for inserting and using genotypeprop table. Your database may already have been modified manually, but this patch explicitly grants the needed permissions.\n	171
125	AddManagementFactorPropertyCvterms	This patch adds the necessary cvterms for field management factor properties\n	172
126	AddAnalysisAndMixedModelCvterms	Adds cvterms required for mixed models and analysis features\n	173
\.
