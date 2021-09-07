COPY public.cvtermprop (cvtermprop_id, cvterm_id, type_id, value, rank) FROM stdin;
1	1	2	Derivation as a relation between instances. The temporal relation of derivation is more complex. Transformation, on the instance level, is just the relation of identity: each adult is identical to some child existing at some earlier time. Derivation on the instance-level is a relation holding between non-identicals. More precisely, it holds between distinct material continuants when one succeeds the other across a temporal divide in such a way that at least a biologically significant portion of the matter of the earlier continuant is inherited by the later. Thus we will have axioms to the effect that from c derives_from c1 we can infer that c and c1 are not identical and that there is some instant of time t such that c1 exists only prior to and c only subsequent to t. We will also be able to infer that the spatial region occupied by c as it begins to exist at t overlaps with the spatial region occupied by c1 as it ceases to exist in the same instant.	0
2	4	2	this relation was superfluous, so it has been obsoleted	0
3	8	2	When an embryonic oenocyte (a type of insect cell) is transformed into a larval oenocyte, one and the same continuant entity preserves its identity while instantiating distinct classes at distinct times. The class-level relation transformation_of obtains between continuant classes C and C1 wherever each instance of the class C is such as to have existed at some earlier time as an instance of the distinct class C1 (see Figure 2 in paper). This relation is illustrated first of all at the molecular level of granularity by the relation between mature RNA and the pre-RNA from which it is processed, or between (UV-induced) thymine-dimer and thymine dinucleotide. At coarser levels of granularity it is illustrated by the transformations involved in the creation of red blood cells, for example, from reticulocyte to erythrocyte, and by processes of development, for example, from larva to pupa, or from (post-gastrular) embryo to fetus or from child to adult. It is also manifest in pathological transformations, for example, of normal colon into carcinomatous colon. In each such case, one and the same continuant entity instantiates distinct classes at different times in virtue of phenotypic changes.	0
4	9	2	Location as a relation between instances: The primitive instance-level relation c located_in r at t reflects the fact that each continuant is at any given time associated with exactly one spatial region, namely its exact location. Following we can use this relation to define a further instance-level location relation - not between a continuant and the region which it exactly occupies, but rather between one continuant and another. c is located in c1, in this sense, whenever the spatial region occupied by c is part_of the spatial region occupied by c1.    Note that this relation comprehends both the relation of exact location between one continuant and another which obtains when r and r1 are identical (for example, when a portion of fluid exactly fills a cavity), as well as those sorts of inexact location relations which obtain, for example, between brain and head or between ovum and uterus	0
5	10	2	The is_a relationship is considered axiomatic by the obo file format specification. In the representation of obo in OWL, where obo terms are represented as OWL classes, is_a is mapped on to the subClassOf axiom	0
6	11	2	The instance_of relationship is considered axiomatic by the obo file format specification; ie it is taken for granted. The is_a relation is still included in this ontology for completeness	0
7	13	2	OBSOLETE. The definition is "As for part_of, with the additional constraint that subject and object may be identical". However, part_of is already reflexive, therefore improper_part_of is identical to part_of. If read differently, as "improper_part_of is part_of but not proper_part_of",improper_part_of becomes identity. So, improper_part_of is either identical to part_of or to identity, and not an intuitive synonym for either of them. [Robert Hoehndorf]	0
8	15	2	Parthood as a relation between instances: The primitive instance-level relation p part_of p1 is illustrated in assertions such as: this instance of rhodopsin mediated phototransduction part_of this instance of visual perception.    This relation satisfies at least the following standard axioms of mereology: reflexivity (for all p, p part_of p); anti-symmetry (for all p, p1, if p part_of p1 and p1 part_of p then p and p1 are identical); and transitivity (for all p, p1, p2, if p part_of p1 and p1 part_of p2, then p part_of p2). Analogous axioms hold also for parthood as a relation between spatial regions.    For parthood as a relation between continuants, these axioms need to be modified to take account of the incorporation of a temporal argument. Thus for example the axiom of transitivity for continuants will assert that if c part_of c1 at t and c1 part_of c2 at t, then also c part_of c2 at t.    Parthood as a relation between classes: To define part_of as a relation between classes we again need to distinguish the two cases of continuants and processes, even though the explicit reference to instants of time now falls away. For continuants, we have C part_of C1 if and only if any instance of C at any time is an instance-level part of some instance of C1 at that time, as for example in: cell nucleus part_ of cell.	0
9	18	2	Obsoleted	0
10	20	2	See reasons for obsoletion of improper_part_of	0
11	22	2	An example is: translation preceded_by transcription; aging preceded_by development (not however death preceded_by aging). Where derives_from links classes of continuants, preceded_by links classes of processes. Clearly, however, these two relations are not independent of each other. Thus if cells of type C1 derive_from cells of type C, then any cell division involving an instance of C1 in a given lineage is preceded_by cellular processes involving an instance of C.    The assertion P preceded_by P1 tells us something about Ps in general: that is, it tells us something about what happened earlier, given what we know about what happened later. Thus it does not provide information pointing in the opposite direction, concerning instances of P1 in general; that is, that each is such as to be succeeded by some instance of P. Note that an assertion to the effect that P preceded_by P1 is rather weak; it tells us little about the relations between the underlying instances in virtue of which the preceded_by relation obtains. Typically we will be interested in stronger relations, for example in the relation immediately_preceded_by, or in relations which combine preceded_by with a condition to the effect that the corresponding instances of P and P1 share participants, or that their participants are connected by relations of derivation, or (as a first step along the road to a treatment of causality) that the one process in some way affects (for example, initiates or regulates) the other.	0
12	24	2	Has_participant is a primitive instance-level relation between a process, a continuant, and a time at which the continuant participates in some way in the process. The relation obtains, for example, when this particular process of oxygen exchange across this particular alveolar membrane has_participant this particular sample of hemoglobin at this particular time.	0
3360	36523	2	This term was improved by GO_REF:0000022. It was moved.	0
3361	36533	2	This term was added by GO_REF:0000021.	0
13	25	2	Containment obtains in each case between material and immaterial continuants, for instance: lung contained_in thoracic cavity; bladder contained_in pelvic cavity. Hence containment is not a transitive relation.    If c part_of c1 at t then we have also, by our definition and by the axioms of mereology applied to spatial regions, c located_in c1 at t. Thus, many examples of instance-level location relations for continuants are in fact cases of instance-level parthood. For material continuants location and parthood coincide. Containment is location not involving parthood, and arises only where some immaterial continuant is involved. To understand this relation, we first define overlap for continuants as follows:    c1 overlap c2 at t =def for some c, c part_of c1 at t and c part_of c2 at t. The containment relation on the instance level can then be defined (see definition):	0
14	27	2	Note that adjacent_to as thus defined is not a symmetric relation, in contrast to its instance-level counterpart. For it can be the case that Cs are in general such as to be adjacent to instances of C1 while no analogous statement holds for C1s in general in relation to instances of C. Examples are: nuclear membrane adjacent_to cytoplasm; seminal vesicle adjacent_to urinary bladder; ovary adjacent_to parietal pelvic peritoneum	0
3093	33680	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3094	33681	2	This term was made obsolete because adaptation was not deemed to be a valid biological process.	0
3095	33682	2	This term partially replaces the obsolete term 'growth or development of symbiont in host organelle ; GO:0075066'. See also 'growth of symbiont in host vascular tissue ; GO:0044123'.	0
3096	33689	2	In this mechanism of mitochondrion degradation, the mitochondrion is directly engulfed by a lysosome-like vacuole. It is therefore distinct from canonical autophagy, which is mediated by a double-membrane autophagosome.	0
3097	33706	2	Note that the synonym 'DNA underwinding' should not be confused with 'DNA unwinding ; GO:0006268', which refers to DNA strand separation, and is a type of geometric change. GO:0006265 refers to alteration of the superhelical density of double-stranded DNA. Note that DNA topological change and DNA geometric change (GO:0032392) are distinct, but are usually coupled in vivo.	0
3098	33715	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
3099	33721	2	This term was added by GO_REF:0000022.	0
3100	33757	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term 'positive regulation of plant-type hypersensitive response ; GO:0034052'.	0
3101	33759	2	Note that 'translocation' is sometimes used in the literature to refer to the entire process of protein import into the nucleus, but in GO refers specifically to the step in which a cargo-carrier protein complex moves through the nuclear pore complex.	0
3102	33760	2	This term was added by GO_REF:0000021.	0
3103	33764	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3104	33770	2	Note that the syntax of the definition of the this term is different from the usual regulation syntax because it describes regulation of a trait rather than regulation of a process.	0
3105	33780	2	This term was added by GO_REF:0000022.	0
3106	33783	2	This term was added by GO_REF:0000021.	0
3107	33790	2	This term was made obsolete because it does not represent a real biological process.	0
3108	33804	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'positive regulation of development of symbiont on or near host surface ; GO:0044143' and 'positive regulation of growth of symbiont on or near host surface ; GO:0044142'.	0
3109	33805	2	At the time of obsoletion, under "regulation of molecular function", a term exists for "regulation of sequence-specific DNA binding transcription factor activity" and the positive and negative child terms, but no more detailed terms exist. In reannotating, please consider if the paper would support annotation to a regulation term for a specific RNA polymerase. Also consider if what you need would be regulation of protein binding transcription factor activity or any of its child terms instead. If so, please consider making a SF item regarding creation of such a term.	0
3110	33809	2	Note that this term is intended for use in annotation of symbiont gene products.	0
3111	33812	2	This term was added by GO_REF:0000021.	0
3112	33825	2	This term was added by GO_REF:0000021.	0
3113	33855	2	This term was added by GO_REF:0000021.	0
3114	33860	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3115	33866	2	This term was added by GO_REF:0000021.	0
3116	33869	2	Note that the assembly is regulated by several small GTPases of the Rab and Rho families.	0
3117	33872	2	This term was added by GO_REF:0000021.	0
3118	33875	2	This term was made obsolete because it does not represent a real biological process.	0
3119	33881	2	This term was added by GO_REF:0000022.	0
3120	33889	2	This term was added by GO_REF:0000021.	0
3121	33894	2	This term was made obsolete because it does not represent a real biological process.	0
3122	33910	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'regulation of development of symbiont in host ; GO:0044127' and 'regulation of growth of symbiont in host ; GO:0044126'.	0
3123	33954	2	This term was made obsolete because the syntax of the term is incorrect.	0
3124	33959	2	This term was made obsolete because it does not represent a real biological process.	0
3125	33967	2	This term partially replaces the obsolete term 'positive regulation of growth or development of symbiont during interaction with host ; GO:0075339'. See also 'positive regulation of growth of symbiont during interaction with host ; GO:0044148'.	0
3126	33971	2	This term was added by GO_REF:0000021.	0
3309	35923	2	This term was added by GO_REF:0000021.	0
3310	35956	2	This term was added by GO_REF:0000021.	0
3127	33980	2	Note that, in addition to forming the root of the biological process ontology, this term is recommended for use for the annotation of gene products whose biological process is unknown. Note that when this term is used for annotation, it indicates that no information was available about the biological process of the gene product annotated as of the date the annotation was made; the evidence code ND, no data, is used to indicate this.	0
3128	33989	2	This term was made obsolete because it is a gene product specific term.	0
3129	33991	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3130	34007	2	Note that this term is intended for use when a gene product is seen to cause apparent increases in intracellular or extracellular cytokine levels, without specific regard as to whether the increase is due to increased biosynthesis, increased secretion of preexisting cytokine molecules, or increased conversion from precursor molecules.	0
3131	34037	2	This term was made obsolete because 2,4,5-trichlorophenoxyacetic acid is not synthesized by living organisms and GO does not cover non-biological processes.	0
3132	34044	2	This term was made obsolete because it represents multiple processes that are represented elsewhere in the process ontology.	0
3133	34059	2	This term was added by GO_REF:0000021.	0
3134	34077	2	This term was made obsolete because it implies that every protein that is ubiquitinated is also subsequently deubiquinitated, which is not true. Also, the process ontology does not include analogous terms for other small modifiers.	0
3135	34083	2	This term was made obsolete because smooth muscle does not have fibers.	0
3136	34097	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3137	34104	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, trophectoderm ; EMAP:19', 'TS5, trophectoderm ; EMAP:28' and 'TS6, trophectoderm ; EMAP:39'.	0
3138	34110	2	This term was added by GO_REF:0000022.	0
3139	34154	2	This term was added by GO_REF:0000021.	0
3140	34155	2	This term was made obsolete because it has been superseded by more accurate terms to represent the biological processes occurring, and it is not clear that this term represents a useful entity.	0
3141	34163	2	Note that while typically associated with tRNA splicing, this mechanism of splicing is known to be used for some non-tRNA substrates, e.g. HAC1 (YFL031W) in S. cerevisiae and an intron in the 23S rRNA of the Archaeal species Desulfurococcus mobilis.	0
3142	34164	2	This term was made obsolete because it makes no sense and was added in error.	0
3143	34173	2	This term was made obsolete because it relates to a specific gene family rather than a process.	0
3144	34175	2	This term was made obsolete because more accurate terms were created.	0
3145	34176	2	Note that most eukaryotic gene products involved in canonical cytokinesis during the cell cycle can be annotated to 'cell cycle cytokinesis ; GO:0033205' or its descendants. See also 'cell division ; GO:0051301'. Note that cytokinesis excludes nuclear division; in prokaryotes, there is little difference between cytokinesis and cell division.	0
3146	34195	2	This term was made obsolete because it describes a substrate-specific process.	0
3147	34197	2	This term was added by GO_REF:0000022.	0
3148	34214	2	This term was added by GO_REF:0000021.	0
3149	34247	2	This term was added by GO_REF:0000021.	0
3150	34252	2	This term was made obsolete because more specific terms exist.	0
3151	34253	2	This term was made obsolete because it does not represent a real biological process.	0
3152	34279	2	Note that unlike mammals or Drosophila, C. elegans (and many lower organisms) do not have professional macrophages/phagocytes, instead cell corpses are engulfed by neighboring cells. Cell types that can function as engulfing cells include hypodermal cells, gonadal sheath cells, pharyngeal muscle cells, and intestinal cells.	0
3153	34283	2	This term was made obsolete because it represents a function rather than a process.	0
3154	34289	2	Note that this term is not synonymous with 'homophilic cell adhesion ; GO:0007156'; the process may occur by homophilic or heterophilic mechanisms.	0
3155	34290	2	This term was added by GO_REF:0000022.	0
3156	34329	2	This term partially replaces the obsolete term 'positive regulation of growth or development of symbiont in host ; GO:0033666'. See also 'positive regulation of growth of symbiont in host ; GO:0044128'.	0
3157	34339	2	This term was made obsolete because 3-hydroxyphenylacetate is not synthesized by living organisms and GO does not cover non-biological processes.	0
3158	34360	2	Note that term is to be used to annotate gene products in the symbiont. To annotate host gene products, consider the biological process term 'positive regulation of apoptosis ; GO:0043065'.	0
3159	34367	2	This term was added by GO_REF:0000021.	0
3160	34378	2	Paternal aggression also exists. Serves to protect the offspring from intruders.	0
3161	34393	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host transmembrane receptor-mediated signal transduction ; GO:0075114".	0
3162	34400	2	Note that 'translocation' is sometimes used in the literature to refer to the entire process of protein import into the nucleus, but in GO refers specifically to the step in which a cargo-carrier protein complex moves through the nuclear pore complex.	0
3163	34416	2	Note that this heterodimeric cytokine utilizes the IL-12p35 subunit as its alpha chain, which is also used by IL-35 as its alpha chain, and utilizes the IL-12p40 subunit as its beta chain, which is also used by IL-23 as its beta chain.	0
3164	34452	2	Note that protein heterodimerization is a molecular function: 'protein heterodimerization activity ; GO:0046982'.	0
3165	34470	2	Note that this term should not be confused with 'response to anoxia ; GO:0034059'. Note that in laboratory studies, hypoxia is typically studied at O2 concentrations ranging from 0.1 - 5%.	0
3166	34479	2	Note that this process is exemplified in insects by the actions of the knirps gene product.	0
3167	34481	2	This term was made obsolete because it relates to a specific gene family rather than a process.	0
3168	34485	2	Note that, for example, the formation of a pseudopod in an amoeba would not be considered formation involved in morphogenesis because it would not be thought of as the formation of an anatomical structure that was part of the shaping of the amoeba during its development. The formation of an axon from a neuron would be considered the formation of an anatomical structure involved in morphogenesis because it contributes to the creation of the form of the neuron in a developmental sense.	0
3169	34489	2	Note that this MAPKKK cascade is commonly referred to as the ERK pathway in the literature, but involves only ERK1 or ERK2, not other ERK kinases.	0
3170	34491	2	Note that this term should be used to annotate gene products of symbiont.	0
3171	34501	2	This term was made obsolete because it was created to cover the conversion of ecdysone to its active form ecdysterone (20-hydroxyecdysone), but this reaction is carried out in a single step by ecdysone 20-monooxygenase (EC 1.14.99.22) and so is a function rather than a process.	0
3172	34506	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
3173	34511	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3174	34527	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3175	34558	2	This term was added by GO_REF:0000021.	0
3176	34562	2	Note that this term represents the return of T cell levels to stable numbers following an immune response as well as the proliferation and elimination of T cells required to maintain stable numbers in the absence of an outside stimulus.	0
3177	34570	2	See also the biological process terms 'unfolded protein response ; GO:0030968' and 'retrograde protein transport, ER to cytosol ; GO:0030970'.	0
3178	34579	2	This term was added by GO_REF:0000021.	0
3179	34593	2	This term was made obsolete because there is no clear difference between the sensu Insecta term and the generic term.	0
3180	34611	2	This term was made obsolete because it was replaced by more specific terms.	0
3181	34617	2	Note that proteins such as mannose-binding lectin (MBL) and certain serum ficolins can activate the lectin complement pathway.	0
3182	34669	2	Note that promoter clearance is represented as a separate step, not part_of either initiation or elongation.	0
3183	34671	2	Note that protein homodimerization is a molecular function: 'protein homodimerization activity ; GO:0042803'.	0
3184	34686	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3185	34688	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3186	34696	2	This term was added by GO_REF:0000021.	0
3187	34708	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3188	34717	2	This term was made obsolete because it does not represent a real biological process.	0
3189	34718	2	See also the cellular component term 'thylakoid membrane ; GO:0042651'.	0
3190	34741	2	Note that this term is used to annotate gene products of the symbiont.	0
3191	34747	2	This term was added by GO_REF:0000021.	0
3192	34762	2	This term was made obsolete because it is a gene product specific term.	0
3193	34773	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3194	34783	2	This term was added by GO_REF:0000021.	0
3195	34787	2	Note that this term is used to annotate gene products of the symbiont.	0
3196	34797	2	This term was made obsolete because its definition was inaccurate.	0
3197	34800	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3198	34804	2	Note that 'translocation' is sometimes used in the literature to refer to the entire process of protein import into the nucleus, but in GO refers specifically to the step in which a cargo-carrier protein complex moves through the nuclear pore complex.	0
3199	34808	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3200	34817	2	This term was added by GO_REF:0000021.	0
3201	34820	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont receptor-mediated signal transduction ; GO:0075078".	0
3202	34838	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3203	34839	2	This term was made obsolete because it does not represent a real process that exists in nature.	0
3204	34849	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'development of symbiont in host vascular tissue ; GO:0044122' and 'growth of symbiont in host vascular tissue ; GO:0044123'.	0
3205	34860	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont adenylate cyclase activity ; GO:0075076".	0
3206	34869	2	See also the biological process term 'replication fork arrest ; GO:0043111' and its children.	0
3207	34891	2	This term was made obsolete because more appropriate terms were created. Morphogenesis in plants also occurs outside of embryogenesis.	0
3208	34898	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host signal transduction mediated by G-protein gamma subunit ; GO:0075128".	0
3209	34913	2	This term was made obsolete because it does not represent a real biological process.	0
3210	34919	2	This term was added by GO_REF:0000022.	0
3211	34925	2	Note that female germ lines can be found in female or hermaphroditic organisms, so this term can be used to annotate gene products from hermaphrodites such as those of C. elegans. See also the biological process term 'meiosis ; GO:0007126'.	0
3212	34926	2	This term was made obsolete because toluene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
3213	34956	2	This term was added by GO_REF:0000021.	0
3214	34968	2	This term was added by GO_REF:0000021.	0
3215	34991	2	Note that this step represents formation of the A2-1 complex (yeast) or the B1 complex (mammals).	0
3216	34996	2	This term was added by GO_REF:0000021.	0
3217	34999	2	Note that this term is used to annotate gene products of the symbiont.	0
3218	35000	2	See also the biological process term 'peptidyl-tyrosine dehydrogenation ; GO:0018251'.	0
3219	35016	2	Note that this term is used to annotate gene products of the symbiont.	0
3220	35019	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
3221	35021	2	Note that bacterial lipopeptides are derived from bacterial lipoproteins, but the two terms are sometimes used interchangeably in the literature.	0
3222	35039	2	This term was made obsolete because it represents a function rather than a process.	0
3223	35041	2	This term was made obsolete because it does not represent a real biological process.	0
3224	35052	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
3225	35056	2	Note that the syntax of the definition of the this term is different from the usual regulation syntax because it describes regulation of a trait rather than regulation of a process.	0
3226	35080	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3227	35082	2	This term was made obsolete because N-terminal proline residues can not be trimethylated.	0
3228	35086	2	This term partially replaces the obsolete term 'growth or development of symbiont in host ; GO:0044412'. See also 'growth of symbiont in host ; GO:0044117'.	0
3229	35111	2	This term partially replaces the obsolete term 'growth or development of symbiont in host ; GO:0044412'. See also 'development of symbiont in host ; GO:0044114'.	0
3230	35116	2	This term was made obsolete because its meaning is ambiguous.	0
3231	35124	2	This term was added by GO_REF:0000021.	0
3232	35127	2	This term was added by GO_REF:0000022.	0
3233	35128	2	This term was added by GO_REF:0000021.	0
3234	35134	2	This term was added by GO_REF:0000021.	0
3235	35148	2	This term was added by GO_REF:0000021.	0
3236	35151	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3237	35160	2	This term was added by GO_REF:0000021.	0
3238	35192	2	Note that this term is a direct child of 'biological_process ; GO:0008150' because some immune system processes are types of cellular process (GO:0009987), whereas others are types of multicellular organism process (GO:0032501). This term was added by GO_REF:0000022.	0
3239	35203	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host receptor-mediated signal transduction ; GO:0075110".	0
3240	35207	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3241	35216	2	This term was added by GO_REF:0000021.	0
3242	35249	2	This term partially replaces the obsolete term 'growth or development of organism on or near symbiont surface ; GO:0051857'. See also 'development of organism on or near symbiont surface ; GO:0044150'.	0
3243	35255	2	This term was made obsolete because it represents metabolism within the fat body not of the fat body.	0
3244	35257	2	This term was added by GO_REF:0000021.	0
3245	35284	2	This term was added by GO_REF:0000021.	0
3246	35292	2	See also the biological process terms 'unfolded protein response ; GO:0030968' and 'retrograde protein transport, ER to cytosol ; GO:0030970'.	0
3247	35311	2	This term was added by GO_REF:0000021.	0
3248	35353	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3249	35354	2	This term was made obsolete because it represents a phenotype.	0
3250	35355	2	This term was added by GO_REF:0000021.	0
3251	35359	2	Note that this term was split from 'positive regulation of actin polymerization and/or depolymerization ; GO:0045758' (sibling term 'positive regulation of actin polymerization ; GO:0030838').	0
3252	35360	2	This term was added by GO_REF:0000021.	0
3253	35372	2	This term was added by GO_REF:0000021.	0
3254	35376	2	This term was added by GO_REF:0000021.	0
3255	35383	2	This term was made obsolete because nitrotoluene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
3256	35390	2	This term was added by GO_REF:0000021.	0
3257	35406	2	This term was added by GO_REF:0000021.	0
3258	35421	2	See also the biological process term 'blood coagulation, intrinsic pathway ; GO:0007597'.	0
3259	35427	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3260	35429	2	Note that this term should be used to annotate gene products of host.	0
3261	35437	2	This term was made obsolete because xylene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
3262	35441	2	This term was made obsolete because it does not represent a real biological process.	0
3263	35467	2	Note that this term was split from 'negative regulation of intermediate filament polymerization and/or depolymerization ; GO:0045825' (sibling term 'negative regulation of intermediate filament depolymerization ; GO:0030843').	0
3264	35470	2	Note that jawless fish refers to both lampreys (Petremyzontidae, ncbi_taxonomy_id:7746) and hagfish (Myxinidae, ncbi_taxonomy_id:7762).	0
3265	35476	2	This term was made obsolete because it does not represent a real biological process.	0
3266	35480	2	Note that wybutosine is a hypermodified G-residue, formerly called the Y-base, and its derivatives are exclusively found at position 37 (anticodon loop) of tRNAPhe.	0
3267	35507	2	Note that this term should be used only for abortive mitotic events that occur normally, e.g. during megakaryocyte differentiation; it should not be used for incomplete mitosis resulting from mutation or other abnormal occurrences. Note that this term should not be confused with 'endomitotic cell cycle ; GO:0007113', which describes a process in which no mitotic spindle forms.	0
3268	35509	2	This term was added by GO_REF:0000021.	0
3269	35562	2	This term was made obsolete because 'error-prone' does not correspond to a repair mechanism, and the term has been superseded by more specific terms.	0
3270	35583	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'development of symbiont in host cell ; GO:0044118' and 'growth of symbiont in host cell ; GO:0044119'.	0
3271	35594	2	This term was added by GO_REF:0000021.	0
3272	35613	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3273	35615	2	This term was made obsolete because it does not represent a real biological process.	0
3274	35617	2	This term was made obsolete because it does not represent a real biological process.	0
3275	35619	2	This term was added by GO_REF:0000021.	0
3276	35628	2	This term was added by GO_REF:0000021.	0
3277	35633	2	This term was made obsolete because it represents a molecular function.	0
3278	35636	2	This term was added by GO_REF:0000021.	0
3279	35652	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3280	35659	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
3281	35670	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "negative regulation by host of symbiont G-protein coupled receptor protein signal transduction ; GO:0075089".	0
3282	35678	2	This term was added by GO_REF:0000021.	0
3283	35695	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3284	35698	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3285	35711	2	This term was added by GO_REF:0000021.	0
3286	35718	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3287	35725	2	This term was added by GO_REF:0000021.	0
3288	35728	2	This term was added by GO_REF:0000021.	0
3289	35734	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3290	35763	2	This term was added by GO_REF:0000021.	0
3291	35773	2	This term was made obsolete because cresol is not synthesized by living organisms, and GO does not cover non-biological processes.	0
3292	35783	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'growth of symbiont on or near host rhizosphere ; GO:0044137' and 'development of symbiont on or near host rhizosphere ; GO:0044136'.	0
3293	35787	2	This term was made obsolete because it has been split.	0
3294	35826	2	This term was made obsolete because low-density lipoprotein is a macromolecular complex, not a single class of molecule; its degradation involves the dissociation of non-covalently attached constituents as well as some breaking and reforming of covalent bonds.	0
3295	35833	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
3296	35838	2	Note that either or both mechanisms mentioned in the definition may be used in this process. Note that both granule release and the engagement of death receptors on target cells result in induction of apoptosis in the target cell.	0
3297	35858	2	Transmembrane transport requires transport of a solute across a lipid bilayer. Note that transport through the nuclear pore complex is not transmembrane because the nuclear membrane is a double membrane and is not traversed. For transport through the nuclear pore, consider instead the term 'nucleocytoplasmic transport ; GO:0006913' and its children.	0
3298	35872	2	Note that this term is used to annotate gene products of the symbiont.	0
3299	35874	2	This term was made obsolete because it was replaced by more specific terms.	0
3300	35879	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3301	35889	2	This term was added by GO_REF:0000022.	0
3302	35892	2	This term was added by GO_REF:0000021.	0
3303	35904	2	This term was added by GO_REF:0000021.	0
3304	35907	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3305	35912	2	This term was added by GO_REF:0000021.	0
3306	35913	2	This term was added by GO_REF:0000021.	0
3307	35914	2	This term was added by GO_REF:0000022.	0
3308	35915	2	This term was added by GO_REF:0000022.	0
3311	35964	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont signal transduction mediated by G-protein gamma subunit ; GO:0075097".	0
3312	35994	2	This term was added by GO_REF:0000021.	0
3313	35995	2	This term was added by GO_REF:0000021.	0
3314	36019	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'development during symbiotic interaction ; GO:0044111' and 'growth during symbiotic interaction ; GO:0044110'.	0
3315	36020	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3316	36027	2	Note that a lymphocyte is a cell of the B cell, T cell, or natural killer cell lineage (CL:0000542).	0
3317	36040	2	This term was added by GO_REF:0000021.	0
3318	36045	2	See also the fly_anatomy.ontology term 'wing hair ; FBbt:00004340'.	0
3319	36055	2	This term partially replaces the obsolete term 'modulation of growth or development of symbiont on or near host ; GO:0075305'. See also 'modulation of growth of symbiont on or near host ; GO:0044139'.	0
3320	36059	2	This term was made obsolete because it does not represent a real biological process.	0
3321	36067	2	Note that immunologists typically use the word 'maturation' to refer to dendritic cells undergoing the process that GO describes as 'cell differentiation'.	0
3322	36075	2	This term was made obsolete because it does not represent a real biological process.	0
3323	36082	2	Note that this term differs from 'cytokinesis ; GO:0000910' in that cytokinesis excludes nuclear division; in prokaryotes, there is little difference between cytokinesis and cell division. Note that there is no relationship between this term and 'nuclear division ; GO:0000280' because cell division can take place without nuclear division (as in prokaryotes) and vice versa (as in syncytium formation by mitosis without cytokinesis.	0
3324	36087	2	This term was made obsolete because 'tolerance' implies a phenotype rather than a biological process.	0
3325	36099	2	This term was added by GO_REF:0000021.	0
3326	36105	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
3327	36113	2	This term was made obsolete because more appropriate terms were created.	0
3328	36127	2	This term was added by GO_REF:0000022.	0
3329	36133	2	This term partially replaces the obsolete term 'regulation of growth or development of symbiont in host ; GO:0033665'. See also 'regulation of development of symbiont in host ; GO:0044127'.	0
3330	36142	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3331	36151	2	This term was added by GO_REF:0000021.	0
3332	36152	2	Note that a lymphocyte is a cell of the B cell, T cell, or natural killer cell lineage (CL:0000542).	0
3333	36170	2	This term was made obsolete because it violates the principle of positivity.	0
3334	36185	2	Note that this term is used to annotate gene products of the symbiont.	0
3335	36192	2	This term was made obsolete because this structure does not exist.	0
3336	36218	2	This term was improved by GO_REF:0000022. It was moved.	0
3337	36239	2	This term was added by GO_REF:0000021.	0
3338	36244	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3339	36247	2	This term was added by GO_REF:0000021.	0
3340	36296	2	This term was added by GO_REF:0000021.	0
3341	36305	2	This term was added by GO_REF:0000021.	0
3342	36325	2	This term was made obsolete because it does not represent a real biological process.	0
3343	36351	2	This term was added by GO_REF:0000021.	0
3344	36355	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3345	36371	2	This term was added by GO_REF:0000021.	0
3346	36387	2	Occurs in amphibia, cephalochordates, cyclostomes and cartilaginous fish.	0
3347	36392	2	This term was added by GO_REF:0000021.	0
3348	36401	2	Note that epinephrine and norepinephrine are ligands for the same receptors, and there are multiple adrenergic receptors.	0
3349	36403	2	This term was made obsolete because it relates to a specific gene family rather than a process.	0
3350	36409	2	Note that this term was split from 'di-, tri-valent inorganic cation homeostasis ; GO:0055066' (sibling term 'divalent inorganic cation homeostasis' ; GO:0072507').	0
3351	36430	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
3352	36463	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3353	36480	2	This term was made obsolete because it does not represent a real biological process.	0
3354	36496	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3355	36499	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3356	36505	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3357	36508	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3358	36514	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3359	36519	2	This term was made obsolete because it does not represent a valid biological process that occurs in nature.	0
3362	36537	2	This term was added by GO_REF:0000022.	0
3363	36546	2	This term was added by GO_REF:0000021.	0
3364	36547	2	This term was made obsolete because it represents a an abnormal process that is harmful to the organism.	0
3365	36551	2	This term was added by GO_REF:0000021.	0
3366	36573	2	This term was added by GO_REF:0000021.	0
3367	36574	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3368	36581	2	This term was made obsolete because 'heavy metal' is an ambiguous grouping term which has no set meaning (see Pure Appl. Chem. Vol. 74, No. 5, pp. 793-807, 2002, for more information).	0
3369	36618	2	This term was added by GO_REF:0000021.	0
3370	36625	2	Note that transport through the nuclear pore complex is not transmembrane because the nuclear membrane is a double membrane, and is not traversed.	0
3371	36674	2	This term was made obsolete because there is no evidence for the existence of this process.	0
3372	36686	2	This term was made obsolete because it does not represent a real biological process.	0
3373	36691	2	Note that this term is used to annotate gene products of the symbiont.	0
3374	36693	2	See also the biological process term 'blood coagulation, intrinsic pathway ; GO:0007597'.	0
3375	36698	2	This term was made obsolete because it is not clear what it is intended to represent.	0
3376	36722	2	This term was added by GO_REF:0000021.	0
3377	36748	2	This term was improved by GO_REF:0000022. It was moved.	0
3378	36749	2	Note that the synonym 'spore differentiation', like the term name and definition, refers to differentiation into a spore rather than any subsequent developmental changes that a spore may undergo.	0
3379	36752	2	This term was added by GO_REF:0000021.	0
3380	36754	2	This term was added by GO_REF:0000021.	0
3381	36775	2	This term was made obsolete because it does not represent a real process that exists in nature.	0
3382	36779	2	This term was added by GO_REF:0000021.	0
3383	36800	2	Bone mineralization can also occur after a fracture and as a response to stress; in these cases, consider using the term 'bone mineralization ; GO:0030282'.	0
3384	36801	2	This term was added by GO_REF:0000021.	0
3385	36817	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3386	36848	2	Note that this term should not be used to describe the invasion of host tissues by pathogenic organisms, which is described by the biological process term 'invasive growth', nor should it be used to describe growth of diseased cells of an organism into the surrounding normal tissue, which is outside of the scope of GO.	0
3387	36855	2	This term was added by GO_REF:0000021.	0
3388	36857	2	This term was made obsolete because it does not represent a real biological process.	0
3389	36867	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'modulation of development of symbiont during interaction with host ; GO:0044145' and 'modulation of growth of symbiont during interaction with host ; GO:0044144'.	0
3390	36868	2	This term was added by GO_REF:0000021.	0
3391	36889	2	Note that this term is intended for use in annotation of symbiont gene products. For host gene products that phosphorylate host proteins, consider annotation to 'protein amino acid phosphorylation ; GO:0006468'. Consider also annotation to the molecular function term 'protein kinase activity ; GO:0004672'.	0
3392	36894	2	This term was added by GO_REF:0000021.	0
3393	36897	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
3394	36913	2	Palmitoylation of a non-terminal serine residue always occurs on an oxygen (O) atom.	0
3395	36922	2	This term was made obsolete because its definition was inaccurate.	0
3396	36923	2	This term was added by GO_REF:0000021.	0
3397	36924	2	Note that a thymocyte is an immature T cell located in the thymus (CL:0000893).	0
3398	36952	2	Note that this term was split from 'negative regulation of intermediate filament polymerization and/or depolymerization ; GO:0045825' (sibling term 'negative regulation of intermediate filament polymerization ; GO:0030840').	0
3399	36961	2	This term was added by GO_REF:0000021.	0
3400	36965	2	This term partially replaces the obsolete term 'modulation of growth or development of symbiont during interaction with host ; GO:0075338'. See also 'modulation of growth of symbiont during interaction with host ; GO:0044144'.	0
3401	36968	2	This term was made obsolete because it represents a process that is not known to occur.	0
3402	36977	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, trophectoderm ; EMAP:19', 'TS5, trophectoderm ; EMAP:28' and 'TS6, trophectoderm ; EMAP:39'.	0
3403	36992	2	Note that the syntax of the definition of the this term is different from the usual regulation syntax because it describes regulation of a trait rather than regulation of a process.	0
3404	37008	2	This term was made obsolete because it does not represent a real biological process.	0
3405	37018	2	This term was added by GO_REF:0000021.	0
3406	37026	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont transmembrane receptor-mediated cAMP signal transduction ; GO:0075084".	0
3407	37043	2	This term was made obsolete because it represents a molecular function.	0
3408	37063	2	This term was added by GO_REF:0000021.	0
3409	37066	2	This term was made obsolete because it does not represent a real biological process.	0
3410	37069	2	This term was added by GO_REF:0000021.	0
3411	37077	2	This term was made obsolete because it does not represent a real biological process.	0
3512	38251	2	This term was added by GO_REF:0000021.	0
3513	38261	2	This term was added by GO_REF:0000021.	0
3412	37084	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3413	37108	2	This term was added by GO_REF:0000021.	0
3414	37114	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
3415	37126	2	This term was added by GO_REF:0000021.	0
3416	37166	2	This term was added by GO_REF:0000021.	0
3417	37172	2	This term was made obsolete because it does not represent a real biological process.	0
3418	37202	2	Note that bacterial lipopeptides are derived from bacterial lipoproteins, but the two terms are sometimes used interchangeably in the literature.	0
3419	37203	2	SOCE is initiated by response to stiumlation of membrane receptors leading to the hydrolysis ofphosphatidylinositol bisphosphate (PIP2), inositol 1,4,5-trisphosphate (IP3) generation, and IP3-mediated calcium ion release from the endoplasmic reticulum.	0
3420	37214	2	This term was made obsolete because it represents a function rather than a process.	0
3421	37221	2	This term was added by GO_REF:0000021.	0
3422	37222	2	This term was made obsolete because it was replaced by more specific terms.	0
3423	37225	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3424	37227	2	This term was made obsolete because it is a gene product specific term.	0
3425	37238	2	Note that this term refers to xanthophores in the sense of specialized pigment-producing cells, and should not be confused with the cellular component term 'xanthophore ; GO:0031633', which refers to a subcellular structure.	0
3426	37249	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host cAMP-mediated signal transduction ; GO:0075208".	0
3427	37258	2	This term was added by GO_REF:0000021.	0
3428	37261	2	This term was added by GO_REF:0000021.	0
3429	37270	2	Note that this predicted modification is now thought not to exist. See the biological process term 'peptide cross-linking via 2-imino-methionine 5-imidazolinone glycine ; GO:0051359'.	0
3430	37289	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "negative regulation by host of symbiont protein kinase-mediated signal transduction ; GO:0075101".	0
3431	37305	2	This term was made obsolete because a more appropriate term was created.	0
3432	37332	2	This term was added by GO_REF:0000021.	0
3433	37337	2	This term was added by GO_REF:0000021.	0
3434	37339	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
3435	37350	2	This term was added by GO_REF:0000021.	0
3436	37383	2	See also the fly_anatomy.ontology terms 'ring gland ; FBbt:00001722, 'prothoracic gland ; FBbt:00001724', 'corpus allatum ; FBbt:00005800' and 'corpus cardiacum ; FBbt:00005799.	0
3437	37427	2	This term was made obsolete because the term is no longer needed.	0
3438	37429	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
3439	37432	2	This term was made obsolete because it was undefined and because there is no common mechanism of establishment of dosage compensation in different organisms.	0
3440	37459	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host signal transduction mediated by G-protein beta subunit ; GO:0075125".	0
3441	37470	2	This term was made obsolete because it relates to a specific gene family rather than a process.	0
3442	37486	2	Note that this term and its definition depart from the usual conventions for GO 'regulation' process terms; regulation of rate is not usually distinguished from regulation of extent or frequency, but it makes sense to do so for growth regulation.	0
3443	37499	2	This term was added by GO_REF:0000021.	0
3444	37527	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host signal transduction mediated by G-protein alpha subunit ; GO:0075121".	0
3445	37538	2	This term was added by GO_REF:0000021.	0
3446	37545	2	This term was added by GO_REF:0000021.	0
3447	37572	2	This term was added by GO_REF:0000021.	0
3448	37573	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont calcium or calmodulin-mediated signal transduction ; GO:0075104".	0
3449	37578	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host G-protein coupled receptor protein signal transduction ; GO:0075118".	0
3450	37582	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
3451	37592	2	This term was added by GO_REF:0000021.	0
3452	37598	2	Note that this term has no relationship to 'membrane disassembly ; GO:0030397' because the basement membrane is not a lipid bilayer.	0
3453	37599	2	This term was added by GO_REF:0000021.	0
3454	37604	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3455	37606	2	This term was made obsolete because more appropriate terms were created.	0
3456	37629	2	Note that this term should not be confused with the molecular function term 'Rab GTPase activator activity ; GO:0005097', which refers specifically to the activity of Rab GAPs.	0
3457	37634	2	Note that this term is used to annotate gene products of the symbiont.	0
3601	39247	2	This term was added by GO_REF:0000021.	0
3458	37643	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3459	37649	2	This term was made obsolete because it does not describe a biological process.	0
3460	37663	2	Note that this term is a child of 'actin cytoskeleton organization and biogenesis ; GO:0030036' because the actin cytoskeleton is defined as actin filaments and associated proteins.	0
3461	37666	2	This term was made obsolete because there is no evidence that this process is unique to Saccharomyces.	0
3462	37678	2	This term was made obsolete because it does not represent a real biological process.	0
3463	37718	2	Note that this term is used to annotate gene products of the symbiont.	0
3464	37724	2	Note that this term is used to annotate gene products of the symbiont.	0
3465	37748	2	This term was added by GO_REF:0000021.	0
3466	37755	2	This term was made obsolete because it was replaced by more specific terms.	0
3467	37760	2	This term was added by GO_REF:0000021.	0
3468	37761	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3469	37771	2	Note that this term does not fall under the general GO definition for biosynthetic processes, which is 'The chemical reactions and pathways resulting in the formation of... ', because thyroid hormones can only be formed by the proteolysis of a larger molecule (see term definition). The word 'generation' is therefore used in place of biosynthesis.	0
3470	37782	2	This term was made obsolete because more appropriate terms were created.	0
3471	37784	2	This term was made obsolete because it represents a function.	0
3472	37801	2	This term was added by GO_REF:0000021.	0
3473	37821	2	This term was made obsolete because 2-nitropropane is not synthesized by living organisms, and GO does not cover non-biological processes.	0
3474	37832	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host calcium or calmodulin-mediated signal transduction ; GO:0075134".	0
3475	37852	2	This term was made obsolete because it does not represent a real biological process.	0
3476	37855	2	These processes continue up to 3 days post-anthesis (DPA) in Gossypium spp.	0
3477	37858	2	This term was made obsolete because it does not represent a real biological process.	0
3478	37871	2	This term was added by GO_REF:0000021.	0
3479	37894	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3480	37914	2	This term was made obsolete because it is a gene product specific term.	0
3481	37921	2	This term was added by GO_REF:0000021.	0
3482	37926	2	This term was added by GO_REF:0000021.	0
3483	37928	2	This term was made obsolete because it does not represent a real biological process.	0
3484	37964	2	This term was added by GO_REF:0000021.	0
3485	37968	2	Note that this term refers to a geometric change in DNA conformation, and should not be confused with 'DNA topological change ; GO:0006265'.	0
3486	37973	2	This term was made obsolete because it is an amalgamation of its two children.	0
3487	37981	2	This term was added by GO_REF:0000021.	0
3488	37989	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
3489	37990	2	This term was added by GO_REF:0000021.	0
3490	38002	2	This term was made obsolete because it does not represent a real biological process.	0
3491	38018	2	This term was made obsolete because it does not represent a real biological process.	0
3492	38020	2	See also the Anatomical Dictionary for Mouse Development ontology term 'TS3, compacted morula ; EMAP:9'.	0
3493	38040	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3494	38047	2	This term was added by GO_REF:0000021.	0
3495	38050	2	This term was added by GO_REF:0000021.	0
3496	38096	2	This term was made obsolete because it represents a function rather than a process.	0
3497	38107	2	See also the biological process terms 'DNA-dependent DNA replication ; GO:0006261' and 'RNA-dependent DNA replication ; GO:0006278'.	0
3498	38116	2	This term was added by GO_REF:0000021.	0
3499	38138	2	This term was made obsolete because it represents a molecular function.	0
3500	38150	2	This term was made obsolete because it does not represent a real biological process.	0
3501	38158	2	This term was added by GO_REF:0000021.	0
3502	38175	2	This term was made obsolete because it refers to a one-step pathway.	0
3503	38177	2	This term was made obsolete because it represents a phenotype.	0
3504	38179	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host receptor-mediated signal transduction ; GO:0075109".	0
3505	38181	2	This term was made obsolete because the process is not exclusive to the carboxy terminus of a protein.	0
3506	38191	2	This term was made obsolete because it is a gene product specific term.	0
3507	38192	2	This term was made obsolete because it does not represent a real biological process.	0
3508	38227	2	This term was made obsolete because it does not represent a real biological process.	0
3509	38237	2	This term was made obsolete because it was wrongly defined.	0
3510	38241	2	This term was made obsolete because it contains gene product and species specific information.	0
3511	38248	2	Note that the synonym 'monopolar attachment' refers to the normal attachment of sister chromosomes to the spindle in meiosis I, and not to the aberrant attachment of sister kinetochores to a single pole in mitosis.	0
3514	38264	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3515	38279	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
3516	38283	2	This term partially replaces the obsolete term 'growth or development on or near surface of other organism during symbiotic interaction ; GO:0051827'. See also 'growth on or near surface of other organism during symbiotic interaction ; GO:0044153'.	0
3517	38295	2	This term was added by GO_REF:0000021.	0
3518	38296	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
3519	38299	2	Note that 'vectorial' is used in the definition in the mathematical and physical sense of pertaining to 'a quantity having direction as well as magnitude, especially as determining the position of one point in space relative to another. Note that 'translocation' is sometimes used in the literature to refer to the entire process of protein import into the nucleus, but in GO refers specifically to the step in which a cargo-carrier protein complex moves through the nuclear pore complex.	0
3520	38313	2	This term was made obsolete because 2,4,6-trinitrotoluene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
3521	38315	2	See also the biological process term 'behavior ; GO:0007610'.	0
3522	38329	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3523	38339	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3524	38340	2	This term was added by GO_REF:0000021.	0
3525	38349	2	This term was added by GO_REF:0000021.	0
3526	38354	2	This term was added by GO_REF:0000021.	0
3527	38372	2	This term partially replaces the obsolete term 'negative regulation of growth or development of symbiont in host ; GO:0033667'. See also 'negative regulation of growth of symbiont in host ; GO:0044130'.	0
3528	38384	2	This term was added by GO_REF:0000021.	0
3529	38388	2	This term was made obsolete because it represents a group of molecular functions.	0
3530	38391	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
3531	38398	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3532	38401	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3533	38407	2	This term was made obsolete because it describes a substrate-specific process.	0
3534	38413	2	This term was added by GO_REF:0000021.	0
3535	38415	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'development of symbiont in host ; GO:0044114' and 'growth of symbiont in host ; GO:0044117'.	0
3536	38416	2	See also the molecular function term 'tubulin N-acetyltransferase activity ; GO:0019799'.	0
3537	38417	2	Note that immunologists typically use the word 'maturation' to refer to dendritic cells undergoing the process that GO describes as 'cell differentiation'.	0
3538	38423	2	This term was added by GO_REF:0000021.	0
3539	38447	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host adenylate cyclase-mediated signal transduction; GO:0075336".	0
3540	38466	2	Note that a lymphocyte is a cell of the B cell, T cell, or natural killer cell lineage (CL:0000542).	0
3541	38467	2	This term was added by GO_REF:0000021.	0
3542	38472	2	This term was made obsolete because the string was ambiguous and the original meaning of the term was hence unknown.	0
3543	38475	2	This term was made obsolete because it does not describe a biological process that is distinct from 'cell aging'.	0
3544	38480	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3545	38488	2	Note that this term was split from 'cellular di-, tri-valent inorganic cation homeostasis ; GO:0030005' (sibling term 'cellular divalent inorganic cation homeostasis' ; GO:0072503').	0
3546	38516	2	Note that this term is used to annotate gene products of the symbiont.	0
3547	38544	2	Note that this term is not a child of 'co-translational protein modification process ; GO:0043686' because co-translational protein modification implies modification of a previously incorporated amino acid in a nascent chain, rather than addition of new sequence to the C-terminus.	0
3548	38545	2	This term was made obsolete because it is a gene product specific term.	0
3549	38546	2	This term was added by GO_REF:0000022.	0
3550	38552	2	This term was added by GO_REF:0000021.	0
3551	38585	2	This term was added by GO_REF:0000021.	0
3552	38586	2	This term partially replaces the obsolete term 'growth or development of symbiont on or near host phyllosphere ; GO:0075013'. See also 'development of symbiont on or near host phyllosphere ; GO:0044134'.	0
3553	38609	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
3554	38614	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
3555	38626	2	This term was made obsolete because the term name is ambiguous and appears to encompass two processes.	0
3556	38657	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3557	38664	2	This term was added by GO_REF:0000021.	0
3558	38679	2	Note that this term is used to annotate gene products of the symbiont.	0
3600	39210	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term 'plant-type hypersensitive response ; GO:0009626'.	0
3559	38685	2	Note that although the many U12-type introns have the sequence AT-AC at the intron termini, some introns with these terminal sequences are spliced by the U2-type spliceosome. The distinguishing characteristics are sequences near the 5' splice site and the branch point sequences of the intron. Note that although the majority of U2-type introns have the sequence GU-AG at the intron termini, some introns with these terminal sequences are spliced by the U12-type spliceosome. The distinguishing characteristics are sequences near the 5' splice site and the branch point sequences of the intron.	0
3560	38733	2	This term was made obsolete because NEDD8-class tags do not target proteins for proteolytic destruction.	0
3561	38745	2	This term was made obsolete because it was replaced by more specific terms.	0
3562	38749	2	This term was made obsolete because it does not represent a real biological process.	0
3563	38761	2	See also the biological process terms 'viral infectious cycle ; GO:0019058' and 'lysogeny ; GO:0030069'.	0
3564	38762	2	This term was added by GO_REF:0000021.	0
3565	38763	2	Note that promoter clearance is represented as a separate step, not part_of either initiation or elongation.	0
3566	38798	2	This term was made obsolete because more specific terms were created.	0
3567	38813	2	The reason for obsoletion is that the term is confusing - it sounds developmental and has a developmental sounding def, but it is not a child of developmental process and its children included 'cellular component assembly'. The term was created to group together 'cellular component assembly' and 'anatomical structure formation involved in morphogenesis', but we no longer feel that this grouping is useful.	0
3568	38825	2	This term was added by GO_REF:0000021.	0
3569	38833	2	See also the biological process term 'nonribosomal peptide biosynthetic process ; GO:0019184'.	0
3570	38845	2	The term 'RNA editing' (GO:0016547) was merged into 'RNA modification' (GO:0009451) on the basis of statements in the preface of Modification and Editing of RNA (ISBN:1555811337) that there is no clear distinction between modification and editing. Parallel changes were made for substrate (e.g. tRNA, rRNA, etc.) specific child terms of 'RNA editing'.	0
3571	38858	2	This term partially replaces the obsolete term 'growth or development during symbiotic interaction ; GO:0052171'. See also 'growth during symbiotic interaction ; GO:0044110'.	0
3572	38864	2	This term was made obsolete because more accurate terms were created.	0
3573	38866	2	Note that this term is used to annotate gene products of the symbiont.	0
3574	38868	2	See also the biological process term 'neurotransmitter metabolic process ; GO:0042133'.	0
3575	38880	2	Note that this term is used to annotate gene products of the symbiont.	0
3576	38889	2	This term was made obsolete because it was a grouping term that was poorly defined and did not provide a particularly meaningful grouping, since even for those amino acids commonly found in proteins, not all molecules necessarily end up incorporated into proteins. The term also violated the principle of positivity.	0
3577	38891	2	See also the cellular component term 'polysome ; GO:0005844'.	0
3578	38898	2	This term was made obsolete because there is no clear difference between the sensu Insecta term and the generic term.	0
3579	38905	2	Note that this term has no relationship to 'membrane assembly ; GO:0071709' because the basement membrane is not a lipid bilayer.	0
3580	38915	2	This term should be used with caution, and only used when the signaling between cells has been clearly distinguished from paracrine signaling.	0
3581	38948	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont signal transduction mediated by G-protein beta subunit ; GO:0075093".	0
3582	38978	2	This term was improved by GO_REF:0000022. It was renamed and redefined.	0
3583	38985	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3584	39013	2	This term was made obsolete because a more correct term has been created.	0
3585	39026	2	Note that this term should not be confused with 'abortive mitotic cell cycle ; GO:0033277'. Although abortive mitosis is sometimes called endomitosis, GO:0033277 refers to a process in which a mitotic spindle forms and chromosome separation begins.	0
3586	39065	2	This term was made obsolete because it contains gene product and species specific information.	0
3587	39071	2	Note that this process has been observed in some archeal and bacterial species.	0
3588	39078	2	Note that term is to be used to annotate gene products in the symbiont. To annotate host gene products, consider the biological process term 'negative regulation of apoptosis ; GO:0043066'.	0
3589	39087	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3590	39095	2	Note that this term represents the return of mast cell levels to stable numbers following an immune response as well as the proliferation and elimination of mast cells required to maintain stable numbers in the absence of an outside stimulus.	0
3591	39105	2	This term was added by GO_REF:0000021.	0
3592	39121	2	See also the biological process term 'behavior ; GO:0007610'.	0
3593	39158	2	This term was made obsolete because there is no clear difference between the sensu Insecta term and the generic term.	0
3594	39163	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3595	39177	2	Note that bacterial lipopeptides are derived from bacterial lipoproteins, but the two terms are sometimes used interchangeably in the literature.	0
3596	39179	2	Note that this term is used to annotate gene products of the symbiont.	0
3597	39187	2	See also the biological process term 'locomotory behavior ; GO:0007626'.	0
3598	39190	2	This term should only be used to annotate a protein modification process that occurs after the start of translation but while the protein is still on the ribosome.	0
3599	39192	2	This term was added by GO_REF:0000021.	0
3602	39256	2	This term was made obsolete because it does not represent a real biological process.	0
3603	39258	2	This term was added by GO_REF:0000021.	0
3604	39269	2	This term was made obsolete because its definition is very similar to that of its parent term, actin cortical patch localization (GO:0051666), but somewhat unclear, and not similar enough to merge the terms.	0
3605	39289	2	This term was added by GO_REF:0000021.	0
3606	39301	2	This term was made obsolete because methyl ethyl ketone is not synthesized by living organisms and GO does not cover non-biological processes.	0
3607	39313	2	This term was made obsolete because 'short patch' is a relative statement, often used ambiguously, and does not necessarily represent a process; the processes it can stand for are base excision repair, nucleotide excision repair, transcription-coupled nucleotide excision repair, and mismatch repair.	0
3608	39331	2	Note that the syntax of the definition of the this term is different from the usual regulation syntax because it describes regulation of a trait rather than regulation of a process.	0
3609	39360	2	This term was made obsolete because eye photoreceptors have completed their development by the time the adult phase begins.	0
3610	39369	2	This term was added by GO_REF:0000021.	0
3611	39380	2	This term was made obsolete because its use of 'and' was causing violations to the true-path rule.	0
3612	39386	2	Note that IL-28A, IL-28B, and IL-29 are types of interferon-lambda.	0
3613	39389	2	This term was made obsolete because it has been replaced by more specific terms.	0
3614	39391	2	Note that either or both mechanisms mentioned in the definition may be used in this process. Note that both granule release and the engagement of death receptors on target cells result in induction of apoptosis in the target cell.	0
3615	39397	2	Note that a lymphocyte is a cell of the B cell, T cell, or natural killer cell lineage (CL:0000542).	0
3616	39415	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'growth of symbiont during interaction with host ; GO:0044116' and 'development of symbiont during interaction with host ; GO:0044115'.	0
3617	39432	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3618	39433	2	This term was added by GO_REF:0000021.	0
3619	39450	2	See also the cellular component term 'viral scaffold ; GO:0046806'.	0
3620	39451	2	This term was added by GO_REF:0000021.	0
3621	39452	2	This term was added by GO_REF:0000021.	0
3622	39457	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3623	39470	2	This term was made obsolete because it does not represent a real biological process.	0
3624	39471	2	Note that this type of immune receptor has been found in snails (Pulmonata, ncbi_axonomy_id:6519), but may also be seen in other species.	0
3625	39472	2	This term was made obsolete because it does not represent a real biological process.	0
3626	39480	2	This term was added by GO_REF:0000021.	0
3627	39497	2	This term was added by GO_REF:0000021.	0
3628	39513	2	This term was made obsolete because it is a substrate specific DNA repair process.	0
3629	39519	2	This term was made obsolete because it is unnecessary in the OBO flat file format.	0
3630	39530	2	This term was made obsolete because it is a gene product specific term.	0
3631	39538	2	Note that epinephrine and norepinephrine are ligands for the same receptors, and there are multiple adrenergic receptors.	0
3632	39542	2	This term was added by GO_REF:0000021.	0
3633	39546	2	This term was made obsolete because it was not clear whether the term applied to the whole process of taste perception or just the sensory transduction stage.	0
3634	39548	2	This term was added by GO_REF:0000021.	0
3635	39582	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "negative regulation by host of symbiont adenylate cyclase activity ; GO:0075077".	0
3636	39596	2	This term was made obsolete because it is a gene product specific term.	0
3637	39622	2	This term was made obsolete because it covers multiple processes and is now covered by more specific terms.	0
3638	39623	2	This term was made obsolete because it is a gene product specific term.	0
3639	39630	2	Note that this term is used to annotate gene products of the symbiont.	0
3640	39635	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3641	39648	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3642	39650	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont cAMP-mediated signal transduction ; GO:0075206".	0
3643	39657	2	This term was made obsolete because low-density lipoprotein is a macromolecular complex, not a single class of molecule; its degradation involves the dissociation of non-covalently attached constituents as well as some breaking and reforming of covalent bonds.	0
3644	39658	2	This term was made obsolete because pentachlorophenol is not synthesized by living organisms and GO does not cover non-biological processes.	0
3645	39661	2	Note that this term is used to annotate gene products of the symbiont.	0
3646	39670	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host protein kinase-mediated signal transduction ; GO:0075132".	0
3647	39680	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3648	39685	2	This term was added by GO_REF:0000021.	0
3649	39686	2	This term was added by GO_REF:0000021.	0
3650	39690	2	This term was added by GO_REF:0000021.	0
3651	39695	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3652	39696	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3653	39697	2	This term was made obsolete because its definition was equivalent to that of the biological process term 'mitochondrial matrix protein import ; GO:0030150' while the mitochondrial translocation has a broader meaning; this led to mis-annotation.	0
3654	39701	2	This term was added by GO_REF:0000021.	0
3655	39709	2	This term was added by GO_REF:0000022.	0
3656	39712	2	Note that this term was 'fate specification in mesoderm'. String of term was changed to correspond to format of sibling terms 'endoderm cell fate specification' and 'ectoderm cell fate specification'.	0
3657	39714	2	Note that it is speculated that higher eukaryotic YTH-family protein may be involved in similar mechanisms to supress gene regulation during gametogenesis or general silencing.	0
3658	39717	2	This term partially replaces the obsolete term 'growth or development of symbiont in host intercellular space ; GO:0075067'. See also 'development of symbiont in host intercellular space ; GO:0044124'.	0
3659	39726	2	This term was made obsolete because it does not represent a real biological process.	0
3660	39750	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3661	39753	2	This term was added by GO_REF:0000021.	0
3662	39772	2	See also the biological process term 'site-specific replication termination ; GO:0071170' and its children.	0
3663	39773	2	This term was made obsolete because 'sensitivity/resistance' implies a phenotype rather than a biological process.	0
3664	39777	2	This term was made obsolete because it does not describe a biological process.	0
3665	39784	2	This term was made obsolete because it does not represent a real process that exists in nature.	0
3666	39787	2	Note that this term refers to breakage of chromosomes during normal DNA rearrangements characteristic of ciliates; it is not to be used for DNA damage or other abnormal occurrences.	0
3667	39796	2	This term was added by GO_REF:0000021.	0
3668	39857	2	Note that this term refers to the proliferation of previously activated T cells; it is to be used for gene products involved in T cell proliferation following an antigenic stimulus, including both proteins internal to the T cell and external factors, such as IL-2, which specifically promote proliferation of activated T cells.	0
3669	39868	2	This term was added by GO_REF:0000021.	0
3670	39872	2	This term was made obsolete because the term is misleading.	0
3671	39873	2	This term was added by GO_REF:0000021.	0
3672	39888	2	This term was made obsolete because it was wrongly defined.	0
3673	39892	2	Note that this is a generic parent because the identity of the second amino acid is not critical for formation of the cross-link.	0
3674	39895	2	See also the Cell Ontology term 'pole cell ; CL:0000301'.	0
3675	39901	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
3676	39918	2	Note that this term is used to annotate gene products of the symbiont.	0
3677	39921	2	This term was added by GO_REF:0000021.	0
3678	39924	2	This term was added by GO_REF:0000021.	0
3679	39932	2	This term was made obsolete because it represents a function rather than a process.	0
3680	39933	2	This term was added by GO_REF:0000021.	0
3681	39940	2	Note that this term refers only to the specific, original 'tumor necrosis factor' protein (TNF) and not other members of the tumor necrosis factor superfamily (those with the gene symbol root 'TNFSF').	0
3682	39952	2	This term was made obsolete because there is no clear difference between the sensu Drosophila term and the generic term.	0
3683	39963	2	This term was added by GO_REF:0000021.	0
3684	39977	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host receptor-mediated signal transduction ; GO:0075111".	0
3685	39980	2	This term was added by GO_REF:0000021.	0
3686	39981	2	This term partially replaces the obsolete term 'growth or development of symbiont in host organelle ; GO:0075066'. See also 'development of symbiont in host organelle ; GO:0044120'.	0
3687	40003	2	This term was added by GO_REF:0000022. Note that the vertebrate toll-like receptors, unlike the Drosophila Toll molecule, directly bind their ligands. The Drosophila Toll molecule requires the Sptzle factor to bind microbial ligands and then the receptor in order to initiate innate immune responses.	0
3688	40038	2	This term was made obsolete because it is describing a binding molecular function.	0
3689	40056	2	This term was added by GO_REF:0000021.	0
3690	40059	2	Note that the syntax of the definition of the this term is different from the usual regulation syntax because it describes regulation of a trait rather than regulation of a process.	0
3691	40086	2	This term was added by GO_REF:0000021.	0
3692	40098	2	Note that this term was 'cell fate determination' but the term name was changed to better match its existing definition and the child term 'cell fate determination; GO:0001709' was also created.	0
3693	40125	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host adenylate cyclase-mediated signal transduction; GO:0075336".	0
3694	40162	2	This term was added by GO_REF:0000021.	0
3695	40182	2	This term was added by GO_REF:0000022.	0
4362	47515	2	This term was added by GO_REF:0000021.	0
3696	40200	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3697	40213	2	This term was added by GO_REF:0000021.	0
3698	40214	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3699	40216	2	This term was added by GO_REF:0000021.	0
3700	40230	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3701	40252	2	This term was added by GO_REF:0000021.	0
3702	40259	2	This term was made obsolete because 'tolerance' implies a phenotype rather than a biological process.	0
3703	40261	2	This term was made obsolete because it is a gene product specific term.	0
3704	40262	2	Desmosomes link two cells together; hemidesmosomes attach one cell to the extracellular matrix.	0
3705	40263	2	This term was made obsolete because it is an unnecessary grouping term and was poorly defined.	0
3706	40275	2	This term was made obsolete because it describes a substrate-specific process.	0
3707	40283	2	Note that this term was split from 'cellular di-, tri-valent inorganic cation homeostasis ; GO:0030005' (sibling term 'cellular trivalent inorganic cation homeostasis' ; GO:0072504').	0
3708	40290	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3709	40306	2	This term was added by GO_REF:0000021.	0
3710	40313	2	This term was made obsolete because "nutrient" is not defined, and does not have a consistent meaning.	0
3711	40321	2	This term was added by GO_REF:0000021.	0
3712	40322	2	This term was made obsolete because it is a gene product specific term.	0
3713	40324	2	This term can be used for annotation of structures like the parasitophorous vacuole which are symbiont induced but entirely host-derived, as well as structures like the stylet which are entirely symbiont-derived.	0
3714	40336	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3715	40343	2	This term was made obsolete because 2,4-dichlorobenzoate is not synthesized by living organisms, and GO does not cover non-biological processes.	0
3716	40351	2	This term was added by GO_REF:0000021.	0
3717	40390	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3718	40402	2	This term partially replaces the obsolete term 'positive regulation of growth or development of symbiont in host ; GO:0033666'. See also 'positive regulation of development of symbiont in host ; GO:0044129'.	0
3719	40404	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont G-protein coupled receptor protein signal transduction ; GO:0075087".	0
3720	40411	2	This term was added by GO_REF:0000021.	0
3721	40419	2	This term was made obsolete because its definition was inaccurate.	0
3722	40426	2	This term was added by GO_REF:0000021.	0
3723	40427	2	This term was added by GO_REF:0000021.	0
3724	40429	2	This term was added by GO_REF:0000021.	0
3725	40437	2	This term was added by GO_REF:0000022.	0
3726	40464	2	See also the fly_anatomy.ontology term 'Malpighian tubule ; FBbt:00005786'.	0
3727	40493	2	This term was added by GO_REF:0000022.	0
3728	40502	2	This term was made obsolete because it does not represent a real process that exists in nature.	0
3729	40516	2	This term was made obsolete because it was wrongly defined.	0
3730	40519	2	This term was added by GO_REF:0000021.	0
3731	40523	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
3732	40528	2	This term was added by GO_REF:0000021.	0
3733	40535	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host adenylate cyclase activity ; GO:0075107".	0
3734	40543	2	This term was added by GO_REF:0000021.	0
3735	40550	2	This term was intentionally placed under 'protein metabolic process ; GO:0019538' rather than 'protein catabolic process ; GO:0030163' to cover all processes centered on breaking peptide bonds, including those involved in protein maturation.	0
3736	40559	2	This term was made obsolete because "nutrient" is not defined, and does not have a consistent meaning.	0
3737	40565	2	Note that this process most commonly occurs in cis, selecting or skipping exons from the same primary transcript, but it has also been observed to occur in trans at low frequency, at least in some mammals.	0
3738	40591	2	Note that this term is used to annotate gene products of the symbiont.	0
3739	40604	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3740	40645	2	This term was made obsolete because it has been split.	0
3741	40657	2	Note that bacterial lipopeptides are derived from bacterial lipoproteins, but the two terms are sometimes used interchangeably in the literature.	0
3742	40671	2	Note that this term was split from 'di-, tri-valent inorganic cation homeostasis ; GO:0055066' (sibling term 'trivalent inorganic cation homeostasis' ; GO:0072508').	0
3743	40684	2	This term was added by GO_REF:0000021.	0
3744	40688	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'negative regulation of development of symbiont in host ; GO:0044131' and 'negative regulation of growth of symbiont in host ; GO:0044130'.	0
3745	40698	2	This term was added by GO_REF:0000021.	0
3746	40710	2	This term was added by GO_REF:0000021.	0
3747	40720	2	This term was made obsolete because its definition was inaccurate.	0
3748	40731	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3749	40749	2	This term was added by GO_REF:0000021.	0
3750	40753	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
3751	40770	2	This term was added by GO_REF:0000021.	0
3752	40773	2	This term was made obsolete because it contains gene product and species specific information.	0
3753	40787	2	This term was made obsolete because its meaning was changed significantly.	0
3754	40797	2	This term was made obsolete because it represents two separate processes (insertion and deletion).	0
3755	40802	2	This term was added by GO_REF:0000021.	0
3756	40805	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3757	40816	2	This term partially replaces the obsolete term 'negative regulation of growth or development of symbiont on or near host surface ; GO:0075309'. See also 'negative regulation of growth of symbiont on or near host surface ; GO:0044140'.	0
3758	40817	2	Note that a thymocyte is an immature T cell located in the thymus (CL:0000893).	0
3759	40823	2	This term was added by GO_REF:0000021.	0
3760	40831	2	This term was added by GO_REF:0000021.	0
3761	40832	2	Note that currently, the only known substrates of neddylation are cullin family proteins.	0
3762	40842	2	This term was added by GO_REF:0000021.	0
3763	40846	2	This term was added by GO_REF:0000021.	0
3764	40888	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3765	40894	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont signal transduction mediated by G-protein gamma subunit ; GO:0075096".	0
3766	40917	2	This term was added by GO_REF:0000021.	0
3767	40931	2	This term was added by GO_REF:0000021.	0
3768	40957	2	This term was made obsolete because it was wrongly defined.	0
3769	40973	2	This term was made obsolete because NEDD8-class tags do not target proteins for proteolytic destruction.	0
3770	40988	2	This term was added by GO_REF:0000021.	0
3771	40997	2	Note that 'translocation' is sometimes used in the literature to refer to the entire process of protein import into the nucleus, but in GO refers specifically to the step in which a cargo-carrier protein complex moves through the nuclear pore complex.	0
3772	41026	2	This term was made obsolete because it does not represent a real biological process.	0
3773	41072	2	This term was added by GO_REF:0000021.	0
3774	41082	2	Occurs in Teleost fish.	0
3775	41100	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3776	41110	2	Note that this term refers only to the specific, original 'tumor necrosis factor' protein (TNF) and not other members of the tumor necrosis factor superfamily (those with the gene symbol root 'TNFSF').	0
3777	41111	2	This term partially replaces the obsolete term 'growth or development of symbiont on or near host rhizosphere ; GO:0075014'. See also 'development of symbiont on or near host rhizosphere ; GO:0044136'.	0
3778	41134	2	Note that this term was split from 'negative regulation of actin polymerization and/or depolymerization ; GO:0045757' (sibling term 'negative regulation of actin depolymerization ; GO:0030835').	0
3779	41139	2	Note that this term was 'developmental process'.	0
3780	41144	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3781	41179	2	Note that this term refers only to the specific, original 'tumor necrosis factor' protein (TNF) and not other members of the tumor necrosis factor superfamily (those with the gene symbol root 'TNFSF').	0
3782	41183	2	This term was made obsolete because it was incorrectly defined.	0
3783	41201	2	This term was added by GO_REF:0000021.	0
3784	41209	2	This term was made obsolete because it was an unnecessary grouping term.	0
3785	41214	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3786	41215	2	This term was added by GO_REF:0000021.	0
3787	41220	2	See also the molecular function term 'tubulin-tyrosine ligase activity ; GO:0004835'.	0
3788	41222	2	This term was added by GO_REF:0000021.	0
3789	41228	2	This term was made obsolete because there is no evidence for the existence of this process.	0
3790	41233	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3791	41237	2	See also the biological process term 'behavior ; GO:0007610'.	0
3792	41279	2	This term partially replaces the obsolete term 'growth or development of symbiont during interaction with host ; GO:0052108'. See also 'development of symbiont during interaction with host ; GO:0044115'.	0
3793	41299	2	This term partially replaces the obsolete term 'growth or development of symbiont during interaction with host ; GO:0052108'. See also 'growth of symbiont during interaction with host ; GO:0044116'.	0
3794	41307	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
3795	41311	2	This term was added by GO_REF:0000021.	0
3796	41316	2	This term was added by GO_REF:0000021.	0
3797	41320	2	This term was added by GO_REF:0000021.	0
3798	41326	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
3799	41331	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
3800	41338	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3801	41347	2	In Salmonella typhimurium, 2-methylthio-N-6-(cis-hydroxy)isopentenyl adenosine (ms2io6A; also referred to as 2-methylthio cis-ribozeatin) is found in tRNA, most likely in the species that have ms2i6A in E. coli.	0
3802	41350	2	Note that this term should not be confused with the usage of 'blastospore' to mean any yeast-form fungal cell, as in Candida species.	0
3803	41366	2	This term was added by GO_REF:0000021.	0
3804	41394	2	This term was added by GO_REF:0000021.	0
3805	41422	2	This term was added by GO_REF:0000022.	0
3806	41451	2	This term was added by GO_REF:0000022.	0
3807	41460	2	This term is intended for annotation of fish and other organisms which contain a glomerulus as part of the pronephric nephron. It should not be used for annotation of Xenopus, which contains a pronephric glomus rather than a glomerulus.	0
3808	41487	2	This term was added by GO_REF:0000021.	0
3809	41492	2	This term was added by GO_REF:0000021.	0
3810	41526	2	This term was made obsolete because it artificially groups a number of other terms, leading to path problems, its definition is unclear (and lacks genus-differentia features), and it has probably been used incorrectly in annotations.	0
3811	41533	2	This term was made obsolete because it does not represent a real biological process.	0
3812	41569	2	See also the fly_anatomy.ontology term 'mandibular segment ; FBbt:00000012'.	0
3813	41570	2	This term was added by GO_REF:0000021.	0
3814	41571	2	This term was added by GO_REF:0000022.	0
3815	41576	2	Note that this step represents formation of the Commitment Complex (CC, in yeast) or the E complex (mammalian).	0
3816	41579	2	Note that this term is used to annotate gene products of the symbiont.	0
3817	41582	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3818	41596	2	This term was made obsolete because it does not represent a real biological process.	0
3819	41604	2	See also the biological process terms 'unfolded protein response ; GO:0030968' and 'retrograde protein transport, ER to cytosol ; GO:0030970'.	0
3820	41614	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, trophectoderm ; EMAP:19'.	0
3821	41626	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3822	41667	2	This term was made obsolete because m-xylene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
3823	41669	2	This term was added by GO_REF:0000021.	0
3824	41674	2	Note that this term was 'endoderm determination'. Changed string to make it more consistent with parent term 'cell fate determination'.	0
3825	41679	2	Note that a separate term covers proteolysis by the proteasome complex (proteasomal proteolysis associated with antigen processing and presentation ; GO:0002497).	0
3826	41680	2	Note that this term refers to any type of defense response made by any cell, whether only a single-celled organism or part of a multicellular organism; also includes responses that occur in the context of multiorganism processes.	0
3827	41693	2	This term was added by GO_REF:0000021.	0
3828	41706	2	This term was added by GO_REF:0000021.	0
3829	41713	2	Note that this term and its definition depart from the usual conventions for GO 'regulation' process terms; regulation of rate is not usually distinguished from regulation of extent or frequency, but it makes sense to do so for growth regulation.	0
3830	41718	2	This term was added by GO_REF:0000021.	0
3831	41740	2	See also the molecular function terms 'peptide alpha-N-acetyltransferase activity ; GO:0004596' and 'ribosomal-protein-alanine N-acetyltransferase activity ; GO:0008999'.	0
3832	41746	2	Note that this term is used to annotate gene products of the symbiont.	0
3833	41747	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3834	41754	2	Note that this term is intended for cell-surface molecules on a target cell which interact with activating receptors on a natural killer cell to promote natural killer cell mediated cytotoxicity.	0
3835	41767	2	This term was added by GO_REF:0000021.	0
3836	41768	2	This term was made obsolete because it is a gene product specific term.	0
3837	41772	2	This term was made obsolete because the meaning of the term is ambiguous.	0
3838	41784	2	Note that this term represents the return of immune system cell levels to stable numbers following an immune response as well as the proliferation and elimination of cells of the immune system required to maintain stable numbers in the absence of an outside stimulus.	0
3839	41793	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3840	41795	2	This term was made obsolete because it represents a molecular function.	0
3841	41799	2	Note that localized and systemic anaphylaxis is usually a result of type I hypersensitivity.	0
3842	41815	2	Note that while typically associated with tRNA splicing, splicing via endonucleolytic cleavages and subsequent ligation of the free exon ends is known to be used for some non-tRNA substrates, e.g. HAC1 (YFL031W) in S. cerevisiae and an intron in the 23S rRNA of the Archaeal species Desulfurococcus mobilis.	0
3843	41816	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'growth of symbiont on or near host phyllosphere ; GO:0044135' and 'development of symbiont on or near host phyllosphere ; GO:0044134'.	0
3844	41819	2	This term was made obsolete because it was added in error.	0
4698	51134	2	This term was made obsolete because it represents a molecular function.	0
3845	41829	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "negative regulation by host of symbiont signal transduction mediated by G-protein gamma subunit ; GO:0075098".	0
3846	41832	2	This term was added by GO_REF:0000021.	0
3847	41838	2	This term was added by GO_REF:0000021.	0
3848	41841	2	This term was added by GO_REF:0000021.	0
3849	41849	2	This term was added by GO_REF:0000021.	0
3850	41865	2	Note that term is to be used to annotate gene products in the plant. To annotate symbiont gene products that induce the hypersensitive response, consider the biological process term 'modulation by symbiont of host defense-related programmed cell death ; GO:0034053'.	0
3851	41866	2	This term was made obsolete because it does not represent a real biological process.	0
3852	41870	2	This term was made obsolete because a sensu term was not needed.	0
3853	41877	2	This term was made obsolete because it is redundant outside the context of Saccharomyces biology.	0
3854	41904	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host calcium or calmodulin-mediated signal transduction ; GO:0075135".	0
3855	41905	2	This term was made obsolete because it does not represent a real biological process.	0
3856	41919	2	Bipolar cell growth refers to a change in both cell size and cell shape. For shape changes where cell size is not affected, consider instead the term 'establishment or maintenance of bipolar cell polarity resulting in cell shape ; GO:0061246' and its children.	0
3857	41945	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3858	41972	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
3859	41976	2	This term was made obsolete because the term is misleading.	0
3860	41978	2	This term was added by GO_REF:0000021.	0
3861	41981	2	This term was added by GO_REF:0000021.	0
3862	41989	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, zona pellucida ; EMAP:22' and 'TS5, embryo ; EMAP:23'.	0
3863	41990	2	Note that this term should not be confused with 'unfolded protein response ; GO:0030968', which refers to one specific response to the presence of unfolded proteins in the ER.	0
3864	41995	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont protein kinase-mediated signal transduction ; GO:0075100".	0
3865	42021	2	Note that 'vectorial' is used in the definition in the mathematical and physical sense of pertaining to 'a quantity having direction as well as magnitude, especially as determining the position of one point in space relative to another.	0
3866	42028	2	This term was made obsolete because this process does not occur: the modification occurs before it can be an active site.	0
3867	42030	2	This term was added by GO_REF:0000021.	0
3868	42032	2	Note that while typically associated with tRNA splicing, splicing via endonucleolytic cleavages and subsequent ligation of the free exon ends is known to be used for some non-tRNA substrates, e.g. HAC1 (YFL031W) in S. cerevisiae and an intron in the 23S rRNA of the Archaeal species Desulfurococcus mobilis.	0
3869	42043	2	This term was made obsolete because it does not represent a real biological process.	0
3870	42052	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3871	42072	2	Note that this term is used to annotate gene products of the symbiont.	0
3872	42074	2	This term was added by GO_REF:0000021.	0
3873	42076	2	Note that this term refers to the mechanosensory hair cells of the inner ear.	0
3874	42077	2	Note that this term refers to xanthophores in the sense of specialized pigment-producing cells, and should not be confused with the cellular component term 'xanthophore ; GO:0031633', which refers to a subcellular structure.	0
3875	42078	2	This term partially replaces the obsolete term 'negative regulation of growth or development of symbiont during interaction with host ; GO:0075340'. See also 'negative regulation of development of symbiont during interaction with host ; GO:0044147'.	0
3876	42092	2	This term was added by GO_REF:0000021.	0
3877	42116	2	Note that this term should not be confused with 'cellular response to hypoxia ; GO:0071456'.	0
3878	42121	2	This term was made obsolete because it does not represent a real biological process.	0
3879	42149	2	See also the fly_anatomy.ontology term 'labial segment ; FBbt:00000014'.	0
3880	42150	2	This term was added by GO_REF:0000021.	0
3881	42160	2	This term was added by GO_REF:0000021.	0
3882	42195	2	This term was made obsolete because it was wrongly defined.	0
3883	42196	2	This term was added by GO_REF:0000021.	0
3884	42210	2	Note that this term was in molecular function but was moved to biological process as it represents three successive reactions.	0
3885	42213	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3886	42255	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3887	42260	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host G-protein coupled receptor protein signal transduction ; GO:0075119".	0
3888	42262	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
3974	43102	2	See also the biological process term 'peptidyl-tyrosine dehydrogenation ; GO:0018251'.	0
3975	43104	2	This term was added by GO_REF:0000021.	0
3889	42263	2	This term partially replaces the obsolete term 'positive regulation of growth or development of symbiont on or near host surface ; GO:0075337'. See also 'positive regulation of development of symbiont on or near host surface ; GO:0044143'.	0
3890	42275	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont calcium or calmodulin-mediated signal transduction ; GO:0075103".	0
3891	42281	2	This term was made obsolete because it mixes two processes that can be better captured in separate terms.	0
3892	42284	2	Note that this term is used to annotate gene products of the symbiont.	0
3893	42304	2	This term was made obsolete because it is a gene product specific term.	0
3894	42308	2	This term was made obsolete because there is no 'conservative' process of protein import into the mitochondrial intermembrane space that is distinct from the more general parent; furthermore, 'conservative' is used in the literature to describe a pathway of import into the inner membrane rather than into the intermembrane space.	0
3895	42352	2	Note that the presence of exogenous double-stranded RNA is usually indicative of a viral infection. Consider also annotating to 'response to virus ; GO:0009615'.	0
3896	42356	2	Note that this term refers to xanthophores in the sense of specialized pigment-producing cells, and should not be confused with the cellular component term 'xanthophore ; GO:0031633', which refers to a subcellular structure.	0
3897	42357	2	This term was added by GO_REF:0000021.	0
3898	42395	2	This term was added by GO_REF:0000021.	0
3899	42401	2	This term is intended for use when the normal role of a gene product is to result in behavioral decline, and should not be used when decline in behavior is a mutant phenotype.	0
3900	42410	2	This term was added by GO_REF:0000021.	0
3901	42417	2	This term was added by GO_REF:0000021.	0
3902	42420	2	This term was made obsolete because the term has been used in the literature by groups in different areas of biology with a number of varying explicit and implicit definitions, and more appropriate terms were created.	0
3903	42426	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
3904	42428	2	The amount of sodium excreted in urine over a unit of time can be decreased by decreasing the volume of urine produced (antidiuresis) and/or by decreasing the concentration of sodium in the urine.	0
3905	42433	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3906	42447	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3907	42466	2	This term was made obsolete because it represents a molecular function.	0
3908	42468	2	This term was added by GO_REF:0000021.	0
3909	42469	2	Note that 'antigen displaying cell' in this term encompasses cell types such as follicular dendritic cells which display the unprocessed antigens of a B cell, leading to activation of the B cells and antigen uptake and processing by the B cells.	0
3910	42471	2	In E. coli, the first step of the reaction is reductive elimination of sulfur from L-cysteine by IscS cysteine desulfurase to form an enzyme-bound cysteine-persulfide intermediate. Then, five essential gene products, TusA, TusB, TusC, TusD and TusE, mediate a sulfur relay that delivers the terminal sulfur of persulfide from IscS to MnmA12. The last protein, MnmA catalyzes the transfer of the sulfur from IscS to an ATP activated U34 of the tRNA.	0
3911	42478	2	Note that this term should not be confused with the molecular function term 'Ral GTPase activator activity ; GO:0017123', which refers specifically to the activity of Ral GAPs.	0
3912	42491	2	This term was added by GO_REF:0000021.	0
3913	42499	2	This term was made obsolete because 'virulence' is not a biological process; however, alteration of virulence also does not fit under 'regulation of biological quality ; GO:0065008' because it is a product both of the genotype/phenotype of the infecting organism and the genotype/phenotype of the organism being infected and varies by individual within a species both for the infecting organism and the infected organism.	0
3914	42500	2	This term was added by GO_REF:0000021.	0
3915	42524	2	This term was added by GO_REF:0000021.	0
3916	42540	2	Note that this term is a child of 'actin cytoskeleton organization and biogenesis ; GO:0030036' because the actin cytoskeleton is defined as actin filaments and associated proteins; myosin structures are sufficiently closely associated with actin filaments to be included with the actin cytoskeleton.	0
3917	42541	2	This term was added by GO_REF:0000021.	0
3918	42551	2	This term partially replaces the obsolete term 'growth or development in other organism during symbiotic interaction ; GO:0051831'. See also 'development in other organism during symbiotic interaction ; GO:0044113'.	0
3919	42557	2	This term was added by GO_REF:0000021.	0
3920	42566	2	This term was added by GO_REF:0000021.	0
3921	42568	2	This term was made obsolete because the term is misleading.	0
3922	42576	2	This term was made obsolete because it does not represent a real biological process.	0
3923	42582	2	Note that this term describes the transbilayer motion of individual phospholipid molecules, and should not be confused with 'phospholipid scrambling ; GO:0017121'.	0
3924	42583	2	This term was added by GO_REF:0000021.	0
3925	42587	2	This term was made obsolete because hydrolysis is a reaction, not a process.	0
3926	42589	2	This term was added by GO_REF:0000021.	0
3927	42606	2	This term was improved by GO_REF:0000022. It was redefined and moved.	0
3928	42616	2	Note that this term is used to annotate gene products of the symbiont.	0
3929	42622	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3930	42623	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, blastocoelic cavity ; EMAP:17', 'TS5, blastocoelic cavity ; EMAP:27' and 'TS6, blastocoelic cavity ; EMAP:36'.	0
3931	42625	2	Note that this term should be used for naturally occurring instances of mitosis without cytokinesis, e.g. in the tapetum of flowers and in a number of lower eukaryotes; it should not be used for abnormal events such as may occur in cancers.	0
3932	42628	2	See also the fly_anatomy.ontology term 'head segment ; FBbt:00000006' and its children.	0
3933	42670	2	Note that this term was split from 'bud site selection/establishment of cell polarity (sensu Saccharomyces) ; GO:0007115' (a sibling term, 'establishment of cell polarity (sensu Saccharomyces) ; GO:0000283', was created but has since been merged with 'establishment of cell polarity' ; GO:0030010).	0
3934	42674	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'development of symbiont in host organelle ; GO:0044120' and 'growth of symbiont in host organelle ; GO:0044121'.	0
3935	42694	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3936	42699	2	Note that this term should not be confused with 'unfolded protein response ; GO:0030968', which refers to one specific response to the presence of unfolded proteins in the ER.	0
3937	42702	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont transmembrane receptor-mediated signal transduction ; GO:0075081".	0
3938	42712	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "negative regulation by host of symbiont transmembrane receptor-mediated signal transduction ; GO:0075083".	0
3939	42726	2	This term was made obsolete because it does not represent a real biological process.	0
3940	42743	2	Note that this term refers to a geometric change in DNA conformation, and should not be confused with 'DNA topological change ; GO:0006265'.	0
3941	42746	2	This term was added by GO_REF:0000021.	0
3942	42748	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
3943	42767	2	This term was made obsolete because it is describing a binding molecular function.	0
3944	42775	2	This term was added by GO_REF:0000021.	0
3945	42783	2	See also the cellular component term 'nuclear speck ; GO:0016607'.	0
3946	42797	2	Note that this term should not be confused with 'response to hypoxia ; GO:0001666'.	0
3947	42809	2	This term was made obsolete because it does not represent a real biological process.	0
3948	42816	2	This term was made obsolete because it reflected a trait or phenotype.	0
3949	42832	2	This term was added by GO_REF:0000021.	0
3950	42835	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host signal transduction mediated by G-protein beta subunit ; GO:0075124".	0
3951	42836	2	This term was added by GO_REF:0000021.	0
3952	42860	2	This term was made obsolete because it does not represent a real biological process.	0
3953	42872	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'growth of symbiont on or near host ; GO:0044133' and 'development of symbiont on or near host ; GO:0044132'.	0
3954	42886	2	This term was made obsolete because there is no clear difference between the sensu Insecta term and the generic term.	0
3955	42922	2	This term was made obsolete because it is a gene product based term and it does not involve a unique process.	0
3956	42945	2	This term was added by GO_REF:0000021.	0
3957	42946	2	This term was made obsolete because it is a gene product specific term.	0
3958	42949	2	This term was added by GO_REF:0000021.	0
3959	42967	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont cAMP-mediated signal transduction ; GO:0075205".	0
3960	42969	2	This term was added by GO_REF:0000021.	0
3961	42980	2	Note that platelets are the non-nucleated mammalian functional equivalent of the nucleated thrombocytes of non-mammalian vertebrates and are sometimes also referred to as thrombocytes. Platelet formation in mammals is covered by the biological_process term platelet formation ; GO:0030220.	0
3962	42987	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3963	42996	2	This term was made obsolete because it reflected a trait or phenotype.	0
3964	42997	2	Note that this term describes the transbilayer motion of a population of phospholipid molecules, and should not be confused with 'phospholipid translocation ; GO:0045332'.	0
3965	43014	2	This term was added by GO_REF:0000021.	0
3966	43028	2	This term was added by GO_REF:0000021.	0
3967	43030	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3968	43047	2	This term was made obsolete because it represents a molecular function.	0
3969	43051	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3970	43054	2	This term was added by GO_REF:0000021.	0
3971	43062	2	This term should only be used to annotate a protein modification process that occurs after the protein has been released from the ribosome, and is therefore strictly post-translational. Modification of a free protein (one not attached to a ribosome) and modification of a C-terminal residue are post-translational processes. Some protein modifications occur while the protein is still in the ribosome but before translation has been completed; these modification processes are considered co-translational and should not be annotated using this term.	0
3972	43071	2	This term was added by GO_REF:0000021.	0
3973	43076	2	Note that metabolic processes do not include single functions or processes such as protein-protein interactions, protein-nucleic acids, nor receptor-ligand interactions.	0
3976	43119	2	Note that this process is the opposite of chromatin silencing. This regulation is exemplified by members of the trithorax group, which maintain the active state of homeotic gene transcription.	0
3977	43120	2	Note that oncosis is sometimes described as a type of cell death, but recent nomenclature recommendations define it as a feature of necrotic cell death rather than a distinct mode of cell death.	0
3978	43150	2	This term was added by GO_REF:0000021.	0
3979	43156	2	This term was made obsolete because it does not represent a real biological process.	0
3980	43160	2	Note that the syntax of the definition of the this term is different from the usual regulation syntax because it describes regulation of a trait rather than regulation of a process.	0
3981	43167	2	This term was added by GO_REF:0000021.	0
3982	43174	2	This term was added by GO_REF:0000021.	0
3983	43204	2	This term was added by GO_REF:0000021.	0
3984	43208	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
3985	43230	2	This term was added by GO_REF:0000022.	0
3986	43242	2	Note that nuclear mRNA, Group I, Group II, and Group III introns are all spliced by a series of two transesterification reactions that occur within the RNA itself, or between two RNAs in trans splicing. Some of these require one or more proteins to stabilize the catalytic conformation, while others are autocatalytic. Note that tRNA introns are spliced by a different catalytic mechanism.	0
3987	43248	2	This term was added by GO_REF:0000021.	0
3988	43271	2	This term was added by GO_REF:0000021.	0
3989	43274	2	Note that a thymocyte is an immature T cell located in the thymus (CL:0000893).	0
3990	43275	2	This term was added by GO_REF:0000021.	0
3991	43284	2	See also the cellular component terms 'eukaryotic 43S preinitiation complex ; GO:0016282', 'eukaryotic 48S initiation complex ; GO:0033290', and their children.	0
3992	43286	2	See also the biological process terms 'unfolded protein response ; GO:0030968' and 'retrograde protein transport, ER to cytosol ; GO:0030970'.	0
3993	43289	2	Note that 'translocation' is sometimes used in the literature to refer to the entire process of protein import into the nucleus, but in GO refers specifically to the step in which a cargo-carrier protein complex moves through the nuclear pore complex.	0
3994	43299	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
3995	43303	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
3996	43314	2	See also the biological process term 'peptide cross-linking via 4'-(L-tryptophan)-L-tryptophyl quinone ; GO:0018069'.	0
3997	43315	2	This term was made obsolete because it does not represent a real biological process.	0
3998	43342	2	This term was made obsolete because the term name is ambiguous.	0
3999	43343	2	This term should be used with caution, and only used when the signaling between cells has been clearly distinguished from endocrine signaling.	0
4000	43351	2	This term was made obsolete because it does not represent a real biological process.	0
4001	43359	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
4002	43376	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
4003	43389	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4004	43402	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4005	43419	2	This term was made obsolete because it does not represent a real biological process.	0
4006	43428	2	Note that the term diapedesis, although sometimes used as a direct synonym for cellular extravasation, is used here for the specific final step of the process, in concordance with recent reviews of the topic.	0
4007	43441	2	See also the biological process term 'inositol or phosphatidylinositol phosphorylation ; GO:0046853'.	0
4008	43506	2	This term was added by GO_REF:0000021.	0
4009	43516	2	This term was added by GO_REF:0000021.	0
4010	43520	2	This term was made obsolete because it represents a molecular function.	0
4011	43543	2	This term is intended for annotation of fish and other organisms which contain a glomerulus as part of the pronephric nephron. It should not be used for annotation of Xenopus, which contains a pronephric glomus rather than a glomerulus.	0
4012	43548	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4013	43555	2	This term was made obsolete because it is a grouping term without biological significance.	0
4014	43557	2	Note that this term is used to annotate gene products of the symbiont.	0
4015	43563	2	This term was improved by GO_REF:0000022. It was moved. Note that the term 'thymocyte differentiation' was merged into this term because thymocytes are T cells, and thus the term was essentially redundant. Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4016	43575	2	This term was made obsolete because it does not represent a real biological process.	0
4017	43611	2	This term was improved by GO_REF:0000022. It was moved.	0
4018	43616	2	This term was made obsolete because, as part of the GO/ChEBI alignment effort, curators determined that oxygen and reactive oxygen species should not be grouped together.	0
4019	43629	2	This term was added by GO_REF:0000021.	0
4020	43649	2	This term was added by GO_REF:0000021.	0
4121	44812	2	This term was added by GO_REF:0000021.	0
4699	51149	2	This term was added by GO_REF:0000021.	0
4021	43651	2	Note that the Harderian gland is found in all terrestrial vertebrate groups, including amphibia, reptiles, birds, and mammals. However, it appears to be absent in certain mammals such as bats, cows, horses, and higher primates. Though largely absent in the adult human, it is present in the fetal and neonatal stages.	0
4022	43656	2	This term was added by GO_REF:0000021.	0
4023	43658	2	This term was made obsolete because 'sensitivity/resistance' implies a phenotype rather than a biological process.	0
4024	43661	2	This term was added by GO_REF:0000021.	0
4025	43691	2	Note that this term should be used to annotate gene products of symbiont.	0
4026	43712	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "negative regulation by host of symbiont signal transduction mediated by G-protein alpha subunit ; GO:0075092".	0
4027	43725	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "Negative regulation by host of symbiont cAMP-mediated signal transduction ; GO:0075207".	0
4028	43747	2	This term was made obsolete because it contains gene product and species specific information.	0
4029	43752	2	Note that this term was 'body morphogenesis (sensu Nematoda)'.	0
4030	43784	2	This term was added by GO_REF:0000022.	0
4031	43788	2	This term was made obsolete because the term name is ambiguous and as a result, the term was incorrectly placed in the ontology (it was a descendant of 'protein transport').	0
4032	43804	2	See also the fly_anatomy.ontology term 'wing margin ; FBbt:00005378'.	0
4033	43806	2	This term was added by GO_REF:0000021.	0
4034	43811	2	Note that this term is used to annotate gene products of the symbiont.	0
4035	43820	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
4036	43837	2	This term was made obsolete because it represents a function rather than a process.	0
4037	43844	2	This term was made obsolete because it does not represent a real biological process.	0
4038	43885	2	Note that this term is used to annotate gene products of the symbiont.	0
4039	43889	2	See also the biological process term 'neurotransmitter transport ; GO:0006836'.	0
4040	43904	2	This term was added by GO_REF:0000021.	0
4041	43917	2	This term was added by GO_REF:0000021.	0
4042	43931	2	This term was added by GO_REF:0000021.	0
4043	43959	2	Note that this term should not be confused with the molecular function term 'Rho GTPase activator activity ; GO:0005100', which refers specifically to the activity of Rho GAPs.	0
4044	43960	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4045	43972	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
4046	43975	2	This term was made obsolete because it was undefined and because there is no common mechanism of establishment of dosage compensation in different organisms.	0
4047	43984	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
4048	43991	2	This term was added by GO_REF:0000021.	0
4049	43995	2	This term was made obsolete because it does not describe a biological process.	0
4050	44001	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
4051	44008	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
4052	44012	2	This term was made obsolete because triethanolamine is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4053	44016	2	Note that the only known alpha amino glycosylation is on an asparagine; see UniProtKB:P58522. However, this feature is not differentiated from normal N-glycosylation of asparagine.	0
4054	44024	2	This term was added by GO_REF:0000021.	0
4055	44054	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4056	44055	2	This term was added by GO_REF:0000021.	0
4057	44065	2	This term was made obsolete because it has been split.	0
4058	44073	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4059	44079	2	This term was made obsolete because, as part of the GO/ChEBI alignment effort, curators determined that oxygen and reactive oxygen species should not be grouped together.	0
4060	44081	2	This term was made obsolete because it was an unnecessary grouping term.	0
4061	44098	2	See also the molecular function term 'procollagen-proline 4-dioxygenase activity ; GO:0004656'.	0
4062	44132	2	This term was added by GO_REF:0000021.	0
4063	44135	2	This term was made obsolete because of the ambiguity in its meaning.	0
4064	44140	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4065	44143	2	This term was added by GO_REF:0000021.	0
4066	44146	2	This term was added by GO_REF:0000021.	0
4067	44150	2	This term was made obsolete because it represents two separate processes (insertion and deletion).	0
4068	44158	2	This term was added by GO_REF:0000021.	0
4069	44162	2	This term was added by GO_REF:0000022.	0
4070	44165	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4071	44200	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4700	51171	2	This term was added by GO_REF:0000021.	0
4072	44211	2	Note that this term represents an activity and not a cellular structure. Consider also annotating to the cellular component term 'type III protein secretion system complex ; GO:0030257'. Note that this term is used for annotation of proteins that compose the secretion complex but not the proteins being secreted.	0
4073	44236	2	This term was added by GO_REF:0000021.	0
4074	44245	2	This term was added by GO_REF:0000021.	0
4075	44257	2	This term was added by GO_REF:0000021.	0
4076	44294	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4077	44295	2	See also the biological process term 'peptidyl-tyrosine dehydrogenation ; GO:0018251'.	0
4078	44310	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS5, embryo ; EMAP:23', 'TS5, inner cell mass ; EMAP:24' and 'TS5, trophectoderm; EMAP:28'.	0
4079	44314	2	This term was made obsolete because it does not represent a real biological process.	0
4080	44320	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4081	44326	2	This term was made obsolete because hydrolysis is a reaction.	0
4082	44336	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4083	44340	2	This term was added by GO_REF:0000021.	0
4084	44346	2	This term was made obsolete because it relates to a specific gene family rather than a process.	0
4085	44355	2	This term was added by GO_REF:0000021.	0
4086	44358	2	This term was made obsolete because it is a redundant grouping term.	0
4087	44361	2	This term was improved by GO_REF:0000022. It was renamed and redefined.	0
4088	44391	2	This term was added by GO_REF:0000021.	0
4089	44397	2	This term was added by GO_REF:0000021.	0
4090	44409	2	This term partially replaces the obsolete term 'growth or development on or near surface of other organism during symbiotic interaction ; GO:0051827'. See also 'development on or near surface of other organism during symbiotic interaction ; GO:0044152'.	0
4091	44449	2	See also the biological process term 'peptidyl-tyrosine dehydrogenation ; GO:0018251'.	0
4092	44476	2	Note that NK T cells are a distinct lineage of T cells expressing natural killer cell markers and having T cell receptors characterized by the usage of a restricted repetoire of variable region gene segments.	0
4093	44500	2	This term was added by GO_REF:0000021.	0
4094	44529	2	This term was made obsolete because it is a gene product specific term.	0
4095	44539	2	This term was added by GO_REF:0000021.	0
4096	44540	2	See also the molecular function term 'aspartate N-acetyltransferase activity ; GO:0017188'.	0
4097	44543	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
4098	44549	2	This term was added by GO_REF:0000021.	0
4099	44550	2	This term was added by GO_REF:0000021.	0
4100	44596	2	Note that 'error-free' does not mean that literally zero errors occur during DNA synthesis, but that the error rate is low, comparable to that of DNA synthesis during replication.	0
4101	44602	2	This term partially replaces the obsolete term 'negative regulation of growth or development of symbiont in host ; GO:0033667'. See also 'negative regulation of development of symbiont in host ; GO:0044131'.	0
4102	44614	2	Note that this term represents the return of B cell levels to stable numbers following an immune response as well as the proliferation and elimination of B cells required to maintain stable numbers in the absence of an outside stimulus.	0
4103	44635	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host transmembrane receptor-mediated cAMP signal transduction ; GO:0075115".	0
4104	44651	2	This term partially replaces the obsolete term 'growth or development of symbiont on or near host phyllosphere ; GO:0075013'. See also 'growth of symbiont on or near host phyllosphere ; GO:0044135'.	0
4105	44654	2	Note that this term should not be confused with 'response to flooding ; GO:0009413'; which refers to immersion in water on a shorter time scale.	0
4106	44662	2	This term was added by GO_REF:0000021.	0
4107	44679	2	This term was added by GO_REF:0000021.	0
4108	44704	2	This term was improved by GO_REF:0000022. It was moved.	0
4109	44736	2	This term was added by GO_REF:0000021.	0
4110	44740	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
4111	44756	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
4112	44757	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4113	44776	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4114	44780	2	This term was added by GO_REF:0000021.	0
4115	44786	2	This term was made obsolete because the term name is ambiguous and as a result, the term was incorrectly placed in the ontology (it was a descendant of 'protein transport').	0
4116	44792	2	This term was made obsolete because 'sensitivity/resistance' implies a phenotype rather than a biological process.	0
4117	44794	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4118	44804	2	This term was added by GO_REF:0000021.	0
4119	44809	2	Note that this term is intended for annotation of self-gene products that lead to elimination of erythrocytes without the involvement of a symbiont.	0
4120	44811	2	Note that this term is used to annotate gene products of the symbiont.	0
4122	44864	2	Note that this term should be used to annotate gene products involved in dedifferentiation that occurs as part of a normal process, such as regeneration. It should not be used for dedifferentiation that occurs in an abnormal or disease state such as cancer.	0
4123	44888	2	This term was added by GO_REF:0000021.	0
4124	44910	2	This term was made obsolete because it is a gene product specific term.	0
4125	44911	2	This term was made obsolete because 4-nitrophenol is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4126	44930	2	This term was added by GO_REF:0000021.	0
4127	44961	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
4128	44980	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
4129	44986	2	This term was made obsolete because it was an unnecessary grouping term.	0
4130	44995	2	This term was added by GO_REF:0000021.	0
4131	44998	2	This term was made obsolete because 'long' is not a quantitative or meaningful measurement of time.	0
4132	44999	2	This term was added by GO_REF:0000021.	0
4133	45000	2	See also the biological process term 'peptidyl-tyrosine dehydrogenation ; GO:0018251'.	0
4134	45009	2	This term was made obsolete because it was undefined and represented an abnormal process.	0
4135	45014	2	Note that this term refers specifically to posttranscriptional mechanisms by which small interfering RNAs down-regulate gene expression. Also consider annotating to other descendants of 'gene silencing by RNA ; GO:0031047'.	0
4136	45041	2	This term was added by GO_REF:0000021.	0
4137	45043	2	The term 'RNA editing' (GO:0016547) was merged into 'RNA modification' (GO:0009451) on the basis of statements in the preface of Modification and Editing of RNA (ISBN:1555811337) that there is no clear distinction between modification and editing. Parallel changes were made for substrate (e.g. tRNA, rRNA, etc.) specific child terms of 'RNA editing'.	0
4138	45057	2	This term was made obsolete because the term name is ambiguous.	0
4139	45063	2	Note that phenol metabolism is not included as a child of 'xenobiotic metabolism' because although it is synthesized industrially, phenol is also found naturally in animal wastes and other organic materials. It is often formed by the activity of microorganisms, which can chemically modify a variety of xenobiotic and naturally occurring phenolic compounds.	0
4140	45066	2	This term was added by GO_REF:0000021.	0
4141	45093	2	Note that IL-28A, IL-28B, and IL-29 are types of interferon-lambda.	0
4142	45098	2	This term was added by GO_REF:0000021.	0
4143	45104	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
4144	45110	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4145	45129	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4146	45139	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4147	45154	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4148	45160	2	This term was made obsolete because it is a grouping term that is not useful, but has caused true path violations.	0
4149	45187	2	This term was made obsolete because o-xylene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4150	45191	2	Note that this term is not synonymous with 'heterophilic cell adhesion ; GO:0007157'; the process may occur by homophilic or heterophilic mechanisms.	0
4151	45217	2	This term was added by GO_REF:0000021.	0
4152	45228	2	These processes continue to 60 DPA in Gossypium spp.	0
4153	45238	2	This term was made obsolete because it is a gene product specific term.	0
4154	45245	2	Note that this term is intended for the annotation of prokaryotic gene products.	0
4155	45266	2	See also the molecular function term 'glutaminyl-peptide cyclotransferase activity ; GO:0016603'.	0
4156	45267	2	This term was made obsolete because 2-chloro-N-isopropylacetanilide is not synthesized by living organisms and GO does not cover non-biological processes.	0
4157	45280	2	This term was added by GO_REF:0000021.	0
4158	45282	2	This term was made obsolete because its definition was inaccurate.	0
4159	45313	2	This term was added by GO_REF:0000021.	0
4160	45333	2	This term was made obsolete because its name is ambiguous and it is covered by the two more specific terms: 'organ senescence ; GO:0010260' and 'cell aging ; GO:0007569'.	0
4161	45346	2	This term was added by GO_REF:0000021.	0
4162	45355	2	This term was added by GO_REF:0000021.	0
4163	45362	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4164	45392	2	Note that 'radiation' refers to electromagnetic radiation of any wavelength.	0
4165	45396	2	This term was added by GO_REF:0000021.	0
4166	45402	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
4167	45426	2	Note that this process covers somatic recombination, gene conversion, hypermutation, N-region addition, and alternate splicing processes of immune receptor diversification.	0
4168	45434	2	This term was added by GO_REF:0000021.	0
4169	45459	2	See also the biological process term 'feeding behavior ; GO:0007631'.	0
4170	45468	2	This term partially replaces the obsolete term 'growth or development of symbiont in host intercellular space ; GO:0075067'. See also 'growth of symbiont in host intercellular space ; GO:0044125'.	0
4271	46542	2	This term was made obsolete because it represents a molecular function.	0
4171	45472	2	This term was made obsolete because 2-aminobenzenesulfonate is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4172	45499	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4173	45511	2	This term was added by GO_REF:0000021.	0
4174	45517	2	This term was added by GO_REF:0000021.	0
4175	45522	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4176	45528	2	Note that this term was split from 'cellular di-, tri-valent inorganic anion homeostasis ; GO:0030319' (sibling term 'cellular divalent inorganic anion homeostasis' ; GO:0072501').	0
4177	45529	2	This term was added by GO_REF:0000021.	0
4178	45533	2	Note that this term is used to annotate gene products of the symbiont.	0
4179	45537	2	This term was made obsolete because the process is not exclusive to the carboxy terminus of a protein.	0
4180	45556	2	This term was made obsolete because this process can be subdivided into multiple processes.	0
4181	45569	2	Occurs in reptiles, birds and mammals.	0
4182	45577	2	Note that term is to be used to annotate gene products in the plant. To annotate genes in a symbiont, consider the biological process term 'modulation by symbiont of host programmed cell death ; GO:0052040'.	0
4183	45589	2	See also the biological process term 'peptide cross-linking via S-glycyl-L-cysteine ; GO:0018255'.	0
4184	45615	2	Note that this term is used to annotate gene products of the symbiont.	0
4185	45622	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "negative regulation by host of symbiont signal transduction mediated by G-protein beta subunit ; GO:0075095".	0
4186	45644	2	This term was made obsolete because its definition was inaccurate.	0
4187	45647	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4188	45660	2	This term was added by GO_REF:0000022.	0
4189	45691	2	Note that 'radiation' refers to electromagnetic radiation of any wavelength.	0
4190	45718	2	This term was added by GO_REF:0000021.	0
4191	45720	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4192	45731	2	This term was added by GO_REF:0000021.	0
4193	45736	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4194	45751	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'growth on or near surface of other organism during symbiotic interaction ; GO:0044153' and 'development on or near surface of other organism during symbiotic interaction ; GO:0044152'.	0
4195	45762	2	This term was added by GO_REF:0000021.	0
4196	45769	2	See also the Cell Ontology term 'pole cell ; CL:0000301'.	0
4197	45770	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4198	45777	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4199	45785	2	This term was made obsolete because it does not represent a real biological process.	0
4200	45804	2	This term was made obsolete because it does not represent a real biological process.	0
4201	45829	2	Note that this step represents the formation of the B complex (yeast) or the A complex (mammalian).	0
4202	45834	2	This term was added by GO_REF:0000021.	0
4203	45850	2	This term partially replaces the obsolete term 'growth or development of symbiont on or near host rhizosphere ; GO:0075014'. See also 'growth of symbiont on or near host rhizosphere ; GO:0044137'.	0
4204	45861	2	Note that epinephrine and norepinephrine are ligands for the same receptors, and there are multiple adrenergic receptors.	0
4205	45872	2	Note that this term refers only to the specific, original 'tumor necrosis factor' protein (TNF) and not other members of the tumor necrosis factor superfamily (those with the gene symbol root 'TNFSF').	0
4206	45878	2	For changes in locomotory behavior upon introduction to a novel environment, consider instead the child term: locomotory exploration behavior ; GO:0035641.	0
4207	45900	2	This term was added by GO_REF:0000021.	0
4208	45916	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4209	45939	2	This term was added by GO_REF:0000022.	0
4210	45943	2	Note that this term was 'mesoderm determination'. Changed string to make more consistent with parent term 'cell fate determination'.	0
4211	45948	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4212	45955	2	This term was added by GO_REF:0000021.	0
4213	45957	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4214	45970	2	This term was added by GO_REF:0000021.	0
4215	45982	2	Note that this reaction is catalyzed by a single enzyme but since it has multiple steps, it appears in the process ontology.	0
4216	45988	2	This term was made obsolete because it does not represent a real biological process.	0
4217	46016	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4218	46024	2	Note that this term is used to annotate gene products of the symbiont.	0
4320	47011	2	This term was added by GO_REF:0000021.	0
4219	46033	2	This term was made obsolete because it is a composite term that represents two individual processes.	0
4220	46039	2	This term was made obsolete because its definition was inaccurate.	0
4221	46058	2	Exclusively located at the anticodon wobble position (i.e., position 34) of eubacterial and some organellar tRNAIle2. This modification converts the codon specificity from AUG to AUA, and it also converts the aminoacylation specificity of the tRNA from methionine to isoleucine. Requires ATP.	0
4222	46065	2	This term was added by GO_REF:0000021.	0
4223	46067	2	This term was made obsolete because it does not represent a real biological process.	0
4224	46074	2	This term was made obsolete because the term name is ambiguous.	0
4225	46083	2	This term was added by GO_REF:0000021.	0
4226	46091	2	This term was added by GO_REF:0000022.	0
4227	46093	2	This term was made obsolete because it makes no sense and was added in error.	0
4228	46097	2	This term was added by GO_REF:0000021.	0
4229	46102	2	This term was added by GO_REF:0000021.	0
4230	46112	2	This term was made obsolete because it does not represent a real biological process.	0
4231	46114	2	This term was added by GO_REF:0000021.	0
4232	46130	2	This term was added by GO_REF:0000021.	0
4233	46138	2	Note that although intrastrand cross-link repair is not exactly synonymous with nucleotide excision repair, nucleotide excision repair includes the repair of intrastrand cross-links. The synonym field is being used to reflect the broad substrate specificity of nucleotide excision repair.	0
4234	46146	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4235	46162	2	This term was added by GO_REF:0000021.	0
4236	46177	2	This term was added by GO_REF:0000022.	0
4237	46186	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4238	46189	2	This term was added by GO_REF:0000021.	0
4239	46219	2	This term was added by GO_REF:0000021.	0
4240	46237	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'positive regulation of development of symbiont during interaction with host ; GO:0044149' and 'positive regulation of growth of symbiont during interaction with host ; GO:0044148'.	0
4241	46247	2	This term was added by GO_REF:0000021.	0
4242	46259	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, inner cell mass ; EMAP:14' and 'TS5, inner cell mass ; EMAP:24'.	0
4243	46263	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4244	46269	2	This term was made obsolete because it presents a molecular function.	0
4245	46287	2	Note that this process is the opposite of gene silencing.	0
4246	46295	2	This term was made obsolete because more appropriate terms were created.	0
4247	46297	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'negative regulation of development of symbiont on or near host surface ; GO:0044141' and 'negative regulation of growth of symbiont on or near host surface ; GO:0044140'.	0
4248	46309	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4249	46311	2	Note that this term is intended for use in annotation of symbiont gene products. For host gene products that ubiquitinate host proteins, consider annotation to 'protein ubiquitination ; GO:0016567'.	0
4250	46314	2	This term was added by GO_REF:0000021.	0
4251	46318	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
4252	46326	2	This term was made obsolete because it represents a function rather than a process.	0
4253	46343	2	This term was added by GO_REF:0000021.	0
4254	46346	2	This term was added by GO_REF:0000021.	0
4255	46359	2	This term was added by GO_REF:0000021.	0
4256	46370	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4257	46374	2	This term was added by GO_REF:0000021.	0
4258	46401	2	This term was added by GO_REF:0000021.	0
4259	46408	2	This term was made obsolete because 4-toluenecarboxylate is not synthesized by living organisms and GO does not cover non-biological processes.	0
4260	46409	2	This term was added by GO_REF:0000021.	0
4261	46418	2	Note that this term should not be confused with 'peptidyl-pyroglutamic acid biosynthesis, using glutaminyl-peptide cyclotransferase ; GO:0017186'. See also the biological process term 'intein-mediated protein splicing ; GO:0016539'.	0
4262	46427	2	This term was added by GO_REF:0000022.	0
4263	46432	2	This term was made obsolete because it does not represent a real biological process.	0
4264	46438	2	This term was made obsolete because it gives no indication of what it refers to.	0
4265	46476	2	Note that this term is used to annotate gene products of the symbiont.	0
4266	46483	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "negative regulation by host of symbiont transmembrane receptor-mediated cAMP signal transduction ; GO:0075086".	0
4267	46500	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4268	46502	2	This term was added by GO_REF:0000021.	0
4269	46531	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
4270	46538	2	This term was added by GO_REF:0000021.	0
4272	46550	2	Note that either or both mechanisms mentioned in the definition may be used in this process. Note that both granule release and the engagement of death receptors on target cells result in induction of apoptosis in the target cell.	0
4273	46561	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
4274	46574	2	This term was made obsolete because it does not represent a process unique to splicing of the tyrosyl (Y) tRNA.	0
4275	46582	2	This term was made obsolete because it does not represent a real biological process.	0
4276	46604	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4277	46621	2	This term was made obsolete because it does not represent a real biological process.	0
4278	46627	2	This term was made obsolete because it does not represent a valid biological process that occurs in nature.	0
4279	46646	2	This term was added by GO_REF:0000021.	0
4280	46653	2	This term was added by GO_REF:0000021.	0
4281	46657	2	Note that this process is the opposite of chromatin-mediated maintenance of transcription. This regulation is exemplified by members of the Polycomb group, which maintain the inactive state of homeotic gene transcription.	0
4282	46674	2	This term was made obsolete because it is a composite term that represents two individual processes.	0
4283	46709	2	This term was added by GO_REF:0000021.	0
4284	46711	2	Note that this term is used to annotate gene products of the symbiont.	0
4285	46728	2	Note that this term should be used to annotate gene products of host.	0
4286	46751	2	This term was made obsolete because it has been split.	0
4287	46769	2	Note that this term should not be confused with the molecular function term 'Ras GTPase activator activity ; GO:0005099', which refers specifically to the activity of Ras GAPs.	0
4288	46770	2	Note that bacterial lipopeptides are derived from bacterial lipoproteins, but the two terms are sometimes used interchangeably in the literature.	0
4289	46772	2	This term was added by GO_REF:0000021.	0
4290	46796	2	Note that a thymocyte is an immature T cell located in the thymus (CL:0000893).	0
4291	46800	2	This term was added by GO_REF:0000021.	0
4292	46818	2	Note that this term should not be confused with the molecular function term 'Ran GTPase activator activity ; GO:0005098', which refers specifically to the activity of Ran GAPs.	0
4293	46819	2	Note that NK T cells are a distinct lineage of T cells expressing natural killer cell markers and having T cell receptors characterized by the usage of a restricted repertoire of variable region gene segments. Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4294	46836	2	See also the cellular component term 'Lands ; GO:0016606'.	0
4295	46842	2	Note that this term is used to annotate gene products of the symbiont.	0
4296	46843	2	This term was made obsolete because it does not represent a real process that exists in nature.	0
4297	46844	2	This term was made obsolete as part of the metabolism rearrangements, because it is redundant with other terms.	0
4298	46846	2	Note that this term encompasses both the control point when the instruction is given for the process to cease and the actual cessation of the process. A process can persist for some time after that signal that induced the process is withdrawn.	0
4299	46852	2	This term was added by GO_REF:0000021.	0
4300	46857	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4301	46861	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4302	46869	2	This term was made obsolete because it contains gene product and species specific information.	0
4303	46884	2	Note that this term is to be used to annotate gene products in the host, not the symbiont. To annotate gene products in the symbiont that induce programmed cell death in the host, consider the biological process term 'induction by symbiont of host programmed cell death ; GO:0052044'.	0
4304	46891	2	This term partially replaces the obsolete term 'negative regulation of growth or development of symbiont on or near host surface ; GO:0075309'. See also 'negative regulation of development of symbiont on or near host surface ; GO:0044141'.	0
4305	46916	2	Note that this term is used to annotate gene products of the symbiont.	0
4306	46921	2	This term was made obsolete because it is a phenotype rather than a biological process.	0
4307	46939	2	Note that this term is used to annotate gene products of the symbiont.	0
4308	46968	2	Note that this term refers to xanthophores in the sense of specialized pigment-producing cells, and should not be confused with the cellular component term 'xanthophore ; GO:0031633', which refers to a subcellular structure.	0
4309	46969	2	This term was added by GO_REF:0000021.	0
4310	46974	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4311	46975	2	This term was added by GO_REF:0000021.	0
4312	46979	2	This term was made obsolete because it is defined as a function term and is in the process ontology.	0
4313	46981	2	This term was added by GO_REF:0000022.	0
4314	46985	2	This term was added by GO_REF:0000021.	0
4315	46986	2	This term was added by GO_REF:0000021.	0
4316	46990	2	This term was added by GO_REF:0000021.	0
4317	46993	2	See also the biological process term 'locomotory behavior ; GO:0007626'.	0
4318	46994	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host protein kinase-mediated signal transduction ; GO:0075130".	0
4319	47009	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4321	47023	2	Note that a signal is any variable property or parameter that serves to convey information, and may be a physical entity such as a gene product or small molecule, a photon, or a change in state such as movement or voltage change.	0
4322	47033	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4323	47046	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host adenylate cyclase activity ; GO:0075106".	0
4324	47047	2	This term was made obsolete because it is a gene product specific term.	0
4325	47048	2	This term was made obsolete because it is a gene product specific term.	0
4326	47063	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'growth in other organism during symbiotic interaction ; GO:0044112' and 'development in other organism during symbiotic interaction ; GO:0044113'.	0
4327	47069	2	Note that the repair of pyrimidine dimers by nucleotide excision repair involves the same gene products that are involved in general nucleotide excision repair. Consider also annotating to other children of the biological process term 'nucleotide-excision repair ; GO:0006289'.	0
4328	47083	2	Desmosomes link two cells together; hemidesmosomes attach one cell to the extracellular matrix.	0
4329	47089	2	This term was made obsolete because 2,4,6-trinitrotoluene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4330	47090	2	This term was made obsolete because it does not represent a real biological process.	0
4331	47096	2	This term was added by GO_REF:0000021.	0
4332	47105	2	See also the biological process terms 'peptidyl-D-alanine racemization, direct ; GO:0019916' and 'peptidyl-D-alanine racemization via peptidyl-L-serine ; GO:0019917'.	0
4333	47121	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4334	47129	2	This term was added by GO_REF:0000021. Note that this term is intended for annotation of gene products involved in mitochondrial shape changes associated with development; an example is the morphogenesis of the Nebenkern during spermatogenesis.	0
4335	47132	2	This term was added by GO_REF:0000021.	0
4336	47139	2	Note that some type IIb hypersensitivity responses (GO:0001795) are referred to simply as type II hypersensitivity in the earlier literature, but are mechanistically distinct from type IIa hypersensitivity.	0
4337	47150	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4338	47191	2	This term partially replaces the obsolete term 'modulation of growth or development of symbiont during interaction with host ; GO:0075338'. See also 'modulation of development of symbiont during interaction with host ; GO:0044145'.	0
4339	47208	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont protein kinase-mediated signal transduction ; GO:0075099".	0
4340	47222	2	This term was made obsolete because more specific terms exist.	0
4341	47234	2	Note that this term is intended for use in annotation of symbiont gene products. For host gene products that regulate indole acetic acid levels in the host, consider annotating to 'auxin homeostasis ; GO:0010252'.	0
4342	47241	2	Note that this term was split from 'positive regulation of actin polymerization and/or depolymerization ; GO:0045758' (sibling term 'positive regulation of actin depolymerization ; GO:0030836').	0
4343	47282	2	This term was added by GO_REF:0000021.	0
4344	47290	2	This term was added by GO_REF:0000021.	0
4345	47311	2	This term was made obsolete because it represents a pathological process.	0
4346	47319	2	This term was improved by GO_REF:0000022. It was moved. Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4347	47355	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4348	47358	2	See also the biological process term 'blood coagulation, extrinsic pathway ; GO:0007598'.	0
4349	47361	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4350	47369	2	This term was added by GO_REF:0000021.	0
4351	47370	2	Note that this term was split from 'cellular di-, tri-valent inorganic anion homeostasis ; GO:0030319' (sibling term 'cellular trivalent inorganic anion homeostasis' ; GO:0072502').	0
4352	47380	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, compacted morula ; EMAP:13' and 'TS4, inner cell mass ; EMAP:14'.	0
4353	47382	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4354	47392	2	Note that the term string was changed to be consistent with placement of this term in cell aging hierarchy.	0
4355	47402	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
4356	47409	2	Note that this term also includes the exchange of sperm-specific histones or protamines with histones, occurring during spermatogenesis and fertilization.	0
4357	47431	2	This term was made obsolete because it does not represent a real biological process.	0
4358	47436	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont signal transduction mediated by G-protein alpha subunit ; GO:0075091".	0
4359	47453	2	This term was added by GO_REF:0000021.	0
4360	47474	2	This term was made obsolete because it is not clear that this process occurs.	0
4361	47495	2	This term was made obsolete because it is a composite term that represents two individual processes.	0
4363	47526	2	See also the molecular function term 'aspartate N-acetyltransferase activity ; GO:0017188'.	0
4364	47534	2	Note that this term represents an activity and not a cellular structure. Consider also annotating to the cellular component term 'type II protein secretion system complex ; GO:0015627'. This process refers specifically to secretion across the outer membrane. For components of the Sec and Tat pathways, consider annotating to 'protein transport by the Sec complex ; GO:0043952' and 'protein transport by the Tat complex ; GO:0043953'. Note that this term is used for annotation of proteins that compose the secretion complex but not the proteins being secreted.	0
4365	47536	2	This term was added by GO_REF:0000021.	0
4366	47537	2	This term was made obsolete because its definition was inaccurate.	0
4367	47542	2	This term was made obsolete because low-density lipoprotein is a macromolecular complex, not a single class of molecule; its degradation involves the dissociation of non-covalently attached constituents as well as some breaking and reforming of covalent bonds.	0
4368	47545	2	At the time of obsoletion, under "regulation of molecular function", a term exists for "regulation of sequence-specific DNA binding transcription factor activity" and the positive and negative child terms, but no more detailed terms exist. In reannotating, please consider if the paper would support annotation to a regulation term for a specific RNA polymerase. Also consider if what you need would be regulation of protein binding transcription factor activity or any of its child terms instead. If so, please consider making a SF item regarding creation of such a term.	0
4369	47549	2	See also the fly_anatomy.ontology term 'procephalic segment ; FBbt:00000007' and its children.	0
4370	47558	2	See also the fly_anatomy.ontology term 'trichome ; FBbt:00004979'.	0
4371	47560	2	This term was added by GO_REF:0000021.	0
4372	47571	2	This term was made obsolete because styrene is not synthesized by living organisms and GO does not cover non-biological processes.	0
4373	47574	2	This term was made obsolete because there is no evidence for the existence of this process.	0
4374	47583	2	This term was made obsolete because it does not represent a real biological process.	0
4375	47597	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4376	47601	2	Note that this term is used to annotate gene products of the symbiont.	0
4377	47631	2	This term was added by GO_REF:0000021.	0
4378	47648	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4379	47650	2	Note that this term should not be confused with 'torso signaling pathway ; GO:0008293', although torso is abbreviated 'tor'.	0
4380	47660	2	This term was made obsolete because the entire branch of the ontology was changed.	0
4381	47662	2	This term was added by GO_REF:0000021.	0
4382	47669	2	Note that 'error-free' does not mean that literally zero errors occur during DNA synthesis, but that the error rate is low, comparable to that of DNA synthesis during replication.	0
4383	47670	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4384	47675	2	This term was made obsolete because it does not represent a real biological process.	0
4385	47688	2	This term was added by GO_REF:0000021.	0
4386	47691	2	This term was added by GO_REF:0000021.	0
4387	47699	2	This term was made obsolete because, as part of the GO/ChEBI alignment effort, curators determined that oxygen and reactive oxygen species should not be grouped together.	0
4388	47718	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
4389	47723	2	This term was made obsolete because it gives no indication of what it refers to.	0
4390	47742	2	This term was made obsolete because the three-iron three-sulfur cluster is now thought not to exist except possibly as an intermediate form.	0
4391	47755	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4392	47765	2	Note that this term refers to a signaling pathway, and should not be confused with function terms such as 'phospholipase activator activity ; GO:0016004'.	0
4393	47788	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4394	47804	2	Note that this term is intended to cover the insertion of pro-apoptotic proteins such as Bax or its homologs into mitochondrial membranes which occurs as an early step in the apoptotic program.	0
4395	47810	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4396	47811	2	This term was added by GO_REF:0000021.	0
4397	47817	2	This term was added by GO_REF:0000021.	0
4398	47824	2	This term was made obsolete because it is ambiguous; 'killer activity' could refer to several different processes.	0
4399	47838	2	This term was made obsolete because it represents a single activity.	0
4400	47839	2	This term was made obsolete because more appropriate terms were created.	0
4401	47844	2	This term was added by GO_REF:0000021.	0
4402	47848	2	This term was added by GO_REF:0000021.	0
4403	47868	2	This term should only be used when Wnt receptor signaling occurs via a beta-catenin-independent route but the downstream effectors are unknown. If the downstream effectors are known, consider instead annotating to one of the children, or requesting a new term.	0
4404	47871	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4405	47885	2	This term was added by GO_REF:0000021.	0
4406	47887	2	This term was added by GO_REF:0000021.	0
4407	47891	2	This term was added by GO_REF:0000021.	0
4408	47904	2	This term was made obsolete because a more correct term has been created.	0
4409	47914	2	This term was made obsolete because it does not represent a real biological process.	0
4410	47921	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4411	47927	2	See also the molecular function term 'protein binding, bridging ; GO:0030674'.	0
4412	47929	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, inner cell mass ; EMAP:14' and 'TS5, inner cell mass ; EMAP:24'.	0
4413	47948	2	This term was added by GO_REF:0000021.	0
4414	47963	2	This term was added by GO_REF:0000021. Note that this term was placed as a child of 'brain development' because the nucleus spans multiple brain regions.	0
4415	47970	2	This term was added by GO_REF:0000021.	0
4416	47980	2	This term partially replaces the obsolete term 'growth or development of symbiont in host cell ; GO:0075065'. See also 'development of symbiont in host cell ; GO:0044118'.	0
4417	47994	2	Note that this term should not be used to annotate gene products that are involved in the host response to pathogenesis. It should only be used to annotate those gene products involved in the generation of pathogenesis by the pathogen itself.	0
4418	48001	2	This term was added by GO_REF:0000021.	0
4419	48005	2	This term was added by GO_REF:0000021.	0
4420	48006	2	This term was added by GO_REF:0000021.	0
4421	48007	2	Note that cell surface molecules involved in the direct binding of bacteria may be also annotated to the molecular function term 'bacterial cell surface binding ; GO:0051635'. Note that cell surface molecules involved in the direct binding to opsonins such as complement components or antibodies may be also annotated to the term 'opsonin binding ; GO:0001846'.	0
4422	48014	2	For example, as seen in myxobacterium and Dictyostelium.	0
4423	48018	2	This term was added by GO_REF:0000021.	0
4424	48029	2	This term was made obsolete because it was a grouping term that was poorly defined and did not provide a particularly meaningful grouping, since even for those amino acids commonly found in proteins, not all molecules necessarily end up incorporated into proteins. The term also violated the principle of positivity.	0
4425	48063	2	The term 'RNA editing' (GO:0016547) was merged into 'RNA modification' (GO:0009451) on the basis of statements in the preface of Modification and Editing of RNA (ISBN:1555811337) that there is no clear distinction between modification and editing. Parallel changes were made for substrate (e.g. tRNA, rRNA, etc.) specific child terms of 'RNA editing'.	0
4426	48071	2	This term was made obsolete because it does not represent a real biological process.	0
4427	48074	2	This term was made obsolete because it relates to a specific gene family rather than a process.	0
4428	48097	2	Note that this term was split from 'negative regulation of actin polymerization and/or depolymerization ; GO:0045757' (sibling term 'negative regulation of actin polymerization ; GO:0030837').	0
4429	48106	2	This term was added by GO_REF:0000021.	0
4430	48119	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4431	48123	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4432	48131	2	This term was added by GO_REF:0000021.	0
4433	48156	2	This term was made obsolete because 'virulence' is not a biological process; however, alteration of virulence also does not fit under 'regulation of biological quality ; GO:0065008' because it is a product both of the genotype/phenotype of the infecting organism and the genotype/phenotype of the organism being infected and varies by individual within a species both for the infecting organism and the infected organism.	0
4434	48158	2	This term was made obsolete because it represents a class of gene products.	0
4435	48196	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4436	48197	2	This term was made obsolete because it does not represent a real biological process.	0
4437	48216	2	This term was made obsolete because the prismane 6Fe-6S cluster is now thought not to exist.	0
4438	48226	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4439	48257	2	This term was made obsolete because it represents a process, NAD dephosphorylation, that does not exist.	0
4440	48273	2	This term was added by GO_REF:0000022.	0
4441	48279	2	Please note that this term does not refer to the in vitro assay called erythrocyte rosetting.	0
4442	48288	2	This term was added by GO_REF:0000021.	0
4443	48295	2	This term partially replaces the obsolete term 'negative regulation of growth or development of symbiont during interaction with host ; GO:0075340'. See also 'negative regulation of growth of symbiont during interaction with host ; GO:0044146'.	0
4444	48322	2	This term was added by GO_REF:0000021.	0
4445	48324	2	Note that the assembly is regulated by several small GTPases of the Rab and Rho families.	0
4446	48338	2	This term partially replaces the obsolete term 'growth or development of symbiont on or near host ; GO:0044408'. See also 'development of symbiont on or near host ; GO:0044132'.	0
4447	48341	2	This term was made obsolete because it has been superseded by more accurate terms to represent the biological processes occurring, and it is not clear that this term represents a useful entity.	0
4448	48342	2	This term was made obsolete because it does not represent a real biological process.	0
4449	48369	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'positive regulation of development of symbiont in host ; GO:0044129' and 'positive regulation of growth of symbiont in host ; GO:0044128'.	0
4450	48389	2	This term was added by GO_REF:0000021.	0
4451	48404	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4452	48415	2	This term describes the breakdown of epidermal growth factor within the cell, following internalization. For proteolysis events that result in the maturation of an epidermal growth factor receptor ligand, see 'epidermal growth factor receptor ligand maturation ; GO:'.	0
4453	48433	2	Note that this term is used to annotate gene products of the symbiont.	0
4454	48443	2	This term was made obsolete because it represents two processes.	0
4455	48445	2	Note that a lymphocyte is a cell of the B cell, T cell, or natural killer cell lineage (CL:0000542).	0
4456	48450	2	This term partially replaces the obsolete term 'growth or development in other organism during symbiotic interaction ; GO:0051831'. See also 'growth in other organism during symbiotic interaction ; GO:0044112'.	0
4457	48455	2	This term was made obsolete because it does not represent a process.	0
4458	48465	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4459	48468	2	This term was made obsolete because it does not represent a real process that exists in nature.	0
4460	48474	2	This term was added by GO_REF:0000021.	0
4461	48489	2	This term was added by GO_REF:0000021.	0
4462	48566	2	Palmitoylation of a non-terminal cysteine residue always occurs on a sulfur (S) atom.	0
4463	48577	2	This term was added by GO_REF:0000021.	0
4464	48581	2	Note that IL-28A, IL-28B, and IL-29 are types of interferon-lambda.	0
4465	48586	2	This term was added by GO_REF:0000021.	0
4466	48587	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4467	48606	2	See also the cellular component term 'Cajal body ; GO:0015030'.	0
4468	48610	2	This term was added by GO_REF:0000021.	0
4469	48625	2	This term was added by GO_REF:0000021.	0
4470	48643	2	This term was added by GO_REF:0000021.	0
4471	48662	2	This term was added by GO_REF:0000021.	0
4472	48670	2	This term was made obsolete because it was ambiguously defined and incorrectly placed in the ontology.	0
4473	48697	2	Note that amino acid and derivative metabolism should not be annotated here. Instead use the 'amino acid and derivative metabolism' node.	0
4474	48733	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4475	48737	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4476	48740	2	This term was added by GO_REF:0000021.	0
4477	48742	2	The amount of sodium excreted in urine over a unit of time can be increased by increasing the volume of urine produced (diuresis) and/or by increasing the concentration of sodium in the urine.	0
4478	48751	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4479	48753	2	This term was added by GO_REF:0000022.	0
4480	48759	2	Note that this term is used to annotate gene products of the symbiont.	0
4481	48768	2	This term was added by GO_REF:0000021.	0
4482	48775	2	This term was made obsolete because it is a gene product specific term.	0
4483	48776	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
4484	48795	2	This term was made obsolete because carbazole is not synthesized by living organisms and GO does not cover non-biological processes.	0
4485	48801	2	This term was made obsolete because it represents several different processes.	0
4486	48809	2	This term was added by GO_REF:0000021.	0
4487	48811	2	Note that the word necrosis has been widely used in earlier literature to describe forms of cell death which are now known by more precise terms, such as apoptosis. Necrosis can occur in a regulated fashion, involving a precise sequence of signals.	0
4488	48826	2	This term was added by GO_REF:0000021.	0
4489	48831	2	This term was made obsolete because phthalates are not synthesized by living organisms, and GO does not cover non-biological processes.	0
4490	48862	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4491	48890	2	See also the molecular function term 'peptide alpha-N-acetyltransferase activity ; GO:0004596'.	0
4492	48895	2	This term was made obsolete because antibodies are not found in the taxon Protostomia.	0
4493	48908	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4494	48941	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "negative regulation by host of symbiont receptor-mediated signal transduction ; GO:0075080".	0
4495	48955	2	This term was made obsolete because 'sensitivity/resistance' implies a phenotype rather than a biological process.	0
4496	48958	2	This term was added by GO_REF:0000021.	0
4497	48992	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont transmembrane receptor-mediated signal transduction ; GO:0075082".	0
4498	48993	2	This term was added by GO_REF:0000021.	0
4499	49002	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4500	49030	2	This term was made obsolete because the syntax of the term is incorrect.	0
4501	49044	2	This term was made obsolete because it does not represent a real biological process.	0
4502	49049	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4503	49054	2	This term was added by GO_REF:0000021.	0
4504	49093	2	This term was added by GO_REF:0000021.	0
4505	49097	2	This term was made obsolete because unidirectional conjugation occurs only in prokaryotes, which do not undergo morphogenetic changes associated with conjugation. In short, the process described by this term does not occur.	0
4506	49101	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4507	49117	2	This term was made obsolete because it does not represent a real biological process.	0
4508	49125	2	See also the cellular component term 'Nebenkern ; GO:0016006', and the fly_anatomy.ontology term 'Nebenkern ; FBbt:00004943'.	0
4509	49129	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4510	49139	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4511	49140	2	Note that some type IIa hypersensitivity response (GO:0001794) are referred to simply as type II hypersensitivity in the earlier literature, but are mechanistically distinct from type IIb hypersensitivity.	0
4512	49173	2	This term was added by GO_REF:0000021.	0
4513	49176	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products of the symbiont involved in this process.	0
4514	49189	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4515	49203	2	This term was added by GO_REF:0000021.	0
4516	49205	2	This term refers to the breakdown of mature proteins. For cleavage events involved in generating a mature protein from a precursor, consider instead the term 'protein maturation ; GO:0051604' and its children.	0
4517	49220	2	Note that this term is intended for use in annotation of symbiont gene products. For host gene products that regulate abscisic acid levels in the host, consider annotating to 'regulation of abscisic acid mediated signaling ; GO:0009787' or 'regulation of abscisic acid biosynthetic process ; GO:0010115'.	0
4518	49238	2	This term was added by GO_REF:0000021.	0
4519	49244	2	This term was added by GO_REF:0000021.	0
4520	49271	2	This term was made obsolete because cytoskeleton is not a process, so the term made no sense.	0
4521	49277	2	Note that NK T cells are a distinct lineage of T cells expressing natural killer cell markers and having T cell receptors characterized by the usage of a restricted repertoire of variable region gene segments.	0
4522	49289	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
4523	49303	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host transmembrane receptor-mediated cAMP signal transduction ; GO:0075116".	0
4524	49306	2	This term partially replaces the obsolete term 'growth or development of symbiont in host organelle ; GO:0075066'. See also 'growth of symbiont in host organelle ; GO:0044121'.	0
4525	49325	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
4526	49329	2	Note that this process has been observed in some archeal and bacterial species.	0
4527	49347	2	This term was added by GO_REF:0000021.	0
4528	49360	2	Note that this term refers only to the specific, original 'tumor necrosis factor' protein (TNF) and not other members of the tumor necrosis factor superfamily (those with the gene symbol root 'TNFSF').	0
4529	49366	2	This term was added by GO_REF:0000021.	0
4530	49397	2	This term was added by GO_REF:0000021.	0
4531	49407	2	This term was made obsolete because it is a gene product specific term.	0
4532	49415	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
4533	49424	2	Note that this term refers to a signaling pathway, and should not be confused with function terms such as 'phospholipase inhibitor activity ; GO:0004859'.	0
4534	49425	2	This term was made obsolete because it does not make sense.	0
4535	49427	2	This term was added by GO_REF:0000021.	0
4536	49434	2	This term was added by GO_REF:0000021.	0
4537	49466	2	This term was made obsolete because it does not represent a real biological process.	0
4538	49501	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4539	49504	2	This term was made obsolete because it was wrongly defined.	0
4540	49516	2	This term was made obsolete because it does not represent a real biological process.	0
4541	49517	2	This term was made obsolete because 6-hydroxycineole is not synthesized by living organisms and GO does not cover non-biological processes.	0
4542	49525	2	See also the molecular function term 'ribulose-bisphosphate carboxylase activity ; GO:0016984'.	0
4543	49527	2	This term was added by GO_REF:0000021.	0
4544	49532	2	This term was made obsolete because it does not represent a valid biological process that occurs in nature.	0
4545	49539	2	This term was made obsolete because it does not describe a biological process.	0
4546	49540	2	This term was made obsolete because the definition was incorrect. Not all neuroblasts divide asymmetrically. Neuroblasts give rise to neurons after division.	0
4547	49552	2	This term was made obsolete because it has been split into two new terms.	0
4548	49557	2	This term was added by GO_REF:0000021.	0
4549	49566	2	This term was added by GO_REF:0000021.	0
4550	49572	2	This term was added by GO_REF:0000021.	0
4551	49577	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4999	54642	2	Note that this term is used to annotate gene products of the symbiont.	0
4552	49597	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4553	49626	2	Note that this term is used to annotate gene products of the symbiont.	0
4554	49627	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4555	49632	2	This term was added by GO_REF:0000021.	0
4556	49667	2	See also the fly_anatomy.ontology term 'maxillary segment ; FBbt:00000013'.	0
4557	49680	2	This term was made obsolete because cytoskeleton is neither a process nor a trait, so the term made no sense.	0
4558	49683	2	This term was made obsolete because it is a gene product specific term.	0
4559	49686	2	This term was added by GO_REF:0000021.	0
4560	49688	2	This term was added by GO_REF:0000021.	0
4561	49693	2	At the time of obsoletion, under "regulation of molecular function", a term exists for "regulation of sequence-specific DNA binding transcription factor activity" and the positive and negative child terms, but no more detailed terms exist. In reannotating, please consider if the paper would support annotation to a regulation term for a specific RNA polymerase. Also consider if what you need would be regulation of protein binding transcription factor activity or any of its child terms instead. If so, please consider making a SF item regarding creation of such a term.	0
4562	49702	2	This term was made obsolete because 'sensitivity/resistance' implies a phenotype rather than a biological process.	0
4563	49703	2	This term was added by GO_REF:0000021.	0
4564	49706	2	These processes continue to 60 DPA in Gossypium spp.	0
4565	49711	2	This term was added by GO_REF:0000021.	0
4566	49717	2	This term was added by GO_REF:0000021.	0
4567	49727	2	This term was made obsolete because toluene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4568	49751	2	Note that promoter clearance is represented as a separate step, not part_of either initiation or elongation.	0
4569	49753	2	See also the biological process term 'peptidyl-tyrosine dehydrogenation ; GO:0018251'.	0
4570	49785	2	Note that Group I introns are known to be found in a number of places: rRNA, mRNA, and tRNA in organelles of fungi, plants, and protists; tRNA and mRNA of bacteria and bacteriophage; rRNA of protists and fungi; and occasionally in mRNA of animal mitochondria (e.g. sea anemone).	0
4571	49796	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host cAMP-mediated signal transduction ; GO:0075210".	0
4572	49800	2	This term was added by GO_REF:0000021.	0
4573	49801	2	This term was added by GO_REF:0000021.	0
4574	49817	2	This term was made obsolete because trinitrotoluene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4575	49831	2	This term was made obsolete because it was an unnecessary grouping term. Striated muscle comprises skeletal and cardiac muscle, but GO has opted not to group the muscle fiber development terms.	0
4576	49835	2	See also the fly_anatomy.ontology term 'spermathecum ; FBbt:00004921'.	0
4577	49869	2	This term was made obsolete because the term name is ambiguous and as a result, the term was incorrectly placed in the ontology (it was a descendant of 'protein transport').	0
4578	49882	2	This term was added by GO_REF:0000021.	0
4579	49895	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4580	49903	2	See also the cellular component term 'mitochondrial inner membrane ; GO:0005743'.	0
4581	49912	2	See also the cellular component term 'mitochondrial outer membrane ; GO:0005741'.	0
4582	49914	2	Note that this term should be used to annotate gene products of the organism involved in this process.	0
4583	49943	2	Note that this term represents an activity and not a cellular structure. Consider also annotating to the cellular component term 'type IV protein secretion system complex ; GO:0043684'.	0
4584	49946	2	This term was made obsolete because it contains gene product and species specific information.	0
4585	49951	2	This term was added by GO_REF:0000021.	0
4586	49954	2	This term was added by GO_REF:0000022.	0
4587	49962	2	Note that this term is used to annotate gene products of the symbiont.	0
4588	49968	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4589	49969	2	Note that this term does not fall under the general GO definition for biosynthetic processes, which is 'The chemical reactions and pathways resulting in the formation of... ', because beta-amyloid can only be formed by the proteolysis of a larger molecule (see term definition). The word 'formation' is therefore used in place of biosynthesis.	0
4590	49985	2	This term was added by GO_REF:0000021.	0
4591	49995	2	This term was added by GO_REF:0000021.	0
4592	50003	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host MAP kinase-mediated signal transduction pathway ; GO:0052078".	0
4593	50008	2	Note that 'hydrolysis' is actually a reaction rather than a process. The synonym 'hemoglobin hydrolysis' was the text string associated with the secondary ID GO:0020029, which was retained because its definition did describe a process.	0
4594	50016	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host signal transduction mediated by G-protein gamma subunit ; GO:0075127".	0
4595	50027	2	This term was made obsolete because it has been split.	0
4596	50030	2	This term was added by GO_REF:0000021.	0
4597	50067	2	This term was added by GO_REF:0000022.	0
7210	69715	2	A derivative of the root apical meristem.	0
4598	50071	2	The term 'RNA editing' (GO:0016547) was merged into 'RNA modification' (GO:0009451) on the basis of statements in the preface of Modification and Editing of RNA (ISBN:1555811337) that there is no clear distinction between modification and editing.	0
4599	50073	2	Note that the chromatophore mentioned here is distinct from the pigment bearing structure found in certain photosynthetic bacteria and cyanobacteria. It is also different from the plant chromoplast, which is also sometimes called a chromatophore.	0
4600	50077	2	This term was made obsolete because more appropriate terms were created.	0
4601	50084	2	This term was added by GO_REF:0000021.	0
4602	50086	2	See also the molecular function term 'ferrochelatase activity ; GO:0004325'.	0
4603	50087	2	Note that this reaction is catalyzed by myeloperoxidase in neutrophils.	0
4604	50091	2	Note that growth cone collapse has been observed only in assays performed in vitro.	0
4605	50096	2	Note that this term should not be confused with 'response to unfolded protein ; GO:0006986', which refers to any response to the presence of unfolded proteins anywhere in the cell or in multicellular organism. Also see 'ER-associated protein catabolic process ; GO:0030433'.	0
4606	50099	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4607	50103	2	Note that this term is used to annotate gene products of the symbiont.	0
4608	50111	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4609	50112	2	This term was added by GO_REF:0000021.	0
4610	50130	2	This term was made obsolete because it does not represent a real process that exists in nature.	0
4611	50144	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host transmembrane receptor-mediated signal transduction ; GO:0075112".	0
4612	50150	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host signal transduction mediated by G-protein alpha subunit ; GO:0075123".	0
4613	50155	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4614	50168	2	See also the molecular function term 'gamma-glutamyl carboxylase activity ; GO:0008488'.	0
4615	50204	2	See also the cellular component term 'PML body ; GO:0016605'.	0
4616	50211	2	This term was added by GO_REF:0000021.	0
4617	50212	2	See also UniProtKB:P04160.	0
4618	50230	2	This term was added by GO_REF:0000021.	0
4619	50237	2	This term was added by GO_REF:0000021.	0
4620	50257	2	This term was made obsolete because it does not represent a process unique to splicing of the MATa1 (A1) pre-mRNA, but a recycling defect exacerbated by the presence of two introns within the same gene.	0
4621	50273	2	This term was made obsolete because it does not describe a biological process.	0
4622	50283	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
4623	50292	2	This term was added by GO_REF:0000021.	0
4624	50322	2	This term was made obsolete because 'heavy metal' is an ambiguous grouping term which has no set meaning (see Pure Appl. Chem. Vol. 74, No. 5, pp. 793-807, 2002, for more information).	0
4625	50325	2	This term was added by GO_REF:0000021.	0
4626	50340	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont signal transduction mediated by G-protein beta subunit ; GO:0075094".	0
4627	50384	2	This term was made obsolete because it does not represent a real biological process.	0
4628	50387	2	Note that this term represents an activity and not a cellular structure. Consider also annotating to the cellular component term 'type VI protein secretion system complex ; GO:0033104'.	0
4629	50390	2	Note that GTP-binding Rab proteins serve as regulators of vesicle targeting and fusion.	0
4630	50430	2	This term was made obsolete because the syntax of the term is incorrect.	0
4631	50439	2	This term was added by GO_REF:0000021.	0
4632	50461	2	See also the molecular function term 'peptide-aspartate beta-dioxygenase activity ; GO:0004597'.	0
4633	50470	2	See also the biological process term 'feeding behavior ; GO:0007631'.	0
4634	50482	2	This term was made obsolete because the term string made no sense.	0
4635	50486	2	This term was made obsolete because it does not represent a real biological process.	0
4636	50489	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
4637	50508	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4638	50509	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4639	50510	2	This term was made obsolete because it represents a molecular function.	0
4640	50530	2	See also the molecular function term 'peptide-aspartate beta-dioxygenase activity ; GO:0004597'.	0
4641	50533	2	Note that this term is used to annotate gene products of the symbiont.	0
4642	50557	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4643	50558	2	This term was made obsolete because it does not refer to a true process, but rather to the consequences of aberrations occurred during mitosis.	0
4644	50562	2	See also the biological process term 'apoptosis ; GO:0006915'.	0
4645	50563	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4646	50568	2	This term was added by GO_REF:0000021.	0
5139	55892	2	This term was made obsolete because it represents a class of gene products.	0
4647	50578	2	Note that this term and its definition depart from the usual conventions for GO 'regulation' process terms; regulation of rate is not usually distinguished from regulation of extent or frequency, but it makes sense to do so for growth regulation.	0
4648	50581	2	This term was made obsolete because 'heavy metal' is an ambiguous grouping term which has no set meaning (see Pure Appl. Chem. Vol. 74, No. 5, pp. 793-807, 2002, for more information).	0
4649	50590	2	This term was made obsolete because the meaning of the term is ambiguous. Note that this term was intended for the annotation of both ligands and receptors.	0
4650	50596	2	This term was added by GO_REF:0000021.	0
4651	50603	2	This term was made obsolete because it does not represent a real biological process.	0
4652	50607	2	This term was improved by GO_REF:0000022. It was moved. Note that this term and its children describe contact-dependent killing of target cells by lymphocytes and myeloid cells of the immune system.	0
4653	50635	2	This term was added by GO_REF:0000021.	0
4654	50659	2	Note that this term is used to annotate gene products of the symbiont.	0
4655	50684	2	This term was made obsolete because adaptation was not deemed to be a valid biological process.	0
4656	50696	2	This term was made obsolete because it does not represent a real biological process.	0
4657	50716	2	This term was added by GO_REF:0000021.	0
4658	50723	2	Note that this term represents the return of B-1 B cell levels to stable numbers following an immune response, as well as the proliferation and elimination of B-1 B cells in a organism required to maintain stable numbers in the absence of an outside stimulus.	0
4659	50732	2	This term was made obsolete because it does not reflect an accurate biological process, as sumoylation of a protein does not lead to catabolism of that protein.	0
4660	50751	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4661	50756	2	This term was added by GO_REF:0000021.	0
4662	50762	2	This term was added by GO_REF:0000021.	0
4663	50770	2	Note that this term should not be confused with the molecular function term 'Rap GTPase activator activity ; GO:0046582', which refers specifically to the activity of Rap GAPs.	0
4664	50783	2	This term was made obsolete because, according to PUMA2, this "pathway" is a single reaction, corresponding to 'carbamate kinase activity ; GO:0008804' (EC:2.7.2.2).	0
4665	50793	2	This term was made obsolete because it has been split.	0
4666	50794	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4667	50798	2	This term was added by GO_REF:0000022.	0
4668	50803	2	This term was made obsolete because this process does not occur: the modification occurs before it can be an active site.	0
4669	50816	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term 'negative regulation of plant-type hypersensitive response ; GO:0034051'.	0
4670	50826	2	Note that dendrites of dendritic cells should not be confused with neuronal cell dendrites, which process electrical signals.	0
4671	50845	2	This term was made obsolete because it does not represent a real biological process.	0
4672	50862	2	Note that this term is used to annotate gene products of the symbiont.	0
4673	50868	2	Note that this term is intended for use in annotation of symbiont gene products. For host gene products that modify host proteins, consider annotation to 'protein modification process' GO:0006464.	0
4674	50872	2	This term was improved by GO_REF:0000022. It was moved.	0
4675	50877	2	This term was added by GO_REF:0000021.	0
4676	50918	2	This term was added by GO_REF:0000021.	0
4677	50931	2	This term was made obsolete because the original meaning of the term is unclear, the current definition is incorrect, and it does not describe a biological process.	0
4678	50934	2	See also the biological process term 'peptidyl-dehydroalanine biosynthetic process from peptidyl-tyrosine or peptidyl-serine ; GO:0018250'.	0
4679	50940	2	This term was added by GO_REF:0000021.	0
4680	50966	2	See also the fly_anatomy.ontology term 'tracheal system ; FBbt:00005024'.	0
4681	50968	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4682	50977	2	This term was made obsolete because it was not defined and the string name implied two separate processes.	0
4683	50986	2	The processes involved in the massive amount of secondary wall cellulose synthesis in seed trichomes continue to 30 DPA in Gossypium spp.	0
4684	50996	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4685	51005	2	This term was added by GO_REF:0000021.	0
4686	51010	2	This term was made obsolete because it represents multiple processes that are represented elsewhere in the process ontology.	0
4687	51015	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'development during symbiotic interaction ; GO:0044111' and 'growth of symbiont in host intercellular space ; GO:0044125'.	0
4688	51023	2	Note that this term is only to be used in situations were this process occurs normally. Not to be used to describe mutant or diseased states.	0
4689	51027	2	This term was made obsolete because it describes a phenotype rather than a biological goal.	0
4690	51030	2	This term was added by GO_REF:0000021.	0
4691	51036	2	This term was added by GO_REF:0000021.	0
4692	51042	2	This term was made obsolete because its definition was inaccurate.	0
4693	51062	2	This term was added by GO_REF:0000021.	0
4694	51084	2	See also the molecular function term 'procollagen-proline 3-dioxygenase activity ; GO:0019797'.	0
4695	51086	2	This term was added by GO_REF:0000021.	0
4696	51087	2	Note that this term is used to annotate gene products of the symbiont.	0
4697	51106	2	This term was added by GO_REF:0000021.	0
4701	51192	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
4702	51206	2	This term was added by GO_REF:0000021.	0
4703	51216	2	This term was added by GO_REF:0000021.	0
4704	51226	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4705	51232	2	See also the biological process term 'endocytosis ; GO:0006897'.	0
4706	51235	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4707	51237	2	This term was made obsolete because toluene-4-sulfonate is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4708	51244	2	This term was made obsolete because it does not represent a real biological process.	0
4709	51254	2	Note that this term is used to annotate gene products of the symbiont.	0
4710	51268	2	This term was added by GO_REF:0000021.	0
4711	51275	2	This term was made obsolete because it does not represent a real biological process.	0
4712	51285	2	This term was added by GO_REF:0000021.	0
4713	51304	2	This term was added by GO_REF:0000021.	0
4714	51323	2	This term was made obsolete because it represents two separate processes (insertion and deletion).	0
4715	51356	2	Note that this is not a part of spliceosomal RNA splicing.	0
4716	51357	2	This term was added by GO_REF:0000021.	0
4717	51359	2	This term was made obsolete because more specific terms were created.	0
4718	51366	2	See also the biological process term 'peptidyl-tyrosine dehydrogenation ; GO:0018251'.	0
4719	51373	2	This term was made obsolete because cytoskeleton is not a process, so the term made no sense.	0
4720	51401	2	This term was added by GO_REF:0000021.	0
4721	51406	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4722	51411	2	This term was made obsolete because the process is not exclusive to the carboxy terminus of a protein.	0
4723	51427	2	Note that this process is the opposite of long-term maintenance of gene activation.	0
4724	51440	2	This term was made obsolete because 4-nitrotoluene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4725	51450	2	This term was added by GO_REF:0000022.	0
4726	51452	2	This term was added by GO_REF:0000021.	0
4727	51453	2	Note that this type of immune receptor may not be limited to insects.	0
4728	51458	2	This term was made obsolete because it represents a passive process which occurs without the aid of gene products.	0
4729	51460	2	This term was made obsolete because p-xylene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
4730	51466	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
4731	51506	2	This term was made obsolete because it was replaced with more appropriate terms.	0
4732	51510	2	This term was added by GO_REF:0000021.	0
4733	51521	2	This term was made obsolete because it does not describe a biological process.	0
4734	51536	2	Note that Group III introns are known to be found in mRNA of plastids of euglenoid protists.	0
4735	51544	2	Note that this term refers only to the specific, original 'tumor necrosis factor' protein (TNF) and not other members of the tumor necrosis factor superfamily (those with the gene symbol root 'TNFSF').	0
4736	51546	2	Note that this term is to be used only for gene products involved in the expression of IgD through recombinational switching into the vestigial switch region at the 5' end of the IgD gene segment, rather than gene products involved in the expression of IgD through alternative splicing mechanisms.	0
4737	51558	2	This term was added by GO_REF:0000021.	0
4738	51570	2	This term was added by GO_REF:0000021.	0
4739	51578	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4740	51596	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4741	51614	2	Note that this term is used to annotate gene products of the symbiont.	0
4742	51630	2	See also the fly_anatomy.ontology term 'prepupa ; FBbt:00002952'.	0
4743	51637	2	This term was added by GO_REF:0000021.	0
4744	51638	2	Note that this term should not be confused with the molecular function term 'ARF GTPase activator activity ; GO:0008060', which refers specifically to the activity of ARF GAPs.	0
4745	51643	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host signal transduction mediated by G-protein gamma subunit ; GO:0075129".	0
4746	51646	2	This term was made obsolete because it does not represent a real biological process.	0
4747	51653	2	Note that this term should not be confused with 'cellular response to anoxia ; GO:0071454'. Note that in laboratory studies, hypoxia is typically studied at O2 concentrations ranging from 0.1 - 5%.	0
4748	51664	2	Note that this term is used to annotate gene products of the symbiont.	0
4749	51667	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4750	51668	2	This term was added by GO_REF:0000021.	0
4751	51669	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4752	51699	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4753	51703	2	Note that this term is reserved for annotation of gene products involved in the formation of the thymus itself, not for gene products involved in T cell differentiation in the thymus or elsewhere.	0
4754	51719	2	This term was made obsolete because it does not represent a real biological process.	0
4755	51724	2	This term was made obsolete because it is a gene product specific term.	0
4756	51725	2	This term was made obsolete because it was an unnecessary grouping term.	0
4757	51726	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4758	51762	2	This term was added by GO_REF:0000021.	0
4759	51771	2	This term was added by GO_REF:0000022. Note that this term is intended for use when a gene product is seen to cause apparent increases in intracellular or extracellular cytokine levels, without specific regard as to whether the increase is due to increased biosynthesis, increased secretion of preexisting cytokine molecules, or increased conversion from precursor molecules.	0
4760	51788	2	Note that term is to be used to annotate gene products in the symbiont. To annotate host gene products, consider the biological process term 'regulation of apoptosis ; GO:0042981'.	0
4761	51795	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4762	51797	2	Note that this term was split from 'positive regulation of intermediate filament polymerization and/or depolymerization ; GO:0045826' (sibling term 'positive regulation of intermediate filament depolymerization ; GO:0030844').	0
4763	51799	2	Note that the Arthus reaction is an example of type III hypersensitivity.	0
4764	51810	2	This term was made obsolete because it is a gene product specific term.	0
4765	51825	2	This term was made obsolete because it is a phenotype rather than a biological process.	0
4766	51840	2	This term was added by GO_REF:0000021.	0
4767	51843	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4768	51845	2	This term was added by GO_REF:0000021.	0
4769	51853	2	This term was added by GO_REF:0000021.	0
4770	51868	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4771	51894	2	Note that this step represents formation of the A1 complex (yeast) or the B2 complex (mammalian).	0
4772	51904	2	This term was made obsolete because it represents a phenotype.	0
4773	51906	2	This term was made obsolete because the process it represents is pathological.	0
4774	51917	2	This term was added by GO_REF:0000021.	0
4775	51940	2	This term was added by GO_REF:0000021.	0
4776	51947	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4777	51955	2	This term was added by GO_REF:0000021.	0
4778	51957	2	This term was made obsolete because its meaning was unclear.	0
4779	51970	2	Unidimensional cell growth refers to a change in both cell size and cell shape. For cell shape changes where cell size is not affected, consider instead the term 'regulation of cell shape ; GO:0008360' and its children.	0
4780	51995	2	This term was added by GO_REF:0000021.	0
4781	51996	2	This term was added by GO_REF:0000021.	0
4782	52012	2	This term was made obsolete because it does not represent a real biological process.	0
4783	52018	2	Note that this step represents the formation of the A2-2 complex (yeast) or the C1 complex (mammalian).	0
4784	52025	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4785	52029	2	This term partially replaces the obsolete term 'regulation of growth or development of symbiont in host ; GO:0033665'. See also 'regulation of growth of symbiont in host ; GO:0044126'.	0
4786	52036	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4787	52055	2	This term was made obsolete because it does not represent a real process that exists in nature.	0
4788	52069	2	This term was added by GO_REF:0000021.	0
4789	52075	2	See also the biological process terms 'peptide cross-linking via L-seryl-5-imidazolinone glycine ; GO:0018252' and 'peptide cross-linking via 2-imino-glutaminyl-5-imidazolinone glycine ; GO:0019729'.	0
4790	52088	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont adenylate cyclase activity ; GO:0075075".	0
4791	52098	2	This term was added by GO_REF:0000021.	0
4792	52102	2	This term was added by GO_REF:0000021.	0
4793	52103	2	Note that epinephrine and norepinephrine are ligands for the same receptors, and there are multiple adrenergic receptors.	0
4794	52107	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'growth of organism on or near symbiont surface ; GO:0044151' and 'development of organism on or near symbiont surface ; GO:0044150'.	0
4795	52119	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
4796	52122	2	This term was made obsolete because more appropriate terms were created.	0
4797	52123	2	This term was added by GO_REF:0000021.	0
4798	52140	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4799	52157	2	See also the fly_anatomy.ontology term 'intercalary segment ; FBbt:00000010'.	0
4800	52165	2	This term was added by GO_REF:0000021.	0
4801	52167	2	This term was added by GO_REF:0000021.	0
7294	69915	2	Found in bryophytes.	0
4802	52181	2	This term was made obsolete because there is no clear difference between the sensu Insecta term and the generic term.	0
4803	52191	2	This term was added by GO_REF:0000021.	0
4804	52212	2	This term was added by GO_REF:0000021.	0
4805	52215	2	This term was added by GO_REF:0000021.	0
4806	52216	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
4807	52234	2	See also the Cell Ontology term 'spermatid ; CL:0000018'.	0
4808	52251	2	This term was made obsolete because its definition was inaccurate.	0
4809	52267	2	This term was made obsolete because it does not represent a real biological process.	0
4810	52286	2	Note that the syntax of the definition of the this term is different from the usual regulation syntax because it describes regulation of a trait rather than regulation of a process.	0
4811	52288	2	This term was added by GO_REF:0000021.	0
4812	52318	2	Palmitoylation of a non-terminal threonine residue always occurs on an oxygen (O) atom.	0
4813	52321	2	This term was added by GO_REF:0000022.	0
4814	52325	2	This term was made obsolete because it represents a function rather than a process.	0
4815	52326	2	This term was made obsolete because it is a gene product specific term.	0
4816	52363	2	This term was added by GO_REF:0000021.	0
4817	52391	2	This term was made obsolete because it was not defined and did not correspond to the production of a single specific mature rRNA product.	0
4818	52403	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'negative regulation of development of symbiont during interaction with host ; GO:0044147' and 'negative regulation of growth of symbiont during interaction with host ; GO:0044146'.	0
4819	52405	2	See also the Cell Ontology terms 'spermatogonium ; CL:0000020' and 'primary spermatocyte ; CL:0000656'.	0
4820	52406	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4821	52417	2	This term was added by GO_REF:0000021.	0
4822	52451	2	This term was added by GO_REF:0000021.	0
4823	52461	2	This term was added by GO_REF:0000021.	0
4824	52477	2	This term was added by GO_REF:0000021.	0
4825	52481	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, trophectoderm ; EMAP:19'.	0
4826	52496	2	This term was added by GO_REF:0000021.	0
4827	52504	2	This term was made obsolete because the dissociation of heterotrimeric G protein subunits is a consequence of a conformational change, which is in turn a consequence of ligand binding; it does not require multiple activities specifically to bring about.	0
4828	52511	2	This term was made obsolete because it does not represent a real biological process.	0
4829	52512	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4830	52518	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host G-protein coupled receptor protein signal transduction ; GO:0075120".	0
4831	52550	2	This term was made obsolete because it has been split.	0
4832	52554	2	This term partially replaces the obsolete term 'growth or development of symbiont in host organelle ; GO:0075066'. See also 'development of symbiont in host vascular tissue ; GO:0044122'.	0
4833	52561	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4834	52578	2	This term was added by GO_REF:0000022.	0
4835	52588	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4836	52596	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
4837	52613	2	This term was made obsolete because it does not represent a real biological process.	0
4838	52619	2	This term was added by GO_REF:0000021.	0
4839	52647	2	This term was added by GO_REF:0000021.	0
4840	52680	2	This term was made obsolete because fluorene is not synthesized by living organisms and GO does not cover non-biological processes.	0
4841	52735	2	This term partially replaces the obsolete term 'positive regulation of growth or development of symbiont on or near host surface ; GO:0075337'. See also 'positive regulation of growth of symbiont on or near host surface ; GO:0044142'.	0
4842	52736	2	This term was made obsolete because it refers to a molecular function.	0
4843	52750	2	Note that this term includes tolerogenic responses to tumor cells mediated by responding T cells.	0
4844	52753	2	The bile acid is first activated using CoA by cholate-CoA ligase activity(GO:0047747), then conjugated to taurine or glycine by glycine N-choloyltransferase activity (GO:0047963; appears to use either glycine or taurine).	0
4845	52763	2	This term was added by GO_REF:0000021.	0
4846	52780	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
4847	52785	2	Note that 'translocation' is sometimes used in the literature to refer to the entire process of protein import into the nucleus, but in GO refers specifically to the step in which a cargo-carrier protein complex moves through the nuclear pore complex.	0
4848	52786	2	This term was made obsolete because it was replaced by more specific terms.	0
4849	52807	2	This term was added by GO_REF:0000021.	0
4850	52808	2	This term was added by GO_REF:0000021.	0
4851	52833	2	This term was added by GO_REF:0000021.	0
4852	52841	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4853	52847	2	This term was added by GO_REF:0000021.	0
4854	52851	2	Note that this step represents formation of the A2-3 complex (yeast) or the C2 complex (mammalian).	0
4855	52855	2	This term was made obsolete because it is a composite term that represents two individual processes.	0
4856	52858	2	This term was made obsolete because 'short' is not a quantitative or meaningful measurement of time.	0
4857	52867	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont transmembrane receptor-mediated cAMP signal transduction ; GO:0075085".	0
4858	52870	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4859	52893	2	This term was added by GO_REF:0000021.	0
4860	52903	2	This term was made obsolete because it represents a molecular function and not a biological process.	0
4861	52908	2	Note that either or both mechanisms mentioned in the definition may be used in this process. Note that both granule release and the engagement of death receptors on target cells result in the induction of apoptosis in the target cell. Note that both CD4 and CD8 positive T cells can mediate apoptosis of target cells, independently of their definition as 'helper' T cells or not.	0
4862	52916	2	This term was added by GO_REF:0000021.	0
4863	52933	2	This term was added by GO_REF:0000021. Note that this term was placed as a child of 'brain development' because the nucleus spans multiple brain regions from midbrain to spinal cord.	0
4864	52976	2	Note that in GO cellular components include whole cells (cell is_a cellular component).	0
4865	52980	2	This term was added by GO_REF:0000021.	0
4866	52984	2	This term was made obsolete because it does not represent a real biological process.	0
4867	52996	2	This term was added by GO_REF:0000021.	0
4868	53006	2	This term was made obsolete because m-cresol is not synthesized by living organisms and GO does not cover non-biological processes.	0
4869	53030	2	Note that promoter clearance is represented as a separate step, not part_of either initiation or elongation.	0
4870	53043	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host protein kinase-mediated signal transduction ; GO:0075131".	0
4871	53049	2	This term was added by GO_REF:0000021.	0
4872	53055	2	This term was added by GO_REF:0000021.	0
4873	53057	2	This term was made obsolete because it was wrongly defined.	0
4874	53113	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host cAMP-mediated signal transduction ; GO:0075209".	0
4875	53116	2	This term partially replaces the obsolete term 'growth or development of symbiont on or near host ; GO:0044408'. See also 'growth of symbiont on or near host ; GO:0044133'.	0
4876	53124	2	This term was made obsolete because it represents a molecular function.	0
4877	53129	2	This term was added by GO_REF:0000021.	0
4878	53132	2	This term was added by GO_REF:0000021.	0
4879	53174	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4880	53248	2	This term was made obsolete because it represents a molecular function.	0
4881	53255	2	Note that DNA geometric change and DNA topological change (GO:0006265) are distinct, but are usually coupled in vivo.	0
4882	53259	2	Note that this term represents an activity and not a cellular structure. Consider also annotating to the cellular structure term 'TAT protein translocation system complex ; GO:0033281'. Note that this term is used for annotation of proteins that compose the transport complex but not the proteins being transported.	0
4883	53263	2	Note that this term was split from 'di-, tri-valent inorganic anion homeostasis ; GO:0055061' (sibling term 'trivalent inorganic anion homeostasis' ; GO:0072506').	0
4884	53270	2	See also the biological process term 'cell growth ; GO:0016049'.	0
4885	53306	2	This term was added by GO_REF:0000021.	0
4886	53314	2	This term was made obsolete because it does not describe a biological process that is distinct from 'cell aging'.	0
4887	53315	2	This term was added by GO_REF:0000021.	0
4888	53319	2	This term was made obsolete because it was not defined.	0
4889	53335	2	This term was made obsolete because it does not stipulate which anatomical part is involved in the process.	0
4890	53360	2	Palmitoylation of glycine only occurs when glycine is at the N-terminal position of a protein.	0
4891	53367	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4892	53371	2	This term was made obsolete because it is a gene product specific term.	0
4893	53378	2	This term was added by GO_REF:0000021.	0
4894	53397	2	Note that this term is in the subset of terms that should not be used for direct gene product annotation. Annotations to this term will be removed during annotation QC.	0
4895	53433	2	Note that this term is used to annotate gene products of the symbiont.	0
4896	53438	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4897	53449	2	This term was added by GO_REF:0000021.	0
4898	53458	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4899	53460	2	This term was added by GO_REF:0000021.	0
4900	53486	2	For non-covalent interactions with a lipid, consider instead the term 'lipid binding ; GO:0008289' and its children.	0
4901	53490	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
7732	74604	2	A place holder for a cross product with chebi.	0
4902	53495	2	Note that bacterial lipopeptides are derived from bacterial lipoproteins, but the two terms are sometimes used interchangeably in the literature.	0
4903	53500	2	This term was made obsolete because thiocyanates are not synthesized by living organisms, and GO does not cover non-biological processes.	0
4904	53522	2	This term was made obsolete because the term string represents a molecular function and not a biological pathway.	0
4905	53529	2	This term was added by GO_REF:0000021.	0
4906	53569	2	This term was made obsolete because it represents function rather than a process.	0
4907	53578	2	This term was made obsolete because 'sensitivity/resistance' implies a phenotype rather than a biological process.	0
4908	53586	2	Note that this term represents an activity and not a cellular structure. Consider also annotating to the cellular structure term 'cell envelope Sec protein transport complex ; GO:0031522'. For proteins involved in bacterial Type II secretion across the outer membrane, consider annotating to 'protein secretion by the Type II secretion system ; GO:0015628'. For proteins involved in Sec-complex dependent translocation into the eukaryotic endoplasmic reticulum, consider annotating to 'SRP-dependent cotranslational protein targeting to membrane, translocation ; GO:0006616'. Note that this term is used for annotation of proteins that compose the transport complex but not the proteins being transported.	0
4909	53609	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "modulation by host of symbiont signal transduction mediated by G-protein alpha subunit ; GO:0075090".	0
4910	53615	2	This term was made obsolete because it describes a molecular function.	0
4911	53616	2	This term was added by GO_REF:0000021.	0
4912	53639	2	See also the biological process term 'neurotransmitter biosynthetic process ; GO:0042136'.	0
4913	53648	2	Note that signal transduction is defined broadly to include a ligand interacting with a receptor, downstream signaling steps and a response being triggered. A change in form of the signal in every step is not necessary. Note that in many cases the end of this process is regulation of the initiation of transcription. Note that specific transcription factors may be annotated to this term, but core/general transcription machinery such as RNA polymerase should not.	0
4914	53657	2	This term was made obsolete because it represents a molecular function rather than a biological process.	0
4915	53667	2	See also the cellular component term 'pore complex ; GO:0046930'.	0
4916	53674	2	This term was made obsolete because it does not represent a real biological process.	0
4917	53676	2	This term was added by GO_REF:0000021.	0
4918	53693	2	This term was made obsolete because unidirectional conjugation occurs only in prokaryotes, which do not undergo morphogenetic changes associated with conjugation. In short, the process described by this term does not occur.	0
4919	53695	2	This term was added by GO_REF:0000021.	0
4920	53706	2	This term was added by GO_REF:0000021.	0
4921	53714	2	This term was made obsolete because it represents a molecular function.	0
4922	53723	2	See also the Anatomical Dictionary for Mouse Development ontology terms 'TS4, inner cell mass ; EMAP:14'.	0
4923	53729	2	This term was made obsolete because it does not represent a real biological process.	0
4924	53734	2	This term was added by GO_REF:0000021.	0
4925	53738	2	This term was made obsolete because it is defined as a function term and is in the process ontology.	0
4926	53739	2	This term was added by GO_REF:0000021.	0
4927	53745	2	This term was added by GO_REF:0000021.	0
4928	53762	2	Note that this modification may be unique to the species Finegoldia (Peptostreptococcus) magnus.	0
4929	53765	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
4930	53778	2	This term was made obsolete because the meaning of the term is ambiguous.	0
4931	53818	2	This term was added by GO_REF:0000021.	0
4932	53831	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4933	53851	2	This term was added by GO_REF:0000021.	0
4934	53852	2	This term partially replaces the obsolete term 'modulation of growth or development of symbiont on or near host ; GO:0075305'. See also 'modulation of development of symbiont on or near host ; GO:0044138'.	0
4935	53853	2	This term was added by GO_REF:0000021.	0
4936	53860	2	This term was made obsolete because it does not describe a biological process.	0
4937	53900	2	Note that a lymphocyte is a cell of the B cell, T cell, or natural killer cell lineage (CL:0000542).	0
4938	53944	2	This term was added by GO_REF:0000021.	0
4939	53951	2	GO:0014889 should only be used for annotation when muscle atrophy is a normal physiological process and not a disease process.	0
4940	53956	2	This term was made obsolete because it contains gene product and species specific information.	0
4941	53971	2	This term was added by GO_REF:0000021.	0
4942	53978	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4943	53983	2	This term was added by GO_REF:0000021.	0
4944	53986	2	This term was added by GO_REF:0000021.	0
4945	53987	2	Note that this term should not be confused with 'response to deep water ; GO:0030912'. Flooding refers to short-term immersion, whereas 'response to deep water ; GO:0030912' refers to standing in water throughout an organism's life cycle.	0
4946	53995	2	This term was added by GO_REF:0000021.	0
4947	54009	2	This term was made obsolete because it does not represent a real biological process.	0
4948	54013	2	This term was made obsolete because 'susceptibility/resistance' implies a phenotype rather than a biological process.	0
4949	54025	2	This term was made obsolete because, as part of the GO/ChEBI alignment effort, curators determined that oxygen and reactive oxygen species should not be grouped together.	0
4950	54033	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host transmembrane receptor-mediated cAMP signal transduction ; GO:0075117".	0
4951	54040	2	This term was added by GO_REF:0000021.	0
4952	54041	2	This term was added by GO_REF:0000021.	0
4953	54045	2	This term was made obsolete because it is a gene product specific term.	0
4954	54059	2	Note that this term represents the return of neutrophil levels to stable numbers following an immune response as well as the proliferation and elimination of neutrophils required to maintain stable numbers in the absence of an outside stimulus.	0
4955	54084	2	This term was added by GO_REF:0000021.	0
4956	54089	2	This term was added by GO_REF:0000021.	0
4957	54092	2	This term was added by GO_REF:0000021.	0
4958	54094	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4959	54125	2	This term was made obsolete because it is a grouping term that is not useful, but has caused true path violations.	0
4960	54128	2	Note that this term was split from 'di-, tri-valent inorganic anion homeostasis ; GO:0055061' (sibling term 'divalent inorganic anion homeostasis' ; GO:0072505').	0
4961	54138	2	Note that this term was reinstated from obsolete.	0
4962	54149	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4963	54163	2	This term was made obsolete because 'error-free' does not correspond to a repair mechanism, and the term has been superseded by more specific terms.	0
4964	54180	2	This term was obsoleted because the name and the definition mean two completely different things: 1) "transcription, RNA-dependent", i.e. RNA-dependent production of an RNA transcript and 2) "reverse transcription", i.e. RNA-dependent DNA synthesis.	0
4965	54185	2	This term was moved out from being a child of 'cellular process' because it is a cell population-level process, and cellular processes are restricted to those processes that involve individual cells.	0
4966	54201	2	This term was added by GO_REF:0000021.	0
4967	54220	2	This term was made obsolete because it contained a conjunction (or). It has been replaced with the terms 'modulation of growth of symbiont on or near host ; GO:0044139' and 'modulation of development of symbiont on or near host ; GO:0044138'.	0
4968	54230	2	This term was made obsolete because it implies further processing of an end product rather than its production.	0
4969	54243	2	This term was added by GO_REF:0000021.	0
4970	54263	2	This term partially replaces the obsolete term 'growth or development of symbiont in host cell ; GO:0075065'. See also 'growth of symbiont in host cell ; GO:0044119'.	0
4971	54290	2	Note that this term encompasses all symbiotic relationships between species along a continuum from mutualism through to parasitism, as outlined in the definition.	0
4972	54294	2	This term was added by GO_REF:0000021.	0
4973	54312	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products of the symbiont involved in this process.	0
4974	54321	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4975	54350	2	Note that this term is used to annotate gene products of the symbiont.	0
4976	54352	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4977	54366	2	This term was made obsolete because it does not represent a real process that exists in nature.	0
4978	54367	2	Note that the term string was changed to be consistent with placement of this term in cell aging hierarchy.	0
4979	54381	2	This term was added by GO_REF:0000021.	0
4980	54400	2	This term was added by GO_REF:0000021.	0
4981	54419	2	This term was made obsolete because it does not represent a real biological process.	0
4982	54421	2	See also the fly_anatomy.ontology term 'antennal segment ; FBbt:00000009'.	0
4983	54451	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4984	54453	2	Note that this step is analogous to 5' splice site selection in cis-splicing.	0
4985	54460	2	This term was added by GO_REF:0000021.	0
4986	54504	2	Note that Group II introns are known to be found in a number of places: rRNA, mRNA, and tRNA in organelles of fungi, plants, and protists; and mRNA of bacteria.	0
4987	54526	2	This term was added by GO_REF:0000021.	0
4988	54538	2	This term was added by GO_REF:0000021.	0
4989	54550	2	This term was added by GO_REF:0000021.	0
4990	54551	2	This term was added by GO_REF:0000021.	0
4991	54555	2	This term was made obsolete because it did not represent a process discrete from its sibling terms.	0
4992	54568	2	This term was made obsolete because it was not clear whether the term applied to the whole process of taste perception or just the sensory transduction stage.	0
4993	54569	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
4994	54573	2	This term was made obsolete because it is a gene product specific term.	0
4995	54575	2	This term was improved by GO_REF:0000022. It was moved.	0
4996	54623	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
4997	54631	2	This term was made obsolete because it does not represent a real biological process.	0
4998	54638	2	This term was added by GO_REF:0000021.	0
7733	74608	2	Requested by Lynn Crosby Jan 2006.	0
5000	54644	2	See also the cellular component term 'mitochondrial inner membrane ; GO:0005743'.	0
5001	54649	2	This term was made obsolete because it did not adequately describe phosphoinositide-mediated signaling.	0
5002	54659	2	This term was made obsolete because it does not represent a real biological process.	0
5003	54669	2	This term was added by GO_REF:0000021.	0
5004	54682	2	This term was made obsolete because it represents a function.	0
5005	54698	2	This term was made obsolete because it does not represent a real biological process.	0
5006	54713	2	Note that IL-28A, IL-28B, and IL-29 are types of interferon-lambda.	0
5007	54738	2	This term was made obsolete because it makes no sense and was added in error.	0
5008	54744	2	Residue 1 of histone H2AX is taken as the first residue following removal of the initiating Methionine (Met).	0
5009	54761	2	This term was added by GO_REF:0000022.	0
5010	54789	2	This term was made obsolete because there is no clear difference between the sensu Insecta term and the generic term.	0
5011	54797	2	This term was added by GO_REF:0000021.	0
5012	54799	2	This term was made obsolete because it was a grouping term that was poorly defined and did not provide a particularly meaningful grouping, since even for those amino acids commonly found in proteins, not all molecules necessarily end up incorporated into proteins. The term also violated the principle of positivity.	0
5013	54810	2	Note that this heterodimeric cytokine utilizes the IL-12p35 subunit as its alpha chain, which is also used by IL-35 as its alpha chain, and utilizes the IL-12p40 subunit as its beta chain, which is also used by IL-23 as its beta chain.	0
5014	54813	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host signal transduction mediated by G-protein alpha subunit ; GO:0075122".	0
5015	54821	2	This term was made obsolete because there is no clear difference between the sensu Drosophila term and the generic term.	0
5016	54832	2	Note that this term has no relationship to 'membrane organization ; GO:0061024' because the basement membrane is not a lipid bilayer.	0
5017	54837	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "Negative regulation by host of symbiont calcium or calmodulin-mediated signal transduction ; GO:0075105".	0
5018	54843	2	This term was made obsolete because it represents a molecular function.	0
5019	54847	2	This term was made obsolete because mutagenesis is not a valid biological process in which gene products would normally participate. Rather, mutations arise from DNA replication errors or damage by an extrinsic agent.	0
5020	54858	2	This term was made obsolete because it is a gene product specific term.	0
5021	54870	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "positive regulation by symbiont of host transmembrane receptor-mediated signal transduction ; GO:0075113".	0
5022	54876	2	This term was made obsolete because 'resistance' implies a phenotype rather than a biological process.	0
5023	54885	2	This term was made obsolete because its meaning is vague, and it does not fit with other terms in GO.	0
5024	54888	2	Note that this term is used to annotate gene products of the symbiont.	0
5025	54907	2	See also the biological process term 'blood coagulation, intrinsic pathway ; GO:0007597'.	0
5026	54909	2	This term was made obsolete because the term string was ambiguous and the term may represent a molecular function.	0
5027	54916	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host calcium or calmodulin-mediated signal transduction ; GO:0075133".	0
5028	54919	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
5029	54923	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host signal transduction mediated by G-protein beta subunit ; GO:0075126".	0
5030	54932	2	This term was added by GO_REF:0000021.	0
5031	54950	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
5032	54952	2	Note that IgM and IgD can be coexpressed by B cells via an alternate splicing mechanism, but true recombinational isotype switching to IgD has been demonstrated as well. Note that this term is best used to annotate gene products which are involved in the mechanism of DNA recombination used in isotype switching, like the B cell specific Swap70 factor in the mouse, rather than gene products which promote isotype switching such as cytokines or co-stimulatory molecules, which should instead be annotated to 'regulation of isotype switching ; GO:0045191'.	0
5033	54968	2	This term was added by GO_REF:0000021.	0
5034	54977	2	See also the biological process term 'neurotransmitter catabolic process ; GO:0042135'.	0
5035	54994	2	Note that examples of periodic partitions are tagmata, segments or parasegments.	0
5036	55004	2	This term partially replaces the obsolete term 'positive regulation of growth or development of symbiont during interaction with host ; GO:0075339'. See also 'positive regulation of development of symbiont during interaction with host ; GO:0044149'.	0
5037	55009	2	This term was added by GO_REF:0000021.	0
5038	55013	2	Note that the syntax of the definition of the this term is different from the usual regulation syntax because it describes regulation of a trait rather than regulation of a process.	0
5039	55019	2	Note that this term represents an activity and not a cellular structure. Consider also annotating to the cellular component term 'type I protein secretion system complex ; GO:0030256'.	0
5040	55074	2	This term was added by GO_REF:0000021.	0
5041	55091	2	This term was added by GO_REF:0000021.	0
5140	55893	2	This term was made obsolete because it refers to a class of gene products.	0
5042	55094	2	This term was made obsolete because it does not represent a real biological process.	0
5043	55102	2	Note that this process has been observed in some archaeal and bacterial species.	0
5044	55107	2	This term was made obsolete because it does not represent a real biological process.	0
5045	55108	2	Note that this term refers only to the specific, original 'tumor necrosis factor' protein (TNF) and not other members of the tumor necrosis factor superfamily (those with the gene symbol root 'TNFSF').	0
5046	55124	2	The increase in length of the seed trichome without cell division. Elongation is defined to be from 5 to 20 DPA in Gossypium spp.	0
5047	55134	2	This term was made obsolete because phenanthrene is not synthesized by living organisms, and GO does not cover non-biological processes.	0
5048	55155	2	Note that the syntax of the definition of the this term is different from the usual regulation syntax because it describes regulation of a trait rather than regulation of a process.	0
5049	55158	2	This term was added by GO_REF:0000021.	0
5050	55172	2	This term was made obsolete because it was replaced by more specific terms.	0
5051	55179	2	This term was added by GO_REF:0000021.	0
5052	55188	2	This term partially replaces the obsolete term 'growth or development during symbiotic interaction ; GO:0052171'. See also 'development during symbiotic interaction ; GO:0044111'.	0
5053	55206	2	See also the biological process term 'inositol phosphate dephosphorylation ; GO:0046855'.	0
5054	55212	2	This term was made obsolete because it does not represent a real biological process.	0
5055	55226	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
5056	55227	2	This term was made obsolete because it does not represent a real biological process.	0
5057	55239	2	See also the fly_anatomy.ontology term 'gnathal segment ; FBbt:00000011' and its children.	0
5058	55240	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by symbiont of host G-protein coupled receptor protein signal transduction ; GO:0075088".	0
5059	55248	2	This term was added by GO_REF:0000021.	0
5060	55250	2	This term was made obsolete because it is an organism specific term. The entire branch of the ontology was reorganized to be more generally applicable.	0
5061	55268	2	This term was added by GO_REF:0000022.	0
5062	55278	2	This term was made obsolete because it represents a function rather than a process.	0
5063	55284	2	See also the biological process term 'intein-mediated protein splicing ; GO:0016539'.	0
5064	55285	2	Note that this term is used to annotate gene products of the symbiont. To annotate host gene products, consider the biological process term "positive regulation by host of symbiont receptor-mediated signal transduction ; GO:0075079".	0
5065	55287	2	This term was added by GO_REF:0000021.	0
5066	55293	2	This term was added by GO_REF:0000021.	0
5067	55311	2	This term was made obsolete because 'sensitivity/resistance' implies a phenotype rather than a biological process.	0
5068	55312	2	This term was made obsolete because it represents a molecular function.	0
5069	55313	2	This term was added by GO_REF:0000021.	0
5070	55325	2	This term was added by GO_REF:0000021.	0
5071	55334	2	This term was added by GO_REF:0000021.	0
5072	55364	2	This term was added by GO_REF:0000021.	0
5073	55365	2	This term was made obsolete because the meaning of the term is ambiguous.	0
5074	55372	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "negative regulation by symbiont of host adenylate cyclase activity ; GO:0075108".	0
5075	55374	2	This term was added by GO_REF:0000021.	0
5076	55387	2	Note that this term is used to annotate gene products of the host. To annotate symbiont gene products, consider the biological process term "modulation by symbiont of host adenylate cyclase-mediated signal transduction; GO:0075335".	0
5077	55433	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
5078	55439	2	This term was made obsolete because it represents a phenotype rather than a biological process.	0
5079	55457	2	This term was added by GO_REF:0000021.	0
5080	55468	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
5081	55475	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
5082	55491	2	This term was added by GO_REF:0000021.	0
5083	55492	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
5084	55498	2	This term was added by GO_REF:0000022.	0
5085	55506	2	This term was added by GO_REF:0000021.	0
5086	55508	2	This term was added by GO_REF:0000021.	0
5087	55525	2	This term was made obsolete because it is a gene product specific term.	0
5088	55531	2	Note that immunologists typically use the word 'development' to refer to cells of B or T cell lineages undergoing the process that GO describes as 'cell differentiation'.	0
5089	55537	2	Note that this term should be used to annotate gene products in the organism undergoing the programmed cell death. To annotate genes in another organism whose products modulate programmed cell death in a host organism, consider the term 'modulation by symbiont of host programmed cell death ; GO:0052040'.	0
5090	55543	2	Note that this term is used to annotate gene products of the symbiont.	0
5141	55895	2	This term was made obsolete because it describes a cellular location rather than a function.	0
5091	55552	2	Note that this term was split from 'positive regulation of intermediate filament polymerization and/or depolymerization ; GO:0045826' (sibling term 'positive regulation of intermediate filament polymerization ; GO:0030841').	0
5092	55555	2	This term was added by GO_REF:0000021.	0
5093	55564	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
5094	55586	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
5095	55595	2	This term was added by GO_REF:0000021.	0
5096	55599	2	This term was added by GO_REF:0000021.	0
5097	55608	2	This term was added by GO_REF:0000021.	0
5098	55613	2	This term was added by GO_REF:0000021.	0
5099	55618	2	This term was made obsolete because 2,4-dichlorophenoxyacetic acid is not synthesized by living organisms and GO does not cover non-biological processes.	0
5100	55638	2	This term was made obsolete because it represents a phenotype.	0
5101	55646	2	This term was added by GO_REF:0000021.	0
5102	55651	2	Note that this term should not be used to annotate gene products of the host. It should only be used to annotate those gene products from the symbiont involved in this process.	0
5103	55653	2	Note that this term refers only to the specific, original 'tumor necrosis factor' protein (TNF) and not other members of the tumor necrosis factor superfamily (those with the gene symbol root 'TNFSF').	0
5104	55655	2	This term was made obsolete because it represents a molecular function.	0
5105	55676	2	This term was made obsolete because it describes a gene product and it contains component information.	0
5106	55678	2	This term was made obsolete because it was an unnecessary grouping term.	0
5107	55680	2	Note that the phrase "upstream activating sequence", or UAS is often used in S. cerevisiae literature to refer to regulatory sequences that occur in the region upstream and proximal to the core promoter. In contrast, in bacteria such as E. coli, the phrase "upstream activating sequence", or UAS is a synonym for "enhancer".	0
5108	55681	2	This term was made obsolete because it represents a class of gene products.	0
5109	55685	2	This term was made obsolete because this solute is transported by an active transporter rather than a channel.	0
5110	55688	2	This term was made obsolete because it represents a gene product.	0
5111	55698	2	This term was made obsolete because the corresponding EC reaction has been deleted from the EC.	0
5112	55708	2	Note that this function includes EC:3.1.3.65.	0
5113	55714	2	This term was made obsolete because it refers to a class of proteins.	0
5114	55721	2	Note that this was EC:1.1.99.17.	0
5115	55736	2	This term was made obsolete because it represents a gene product.	0
5116	55741	2	Note that with respect to annotation, "base pairing with RNA" and its child terms are intended to be used to annotate the activity of gene products composed of nucleic acid, presumably RNA, to interact with other RNA molecules via base pairing. Internal base pairing with itself is considered part of the secondary structure of the molecule and is not within the scope of GO function.	0
5117	55742	2	This term was made obsolete because it represents a class of gene products, and its definition incorporates process information.	0
5118	55748	2	This term was made obsolete because it represents a gene product.	0
5119	55750	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
5120	55756	2	This term was made obsolete because it represents a gene product, and the substrate specificity it refers to is not cleanly defined.	0
5121	55767	2	This term was made obsolete because we do not know what it was intended to represent when it was created.	0
5122	55768	2	Note that some basal transcription factors are themselves considered to have coactivator activity, in that they mediate interactions between an activator and either RNA polymerase II itself or another basal transcription factor.	0
5123	55773	2	Note that in the standard genetic code, CAC codes for histidine.	0
5124	55794	2	Note that the inclusion of 'MetaCyc:BGALACT-PWY' is exceptional: normally MetaCyc pathway entries are database references for biological process terms, not molecular function terms. An exception was made in this case because the MetaCyc entry 'BGALACT-PWY' describes only one reaction, that catalyzed by beta-galactosidase.	0
5125	55799	2	This term was made obsolete because it represents a biological process.	0
5126	55803	2	This term was made obsolete because it represents a gene product.	0
5127	55808	2	This term was made obsolete because it describes the composition (i.e. proteoglycan) of a gene product, not a molecular function.	0
5128	55813	2	This term was made obsolete because it represents a gene product.	0
5129	55822	2	This term was made obsolete because it represents a gene product.	0
5130	55828	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand FGF. For receptors that bind other growth factors, consider annotating to terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
5131	55834	2	Note that this term has a MetaCyc pathway reference as the pathway only has a single step.	0
5132	55844	2	Note that this term is not a child of 'recombinase activity ; GO:0000150' because the latter represents activities that do not break or form phosphodiester bonds.	0
5133	55846	2	This term was made obsolete because it represents a gene product.	0
5134	55849	2	Note that enzymes of class EC:5.99.-.- should also be annotated to this term.	0
5135	55861	2	This term was made obsolete because it represents a gene product.	0
5136	55862	2	This term was made obsolete because it refers to a class of proteins.	0
5137	55870	2	This term was made obsolete because it describes a gene product.	0
5138	55879	2	Note that in the standard genetic code, GAG codes for glutamic acid.	0
5142	55907	2	This term was made obsolete because it describes involvement in a process and not a function.	0
5143	55912	2	This term was made obsolete because it contains both component and function information.	0
5144	55926	2	Note that EC:2.1.1.73 was deleted from EC as the reaction is performed by DNA (cytosine-5-)-methyltransferase (EC:2.1.1.37).	0
5145	55942	2	Note that the polyprenyl sidechain substrate for these methyltransferases varies in length between species, for example, 6 units in S. cerevisiae, 8 units in E. coli and 10 units in G. suboxidans. Where the length of the substrate polyprenyl chain is unknown, the term '2-polyprenyl-6-methoxy-1,4-benzoquinone methyltransferase activity ; GO:0008425' should be used.	0
5146	55943	2	This term was made obsolete because it refers to a non-existent molecular function term, 'Hsp90 protein activity'.	0
5147	55946	2	This term was made obsolete because it represents gene products involved in the biological process of cell adhesion.	0
5148	55948	2	Note that the overall reaction representing three successive executions of this activity is N1,N5,N10-triferuloyl spermidine + 3 NADPH + 3 O2 = N1,N5,N10-tri-(hydroxyferuloyl)-spermidine + 3 NADP+ + 3 H2O; this corresponds to the MetaCyc reaction RXN-11262 (http://biocyc.org/META/NEW-IMAGE?type=REACTION&object=RXN-11262) and the KEGG reaction R08986 (http://www.genome.jp/dbget-bin/www_bget?rn:R08986).	0
5149	55955	2	This term was made obsolete because it was derived from a UM-BBD enzyme entry that has been deleted, and no other information can be found to suggest that it is a naturally occurring activity.	0
5150	55977	2	This term was made obsolete because it refers to a class of proteins.	0
5151	55986	2	This term was made obsolete because it represents a gene product.	0
5152	55994	2	This term was made obsolete because it represents a gene product.	0
5153	55996	2	This term was made obsolete because its definition was changed and because it represents a gene product.	0
5154	56001	2	This term was made obsolete because it represents two activities.	0
5155	56008	2	This term was made obsolete because the evidence for the existence of this reaction was retracted. Please see PMID:6885763 for more information.	0
5156	56012	2	This term was made obsolete because it represents a gene product.	0
5157	56030	2	This term was made obsolete because the function is covered by an existing term.	0
5158	56041	2	This term was made obsolete because it refers to a class of gene products.	0
5159	56045	2	Note that in the standard genetic code, GCA codes for alanine.	0
5160	56054	2	This term was made obsolete because it represents a gene product.	0
5161	56064	2	See also the molecular function term 'superoxide dismutase activity ; GO:0004784'.	0
5162	56069	2	This term was made obsolete because it refers to a class of gene products.	0
5163	56070	2	This term was made obsolete because it contains both component and function information.	0
5164	56092	2	Note that EC:1.13.12.10 was merged into this term.	0
5165	56097	2	This term was made obsolete because it refers to involvement in a biological process.	0
5166	56098	2	This function is the first step in the pathway of methanogenesis from dimethylamine.	0
5167	56109	2	This term was made obsolete because it refers to a class of gene products.	0
5168	56111	2	See also the cellular component term 'mitochondrial inner membrane presequence translocase complex ; GO:0005744'.	0
5169	56118	2	This term was made obsolete because it represents a class of receptor rather than an activity.	0
5170	56146	2	This term was made obsolete because it refers to a biological process.	0
5171	56151	2	This term was made obsolete because it represents two reactions, and should be two separate terms.	0
5172	56152	2	This function is the second step in the pathway of methanogenesis from methanol.	0
5173	56153	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
5174	56154	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5175	56158	2	This term was made obsolete because it represents a gene product.	0
5176	56159	2	Note that this function was formerly EC:4.1.2.15.	0
5177	56188	2	This term was made obsolete because it represents a gene product, and the substrate specificity it refers to is not cleanly defined.	0
5178	56190	2	This term was made obsolete because it does not refer to a specific reaction but rather to a process which results in the formation of AMP.	0
5179	56197	2	This term was made obsolete because it refers to two different functions, a glutamine amidotransferase that functions as an aminodeoxychorismate synthase [itself composed of two enzymatic activities, a glutaminase and a chorismate aminase (this latter is sometimes referred to as the aminodeoxychorismate synthase)] and a 4-amino-4-deoxychorismate aromatase (4-amino-4-deoxychorismate lyase). Note that the name 'para-amino benzoate synthase' was initially given to the 'aminodeoxychorismate synthase' activity before the additional lyase activity was discovered.	0
7734	74623	2	A place holder for a cross product with chebi.	0
5180	56221	2	See also the molecular function term 'neurotransmitter transporter activity ; GO:0005326'.	0
5181	56223	2	This term was made obsolete because it represents a gene product, and because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
5182	56229	2	This term was made obsolete because it represents a gene product.	0
5183	56230	2	This term was made obsolete because it describes involvement in a process and not a function.	0
5184	56244	2	Note that EC:1.1.3.31 was deleted from EC as it cannot be distinguished from alcohol oxidase (EC:1.1.3.13).	0
5185	56254	2	See also the molecular function term 'neurotransmitter receptor activity ; GO:0030594'.	0
5186	56272	2	This term was made obsolete because it represents a gene product.	0
5187	56295	2	This term was made obsolete because it represents a gene product, and because the gene was named after its location of action rather than after its molecular function.	0
5188	56298	2	This term was obsoleted because "general/nonspecific/basal" transcription vs "specific" transcription were determined not to be separable, distinct process. Thus, terms trying to distinguish "general/nonspecific/basal" transcription from "specific" transcription were removed from both the Molecular Function and the Biological Process ontologies. In addition, this Molecular Function term was defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of your repressor is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5189	56322	2	This term was made obsolete because it contains both component and function information.	0
5190	56324	2	Note that collectins include such proteins as mannose-binding lectin (MBL) and surfactant proteins A and D (SP-A and SP-D).	0
5191	56356	2	Note that in the standard genetic code, GGG codes for glycine.	0
5192	56358	2	This term was obsoleted because "general/nonspecific/basal" transcription vs "specific" transcription were determined not to be separable, distinct process. Thus, terms trying to distinguish "general/nonspecific/basal" transcription from "specific" transcription were removed from both the Molecular Function and the Biological Process ontologies. In addition, this Molecular Function term was defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of your repressor is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5193	56363	2	This term was made obsolete because the meaning of the term is ambiguous and it incorporates process information.	0
5194	56372	2	This term was made obsolete because it represents a regulator of an obsolete molecular function.	0
5195	56375	2	Transcription termination sites can be recognized by the RNA polymerase (RNAP) itself or by another protein which interacts with the RNAP to promote transcription termination. Note that not all genes have a specific sequence that functions as a termination site; for most mRNAs transcribed by RNAP II termination is not mediated by a specific termination sequence, but is coupled to polyadenylation.	0
5196	56382	2	This term was made obsolete because it represents a gene product.	0
5197	56384	2	This term was made obsolete because it represents a gene product.	0
5198	56392	2	This term was made obsolete because it represents a family of gene products.	0
5199	56429	2	This term was made obsolete because it does not accurately reflect the function of the proteins involved.	0
5200	56460	2	Note that this activity can catalyze cleavage of DNA or RNA.	0
5201	56475	2	Note that this function was formerly EC:3.1.4.10.	0
5202	56483	2	This term was made obsolete because it is a grouping term based on similar names.	0
5203	56486	2	This term was made obsolete because it represents two molecular functions.	0
5204	56489	2	This term was made obsolete because it represents a gene product.	0
5205	56500	2	Note that in the standard genetic code, ACA codes for threonine.	0
5206	56501	2	This term was made obsolete because it represents a gene product.	0
5207	56514	2	This term was made obsolete because, according to the Enzyme Commission, there is no evidence that this enzymatic activity exists.	0
5208	56515	2	This term was made obsolete because it represents a gene product.	0
5209	56522	2	Note that in the standard genetic code, TCT codes for serine.	0
5210	56524	2	This term was made obsolete because it represents a gene product.	0
5211	56526	2	Note that this function was formerly EC:2.4.1.204.	0
5212	56527	2	Note that this function was formerly EC:1.14.99.25.	0
5245	56776	2	This term was made obsolete because it does not represent a molecular function.	0
5213	56542	2	This term was obsoleted because "general/nonspecific/basal" transcription vs "specific" transcription were determined not to be separable, distinct process. Thus, terms trying to distinguish "general/nonspecific/basal" transcription from "specific" transcription were removed from both the Molecular Function and the Biological Process ontologies. In addition, this Molecular Function term was defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of your repressor is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5214	56545	2	This term was made obsolete because it represents a gene product, was not defined, and is named based on protein features.	0
5215	56553	2	Note that in the standard genetic code, AGT codes for serine.	0
5216	56555	2	This term was made obsolete because it represents a gene product rather than a molecular function.	0
5217	56570	2	This term was made obsolete because the activities used in the U2- and U12-type complexes are the same. The cellular component ontology should (and does) represent the two different complexes, but the molecular function ontology should not.	0
5218	56575	2	Note that the name Sar derives from 'secretion-associated, Ras-related'.	0
5219	56576	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
5220	56581	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
5221	56586	2	This term was made obsolete because it refers to a class of gene products.	0
5222	56593	2	This term was made obsolete because it represents a gene product.	0
5223	56594	2	This term was made obsolete because it represents a gene product.	0
5224	56607	2	This term was made obsolete because it describes a class of gene products rather than a molecular function.	0
5225	56623	2	This term was made obsolete because it represents a gene product.	0
5226	56625	2	The structures of RNA and DNA G quartets differ regarding sugar conformation so that a protein binding to the RNA structure might not bind to the DNA structure.	0
5227	56629	2	Note that enzymes of class EC:1.14.99.- should also be annotated to this term.	0
5228	56637	2	This term was made obsolete because it represents gene products.	0
5229	56639	2	Note that enzymes of class EC:1.10.99.- should also be annotated to this term.	0
5230	56643	2	This term was made obsolete because it cannot be determined what its intended meaning was, because the term name is not found in the literature.	0
5231	56655	2	This term was made obsolete because it represents a multifunctional gene product.	0
5232	56657	2	This term was made obsolete because it was a grouping term taken from EC that no longer has any functions associated with it.	0
5233	56690	2	This term was made obsolete because it refers to a combination of a function and a process.	0
5234	56691	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function term 'receptor activity ; GO:0004872'.	0
5235	56694	2	Consider also annotating to the molecular function term 'DNA-(apurinic or apyrimidinic site) lyase activity ; GO:0003906'.	0
5236	56710	2	This term was made obsolete because it represents a process rather than a function.	0
5237	56715	2	Note that enzymes of class EC:5.4.99.- should also be annotated to this term.	0
5238	56720	2	Note that in the standard genetic code, TCG codes for serine.	0
5239	56722	2	The word "promoter" is used variously in the literature to describe the core promoter specifically or the entire proximal regulatory region (excluding any distal enhancers) including both the core promoter and the upstream region where activating transcription factors such as Gal4 in S. cerevisiae or catabolite activator protein (CAP) in E. coli bind. To minimize ambiguity in the use of the word "promoter" in GO, we have chosen the phrase "transcription regulatory region" in order to refer to all of the regulatory regions. Regulatory regions in the DNA which control initiation may include the "core promoter" where the basal transcription machinery binds, the "core promoter proximal region" where regulatory factors other than the basal machinery bind, and "enhancer" regions which are typically more distal from the core promoter. There are also additional regulatory regions, in both the DNA and the RNA transcript, which regulate elongation or termination of transcription. ANNOTATION NOTE: Regarding annotation to "transcription regulatory region DNA binding" (GO:0044212) and any of its is_a children, note that annotation to these terms specifies DNA binding only without any statement about transcription factor activity. To make an annotation about a function of transcription factor activity, consider "sequence-specific DNA binding transcription factor activity" (GO:0003700) or its is_a children which have has_part relationships to the appropriate kind of "transcription regulatory region DNA binding".	0
5240	56723	2	This term was made obsolete because it refers to an obsolete molecular function term, 'activin'.	0
5241	56725	2	This term was made obsolete because it describes a gene product.	0
5242	56732	2	This term was made obsolete because it does not represent a function.	0
5243	56737	2	This term was made obsolete because it represents a gene product, and because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
5244	56754	2	This term was made obsolete because it represents a gene product.	0
5246	56784	2	This term was made obsolete because it represents a multifunctional gene product.	0
5247	56788	2	Note that this was EC:3.8.1.4.	0
5248	56803	2	Note that EC classifies 'UDP-N-acetyl-D-glucosamine:N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimelyl-D-alanyl-D-alanine-diphosphoundecaprenol 4-beta-N-acetylglucosaminlytransferase activity ; GO:0051991' and 'undecaprenyldiphospho-muramoylpentapeptide beta-N-acetylglucosaminyltransferase activity ; GO:0050511' under the same EC number, EC:2.4.1.227.	0
5249	56806	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5250	56813	2	This term was made obsolete because it represents a class of gene products.	0
5251	56815	2	Note that enzymes of class EC:1.2.99.- should also be annotated to this term.	0
5252	56844	2	This term was made obsolete because it does not represent a molecular function.	0
5253	56847	2	This term was made obsolete because this activity is currently defined as catalyzing two sequential reactions based on a gene product. However, "inositol polyphosphate multikinase activity" in some organisms can catalyze additional reactions. In addition, the reactions listed in the definition can be catalyzed independently by other gene products.	0
5254	56854	2	Note that zymosterol is cholesta-8,24-dien-3-ol.	0
5255	56864	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function term 'potassium channel activity ; GO:0005267'.	0
5256	56865	2	This term was made obsolete because it represents a gene product.	0
5257	56869	2	Note that in the standard genetic code, CTT codes for leucine.	0
5258	56897	2	This term was made obsolete because it represents a gene product.	0
5259	56901	2	Note that in the standard genetic code, GTG codes for valine.	0
5260	56908	2	This term was made obsolete because it describes the binding of myosin phosphatase to myosin, which is not a molecular function.	0
5261	56922	2	Note that in the standard genetic code, TGC codes for cysteine.	0
5262	56930	2	This term was made obsolete because it represents a gene product.	0
5263	56935	2	Note that IL-28A, IL-28B, and IL-29 are types of interferon-lambda.	0
5264	56937	2	This term was made obsolete because it represents a gene product.	0
5265	56949	2	This term was made obsolete because it represents a gene product.	0
5266	56952	2	This term was made obsolete because it represents a gene product.	0
5267	56954	2	Note that although GO generally avoids the use of localization information in terms, in this case an exception was made. This is because the fact that the cleavage occurs within the membrane is integral to its function, as it is the only thing that distinguishes this group from other aspartic endopeptidases.	0
5268	56966	2	This term was made obsolete because it represents a gene product.	0
5269	56974	2	This term was made obsolete because it was a placeholder during work on transporter terms, and was not defined.	0
5270	56988	2	This term was made obsolete because it represents a gene product and refers to cellular component information.	0
5271	56994	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5272	56997	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function terms 'cell adhesion molecule binding ; GO:0050839' and 'receptor binding ; GO:0005102' and the biological process term 'cell adhesion ; GO:0007155'.	0
5273	57006	2	This term was made obsolete because it represents a biological process.	0
5274	57009	2	Note that this activity can catalyze cleavage of DNA or RNA.	0
5275	57014	2	This term was made obsolete because it represents a combination of gene product features and involvement in a biological process.	0
5276	57022	2	This term was made obsolete because it represents two activities.	0
5277	57029	2	This term was made obsolete because it represents a biological process.	0
5278	57032	2	This term was made obsolete because it represents a multifunctional gene product.	0
5279	57037	2	Note that with respect to annotation, "base pairing" and its child terms are intended to be used to annotate the activity of gene products composed of nucleic acid, presumably RNA, to interact with other nucleic acid molecules via base pairing. Internal base pairing with itself is considered part of the secondary structure of the molecule and is not within the scope of GO function.	0
5280	57044	2	See also the molecular function term 'DNA topoisomerase type I activity ; GO:0003917'.	0
5281	57046	2	This term was made obsolete because it represents a gene product.	0
5282	57047	2	This term was made obsolete because it represents more than one molecular function.	0
5283	57051	2	This term was made obsolete because it refers to a non-existent molecular function term, 'glycerophosphate activity', which also cannot be found in the literature.	0
5284	57067	2	This term was made obsolete because it represents a class of gene products.	0
5285	57070	2	Note that EC:6.3.2.15 was deleted from EC as the reaction is performed by UDP-N-acetylmuramoyl-tripeptide-D-alanyl-D-alanine ligase (EC:6.3.2.10).	0
5320	57305	2	Formerly EC 4.2.99.9.	0
5348	57513	2	This term was made obsolete because it represents a gene product.	0
5349	57518	2	Note that EC:1.1.1.155 was merged into EC:1.1.1.87 as they are identical.	0
5350	57519	2	This term was made obsolete because it represents a gene product.	0
5351	57521	2	This term was made obsolete because it represents a gene product.	0
5352	57533	2	This term was made obsolete because it represents a gene product.	0
5286	57075	2	The word "promoter" is used variously in the literature to describe the core promoter specifically or the entire proximal regulatory region (excluding any distal enhancers) including both the core promoter and the upstream region where activating transcription factors such as Gal4 in S. cerevisiae or catabolite activator protein (CAP) in E. coli bind. To minimize ambiguity in the use of the word "promoter" in GO, we have chosen the phrase "transcription regulatory region" in order to refer to all of the regulatory regions. Regulatory regions in the DNA which control initiation may include the "core promoter" where the basal transcription machinery binds, the "core promoter proximal region" where regulatory factors other than the basal machinery bind, and "enhancer" regions which are typically more distal from the core promoter. There are also additional regulatory regions, in both the DNA and the RNA transcript, which regulate elongation or termination of transcription. ANNOTATION NOTE: Regarding annotation to "transcription regulatory region DNA binding" (GO:0044212) and any of its is_a children, note that annotation to these terms specifies DNA binding only without any statement about transcription factor activity. To make an annotation about a function of transcription factor activity, consider "sequence-specific DNA binding transcription factor activity" (GO:0003700) or its is_a children which have has_part relationships to the appropriate kind of "transcription regulatory region DNA binding".	0
5287	57079	2	Note that in the standard genetic code, CGC codes for arginine.	0
5288	57092	2	This term was made obsolete because it represents a gene product.	0
5289	57095	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5290	57100	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins. Note that this term may be useful for annotating snoRNAs.	0
5291	57103	2	This term was made obsolete because it was an unnecessary grouping term.	0
5292	57104	2	This term was made obsolete because it represents a gene product.	0
5293	57111	2	Note that this term represents one of two reactions that are grouped together in EC 2.1.1.149.	0
5294	57112	2	Note that enzymes classified as EC:1.1.5.3 have several activities. They should be annotated with the terms GO:0004368, GO:0052590 and GO:0052591.	0
5295	57122	2	This term was made obsolete because it represents a gene product.	0
5296	57123	2	This term was made obsolete because it represents a bifunctional gene product.	0
5297	57127	2	Note that pentraxins include such proteins as serum amyloid P component (SAP) and C-reactive protein (CRP).	0
5298	57137	2	Note that a further distinction, between type IA and type IB topoisomerases, is based on sequence or structural similarity between gene products that possess type I catalytic activity.	0
5299	57138	2	This term was made obsolete because the meaning of the term is ambiguous and it incorporates process information.	0
5300	57157	2	This term was made obsolete because it represents a gene product.	0
5301	57162	2	Note that this term should not be confused with 'unfolded protein binding ; GO:0051082', which usually refers to proteins that have not yet folded into their active states. Denatured proteins once were in their correct functional conformations, but have become incorrectly folded, and often form aggregates.	0
5302	57165	2	This term was made obsolete because it describes a biological process.	0
5303	57181	2	This term was made obsolete because it is a conglomeration of three terms.	0
5304	57182	2	This term was made obsolete because it represents a regulator of a non-existent molecular function term.	0
5305	57183	2	This term was made obsolete because it represents a gene product.	0
5306	57186	2	Note that this term is distinguished from 'ubiquitin thiolesterase activity ; GO:0004221' in that it encompasses hydrolysis of any type of bonds formed between ubiquitin and another protein.	0
5307	57194	2	This term was made obsolete because it includes a process term.	0
5308	57202	2	This term was made obsolete because it represents a gene product.	0
5309	57206	2	This term was made obsolete because it represents a gene product.	0
5310	57213	2	This term was made obsolete because it represents a gene product.	0
5311	57229	2	This term was made obsolete because it represents a class of gene products and not a molecular function.	0
5312	57240	2	This term was made obsolete because it represents a regulator of a non-existent molecular function.	0
5313	57258	2	This term was made obsolete because it represents a gene product.	0
5314	57259	2	This term was made obsolete because it describes a receptor type, and not an activity.	0
5315	57269	2	This term was made obsolete because it describes the receptor type, and not an activity.	0
5316	57270	2	This term was made obsolete because it refers to a non-existent molecular function term, 'Hsp27 protein activity'.	0
5317	57274	2	This term was made obsolete because it represents a gene product.	0
5318	57287	2	This term was made obsolete because there is no record of why it was added, and no evidence can be found to suggest that this activity exists.	0
5319	57297	2	This term was made obsolete because it represents component and function information.	0
5321	57321	2	This term was obsoleted because "general/nonspecific/basal" transcription vs "specific" transcription were determined not to be separable, distinct process. Thus, terms trying to distinguish "general/nonspecific/basal" transcription from "specific" transcription were removed from both the Molecular Function and the Biological Process ontologies. In addition, this Molecular Function term was defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5322	57327	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
5323	57333	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5324	57342	2	This term was made obsolete because it represents a gene product.	0
5325	57348	2	This term was made obsolete because it represents a gene product rather than an activity.	0
5326	57357	2	This term was made obsolete because it represents a gene product.	0
5327	57358	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand BDNF. For receptors that bind other growth factors, consider annotating to other terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
5328	57364	2	This term was made obsolete because it was derived from a UM-BBD enzyme entry that has been deleted, and no other information can be found to suggest that it is a naturally occurring activity.	0
5329	57375	2	Note that the enzyme sulfoacetaldehyde acetyltransferase also has sulfoacetaldehyde lyase activity (GO:0050312).	0
5330	57385	2	This term was made obsolete because it refers to a class of gene products.	0
5331	57390	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5332	57400	2	This term was made obsolete because it represents a class of gene products.	0
5333	57410	2	See also the molecular function term 'neurotransmitter:sodium symporter activity ; GO:0005328'.	0
5334	57425	2	This term was made obsolete because it represents a gene product.	0
5335	57430	2	Note that this term encompasses all kinase activities, as well as activities that transfer other phosphorus-containing groups such as diphosphate or nucleotides.	0
5336	57431	2	This term was made obsolete because it represents a multifunctional gene product.	0
5337	57432	2	This term was made obsolete because it mentions a component term in the term text string.	0
5338	57435	2	This term was made obsolete because it describes a cellular component rather than a molecular function.	0
5339	57436	2	This term was made obsolete because it represents a gene product.	0
5340	57444	2	Note that the enzyme ent-kaurenoate oxidase also catalyzes the reactions represented by the molecular function terms 'ent-kaurenoate oxidase activity ; GO:0051777' and 'gibberellin 12-aldehyde oxidase activity ; GO:0051779'.	0
5341	57447	2	Note that this function was EC:2.6.1.61.	0
5342	57464	2	Note that in the standard genetic code, GAA codes for glutamic acid.	0
5343	57484	2	This term was made obsolete because it represents a cellular component.	0
5344	57493	2	This term was made obsolete because it represents two reactions, and should be two separate terms.	0
5345	57495	2	This term was made obsolete because it represents a gene product.	0
5346	57497	2	This term was made obsolete because it describes a type of hormone rather than a molecular function.	0
5347	57501	2	This term was made obsolete because it describes a cellular component rather than a molecular function.	0
5353	57534	2	This term was made obsolete because ABC transporters are a protein family rather than a functional grouping.	0
5354	57553	2	This term was made obsolete because it represents a gene product.	0
5355	57555	2	This term was made obsolete because it refers to a class of gene products.	0
5356	57556	2	This term was made obsolete because no known receptor binds apolipoprotein E; instead, receptors bind holo-lipoprotein E (apolipoprotein E + bound lipid).	0
5357	57565	2	This term was made obsolete because it represents a gene product rather than an activity.	0
5358	57582	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5359	57583	2	This term was made obsolete because it represents two molecular functions.	0
5360	57590	2	See also the molecular function term 'methionine adenosyltransferase activity ; GO:0004478'.	0
5361	57603	2	See also the cellular component term 'signal recognition particle, endoplasmic reticulum targeting ; GO:0005786'.	0
5362	57606	2	Note that in the standard genetic code, ATA codes for isoleucine.	0
5363	57619	2	Note that this term is equivalent to the obsolete molecular function term 'deoxyhypusine synthase activity ; GO:0004171' and corresponds closely to the biological process term 'deoxyhypusine biosynthetic process from spermidine, using deoxyhypusine synthase ; GO:0050983'.	0
5364	57622	2	Note that enzymes of class EC:1.13.99.- should also be annotated to this term.	0
5365	57625	2	This term was made obsolete because it represents a class of gene products rather than a molecular function.	0
5366	57632	2	This term was made obsolete because it incorporates biological process information.	0
5367	57638	2	This term was obsoleted because "general/nonspecific/basal" transcription vs "specific" transcription were determined not to be separable, distinct process. Thus, terms trying to distinguish "general/nonspecific/basal" transcription from "specific" transcription were removed from both the Molecular Function and the Biological Process ontologies. In addition, this Molecular Function term was defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5368	57642	2	Note that in the standard genetic code, CCT codes for proline.	0
5369	57650	2	Note that EC classifies 'UDP-N-acetyl-D-glucosamine:N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimelyl-D-alanyl-D-alanine-diphosphoundecaprenol 4-beta-N-acetylglucosaminlytransferase activity ; GO:0051991' and 'undecaprenyldiphospho-muramoylpentapeptide beta-N-acetylglucosaminyltransferase activity ; GO:0050511' under the same EC number, EC:2.4.1.227.	0
5370	57708	2	This term was made obsolete because it represents a gene product, was not defined, and is named based on protein features.	0
5371	57710	2	This term was made obsolete because it does not represent a molecular function.	0
5372	57721	2	This term was made obsolete because it represents component and function information.	0
5373	57724	2	This term was made obsolete because it contains component and function information.	0
5374	57726	2	This term was made obsolete because it represents both a biological process and a molecular function.	0
5375	57731	2	Note that most helicases catalyze processive duplex unwinding.	0
5376	57745	2	This term was made obsolete because it refers to two different functions, a glutamine amidotransferase that functions as an aminodeoxychorismate synthase [itself composed of two enzymatic activities, a glutaminase and a chorismate aminase (this latter is sometimes referred to as the aminodeoxychorismate synthase)] and a 4-amino-4-deoxychorismate aromatase (4-amino-4-deoxychorismate lyase). Note that the name 'para-amino benzoate synthase' was initially given to the 'aminodeoxychorismate synthase' activity before the additional lyase activity was discovered.	0
5377	57746	2	This term was obsoleted because its definition was vague and apparently broader in scope than the name of the term suggested it was intended to be.	0
5378	57754	2	This term was made obsolete because it is unnecessary in the OBO flat file format.	0
5379	57755	2	This term was made obsolete because it refers to a bifunctional gene product.	0
5380	57760	2	Note that this function was formerly 4.2.99.8.	0
5381	57766	2	This term was made obsolete because the meaning of the term is ambiguous and it incorporates process information.	0
5417	57989	2	Note that type II protein arginine N-methyltransferase enzymes possess 'protein-arginine omega-N monomethyltransferase activity ; GO:0035241' and 'protein-arginine omega-N symmetric methyltransferase activity ; GO:0035243'.	0
5540	58870	2	This term was made obsolete because it represents a gene product.	0
5382	57773	2	The word "promoter" is used variously in the literature to describe the core promoter specifically or the entire proximal regulatory region (excluding any distal enhancers) including both the core promoter and the upstream region where activating transcription factors such as Gal4 in S. cerevisiae or catabolite activator protein (CAP) in E. coli bind. To minimize ambiguity in the use of the word "promoter" in GO, we have chosen the phrase "transcription regulatory region" in order to refer to all of the regulatory regions. Regulatory regions in the DNA which control initiation may include the "core promoter" where the basal transcription machinery binds, the "core promoter proximal region" where regulatory factors other than the basal machinery bind, and "enhancer" regions which are typically more distal from the core promoter. There are also additional regulatory regions, in both the DNA and the RNA transcript, which regulate elongation or termination of transcription. ANNOTATION NOTE: Regarding annotation to "transcription regulatory region DNA binding" (GO:0044212) and any of its is_a children, note that annotation to these terms specifies DNA binding only without any statement about transcription factor activity. To make an annotation about a function of transcription factor activity, consider "sequence-specific DNA binding transcription factor activity" (GO:0003700) or its is_a children which have has_part relationships to the appropriate kind of "transcription regulatory region DNA binding".	0
5383	57793	2	This term was made obsolete because it represents a gene product.	0
5384	57794	2	Note that enzymes of class EC:1.8.99.- should also be annotated to this term.	0
5385	57797	2	Note that this term does not include binding to the antigen peptide bound to the MHC protein. Consider also annotating to the molecular function term 'peptide antigen binding ; GO:0042605' or one of its children.	0
5386	57798	2	This term was made obsolete because it represents a gene product.	0
5387	57802	2	This term was made obsolete because it represents a biological process.	0
5388	57810	2	This term was made obsolete because it represents a gene product.	0
5389	57813	2	Note that an opsonin is a blood serum protein or fragment which when deposited on the surface of a bacteria, virus, immune complex, or other particulate material acts a signal for phagocytosis to cells bearing the appropriate receptors. Not all complement components or fragments and not all antibodies have opsonic properties.	0
5390	57822	2	Note that this function was formerly EC:1.6.99.7.	0
5391	57823	2	This term was made obsolete because it represents a regulator of non-existent molecular function.	0
5392	57829	2	This term was made obsolete because the activity it describes does not exist, and the gene product with the name 'polyketide synthase' has multiple functional domains, so using the name to describe a single function would be misleading.	0
5393	57834	2	Note that the enzyme alcohol oxidase also has methanol oxidase activity (GO:0046563).	0
5394	57838	2	Note that with respect to annotation, "base pairing with RNA" and its child terms are intended to be used to annotate the activity of gene products composed of nucleic acid, presumably RNA, to interact with other RNA molecules via base pairing. Internal base pairing with itself is considered part of the secondary structure of the molecule and is not within the scope of GO function.	0
5395	57841	2	This term was made obsolete because it represents a gene product.	0
5396	57844	2	This term was made obsolete because it represents a regulator of an obsolete molecular function.	0
5397	57845	2	Note that the term 'histone lysine acetyltransferase activity ; GO:0046971' was merged into this term because only lysine residues are ever acetylated in histones, and so the term was redundant.	0
5398	57849	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function term 'glutamate receptor activity ; GO:0008066'.	0
5399	57855	2	This term was made obsolete because it represents a gene product.	0
5400	57886	2	Note that with respect to annotation, "base pairing with RNA" and its child terms are intended to be used to annotate the activity of gene products composed of nucleic acid, presumably RNA, to interact with other RNA molecules via base pairing. Internal base pairing with itself is considered part of the secondary structure of the molecule and is not within the scope of GO function.	0
5401	57888	2	Note that this should not be confused with 'geranylgeranyl-diphosphate geranylgeranyltransferase activity ; GO:0016767', EC:2.5.1.32. This activity is the second part of the formation of phytoene from geranylgeranyl-diphosphate, the first stage of which is catalyzed by EC:2.5.1.32.	0
5402	57890	2	This term was made obsolete because it represents gene products.	0
5403	57896	2	This term was made obsolete because it describes a cellular component rather than a molecular function.	0
5404	57900	2	Note that this function is one of the activities of the trifunctional enzyme propionyl-coenzyme A synthase. See PMID:11821399.	0
5405	57917	2	This term was made obsolete because it represents a gene product.	0
5406	57923	2	This term was made obsolete because it describes a biological process.	0
5407	57927	2	This term was made obsolete because it represents a gene product.	0
5408	57928	2	This term was made obsolete because it represents a gene product.	0
5409	57944	2	This term was made obsolete because it arbitrarily groups three substrates.	0
5410	57945	2	Note that enzymes of class EC:2.4.99.- should also be annotated to this term.	0
5411	57949	2	This term was made obsolete because it was an unnecessary grouping term.	0
5412	57962	2	This term was made obsolete because it does not provide a useful functional classification.	0
5413	57968	2	This term was made obsolete because it represents a gene product.	0
5414	57979	2	This is based on the finding that L-aspartate oxidase (NadB) of E. coli preferentially uses fumarate as the electron acceptor and does so under anaerobic conditions. The same enzyme uses oxygen as the electron acceptor under aerobic conditions. The EC conflates the two reactions in EC 1.4.3.16 (as they are catalyzed by the same enzyme).	0
5415	57984	2	This term was made obsolete because it represents a gene product, was not defined, and is named based on protein features.	0
5416	57985	2	This term was made obsolete because it represents a cellular component.	0
5467	58383	2	This function is part of an alternate glyoxylate cycle for acetate assimilation.	0
5418	57990	2	This term was made obsolete because it describes modification and presence in body fluids rather than an activity.	0
5419	57992	2	Note that this function was formerly EC:1.6.6.8.	0
5420	57995	2	This is a process composed of two reactions represented by the terms 'GO:0052662 : zeaxanthin epoxidase activity' and 'GO:0052663 : antheraxanthin epoxidase activity'.	0
5421	58000	2	This function is part of the pipecolate pathway of lysine catabolism.	0
5422	58012	2	Note that in the standard genetic code, TTG codes for leucine.	0
5423	58022	2	This term was made obsolete because it represents a gene product.	0
5424	58033	2	This term was made obsolete because it represents a biological process and not a molecular function.	0
5425	58042	2	Note that this term may be useful for annotating small nuclear RNAs (snRNAs).	0
5426	58046	2	This term was made obsolete because it represents a gene product.	0
5427	58051	2	Note that the EC recommended name for this enzyme activity is 'calf thymus ribonuclease H', even though it is found in many species.	0
5428	58057	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
5429	58077	2	Note that distal enhancers of the type found in mammalian cells are not known to occur in either Saccharomyces cerevisiae or Schizosaccharomyces pombe. While some S. cerevisiae literature does refer to sequences distal to the initiation site, these distal sites do not seem to function independently of position or orientation as mammalian distal enhancers do and are not considered to be enhancers.	0
5430	58078	2	This term was made obsolete because it describes a cellular location rather than a function.	0
5431	58084	2	This term was made obsolete because it represents a gene product.	0
5432	58090	2	This is a process composed of two reactions represented by the terms 'GO:0052606 : chlorophyllide a oxygenase activity' and 'GO:0052607 : 7-hydroxy-chlorophyllide a oxygenase activity'.	0
5433	58095	2	Note that, although the enzyme to which this term refers is also known as 'ribonuclease PH', and degrades tRNA in the 3'-5' direction in vivo, the term does not have parentage in the 'nuclease activity' branch of the ontology because both GO and the Enzyme Commission define nuclease activity as a type of hydrolysis.	0
5434	58096	2	Note that this function was formerly EC:1.6.99.13.	0
5435	58101	2	This term was made obsolete because, although it was requested, it is not needed after all; it was not defined clearly, and does not necessarily correspond to a catalytic activity.	0
5436	58104	2	This term was made obsolete because it represents a gene product.	0
5437	58111	2	This term was made obsolete because it represents a multifunctional gene product.	0
5438	58112	2	This term was made obsolete because it refers to involvement in a biological process.	0
5439	58140	2	This term was made obsolete because it represents a class of gene products.	0
5440	58151	2	Note that this function was formerly EC:1.13.11.21.	0
5441	58153	2	This term was made obsolete because it is a redundant grouping term based on a TC-DB classification.	0
5442	58155	2	This term was made obsolete because it represents a gene product.	0
5443	58161	2	Note that this function was formerly EC:3.1.1.69.	0
5444	58167	2	Note that peptidyl-L-beta-methylthioaspartic acid is typical of bacterial ribosomal protein S12.	0
5445	58173	2	This term was made obsolete because tRNA thionucleotide formation is a multistep process; there is no single reaction in which cysteine reacts with an activated tRNA directly	0
5446	58178	2	This term was made obsolete because it was an unnecessary grouping term.	0
5447	58183	2	This term was made obsolete because it represents a multifunctional gene product.	0
5448	58184	2	Note that this function was EC:2.5.1.37.	0
5449	58199	2	This term was made obsolete because it contains both component and function information.	0
5450	58222	2	Note that in the standard genetic code, CTC codes for leucine.	0
5451	58252	2	This term was made obsolete because it describes presence in body fluids rather than an activity.	0
5452	58253	2	This term was made obsolete because it represents a gene product.	0
5453	58258	2	This term was made obsolete because it represents a gene product.	0
5454	58272	2	This term was made obsolete because 'cytoskeleton' is not an activity, and regulation of its distribution or modification belongs in the process ontology.	0
5455	58273	2	Note that this activity is usually associated in vivo with an NADPH-dependent disulfide reductase activity, so that catalysis of the reduction of peroxynitrite to nitrite involves the possible creation of oxygen or water, using NADPH as reduction equivalent.	0
5456	58288	2	This term was made obsolete because it represents a process.	0
5457	58291	2	This term was made obsolete because it represents a class of gene products, and its definition incorporates process information.	0
5458	58295	2	This term was made obsolete because it does not represent a molecular function.	0
5459	58297	2	This term was made obsolete because it refers to a class of gene products.	0
5460	58310	2	This term was made obsolete because it refers to a obsolete molecular function term, 'chaperone activity'.	0
5461	58318	2	This term was made obsolete because it represents two reactions, and should be two separate terms.	0
5462	58341	2	Note that this was EC:1.4.3.17.	0
5463	58356	2	This term was made obsolete because it represents a class of gene products and a biological process rather than a molecular function.	0
5464	58362	2	This term was made obsolete because it contains both process and function information.	0
5465	58363	2	This term was made obsolete because it describes a cellular component.	0
5466	58378	2	This term was made obsolete because it represents a gene product, and the substrate specificity it refers to is not cleanly defined.	0
5468	58385	2	This term was made obsolete because it represents a gene product.	0
5469	58386	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
5470	58387	2	This term was made obsolete because it was an unnecessary grouping term.	0
5471	58399	2	This term was made obsolete because it describes a class of gene products.	0
5472	58405	2	Note that this function was formerly EC:1.1.1.253.	0
5473	58417	2	The word "promoter" is used variously in the literature to describe the core promoter specifically or the entire proximal regulatory region (excluding any distal enhancers) including both the core promoter and the upstream region where activating transcription factors such as Gal4 in S. cerevisiae or catabolite activator protein (CAP) in E. coli bind. To minimize ambiguity in the use of the word "promoter" in GO, we have chosen the phrase "transcription regulatory region" in order to refer to all of the regulatory regions. Regulatory regions in the DNA which control initiation may include the "core promoter" where the basal transcription machinery binds, the "core promoter proximal region" where regulatory factors other than the basal machinery bind, and "enhancer" regions which are typically more distal from the core promoter. There are also additional regulatory regions, in both the DNA and the RNA transcript, which regulate elongation or termination of transcription. ANNOTATION NOTE: Regarding annotation to "transcription regulatory region DNA binding" (GO:0044212) and any of its is_a children, note that annotation to these terms specifies DNA binding only without any statement about transcription factor activity. To make an annotation about a function of transcription factor activity, consider "sequence-specific DNA binding transcription factor activity" (GO:0003700) or its is_a children which have has_part relationships to the appropriate kind of "transcription regulatory region DNA binding".	0
5474	58419	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5475	58430	2	This term was made obsolete because it represents a gene product.	0
5476	58439	2	This function is involved in archaeal lipid synthesis.	0
5477	58454	2	Note that this enzyme does not have an EC number yet, as its activity has not been proven experimentally. May need to be moved in the future.	0
5478	58455	2	This term was made obsolete because it represents a gene product.	0
5479	58459	2	Note that this term is intended for annotation of gene products that act as receptors for MHC class II protein complexes, not for components of the MHC class II protein complexes themselves.	0
5480	58467	2	This term was made obsolete because it was defined incorrectly: there are no known peptidases using a catalytic mechanism involving arginine and lysine, and the Arabidopsis metacaspases that prompted addition of this term are in fact cysteine-type endopeptidases.	0
5481	58472	2	Note that breathless is the Drosophila gene encoding the type 1 fibroblast growth factor receptor (FGFR1).	0
5482	58482	2	This term was made obsolete because it does not represent a true function.	0
5483	58487	2	This term was made obsolete because it represents a gene product.	0
5484	58489	2	This term was made obsolete because 'heavy metal' is an ambiguous grouping term which has no set meaning (see Pure Appl. Chem. Vol. 74, No. 5, pp. 793-807, 2002, for more information).	0
5485	58495	2	This term was made obsolete because it represents a gene product.	0
5486	58501	2	This term was made obsolete because it represents a class of gene products.	0
5487	58519	2	This term was made obsolete because it represents a gene product.	0
5488	58522	2	This term was made obsolete because the meaning of the term is ambiguous and it incorporates process information.	0
5489	58527	2	Note that this function was EC:4.3.1.21.	0
5490	58530	2	This term was made obsolete because it represents more than one molecular function.	0
5491	58531	2	Note that this term can be used in place of the obsolete molecular function term 'common-partner SMAD protein ; GO:0005073' and is useful for annotating proteins of the SMAD family.	0
5492	58535	2	Note that enzymes of class EC:1.12.99.- should also be annotated to this term.	0
5493	58541	2	This term was made obsolete because it represents a gene product.	0
5494	58547	2	See also the molecular function term 'phosphoinositide 3-kinase activity ; GO:0035004'.	0
5495	58548	2	This term was made obsolete because it does not represent a molecular function.	0
5496	58549	2	This term was made obsolete because it was an unnecessary grouping term.	0
5497	58556	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
5498	58572	2	Note that this function was formerly EC:4.3.99.1.	0
5499	58631	2	This term was made obsolete because it represents a gene product.	0
5500	58640	2	This term was made obsolete because it incorporates process information.	0
5501	58644	2	This term was made obsolete because the definition is ambiguous and contains incorrect information. To update annotations of gene products that act as receptors for MHC class I protein complexes, use the molecular function term 'MHC class I receptor activity ; GO:0032393'; to update annotations of gene products which are components of MHC class I protein complexes, use the cellular component term 'MHC class I protein complex ; GO:0042612'.	0
5502	58651	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand HGF. For receptors that bind other growth factors, consider annotating to other terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
5503	58653	2	This term was made obsolete because it represents a biological process and a molecular function.	0
5504	58658	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
5505	58660	2	This term was made obsolete because it does not make sense.	0
5506	58664	2	Note that mammalian NT-5 was initially named differently from amphibian NT-4 because of sequence differences, but the two genes were later shown to be functionally equivalent [SF:919858].	0
5507	58666	2	This term was made obsolete because it represents a gene product.	0
5508	58668	2	This term was made obsolete because it refers to a class of proteins.	0
5509	58670	2	This term was made obsolete because it does not represent a function.	0
5510	58676	2	Note that this function was formerly EC 1.12.1.1, EC 1.12.7.1, EC 1.98.1.1, EC 1.18.3.1 and EC 1.18.99.1.	0
5511	58677	2	This term was made obsolete because it was an unnecessary grouping term.	0
5512	58678	2	Note that the two reactions performed by EC:2.5.1.21 are represented in GO by 'farnesyl-diphosphate farnesyltransferase activity ; GO:0004310' and 'squalene synthase activity ; GO:0051996'.	0
5513	58701	2	This term was made obsolete because the parent terms cover its function.	0
5514	58704	2	Note that the overall reaction representing three successive executions of this activity is N1,N5,N10-tricoumaroyl spermidine + 3 NADPH + 3 O2 = N1,N5,N10-tricaffeoyl spermidine + 3 NADP+ + 3 H2O; this corresponds to the MetaCyc reaction RXN-11260 (http://biocyc.org/META/NEW-IMAGE?type=REACTION&object=RXN-11260).	0
5515	58710	2	This term was made obsolete because it represents a biological process and not a molecular function.	0
5516	58714	2	Note that enzymes of class EC:1.9.99.- should also be annotated to this term.	0
5517	58718	2	Note that many gene products that are called scavenger receptors have a broad range of potential ligands and also can be annotated to 'pattern recognition receptor activity ; GO:0008329' or its child terms, or to 'lipoprotein receptor activity ; GO:0030228' or its child terms. For receptors that transduce a signal rather than endocytose their ligand, consider instead the terms 'signaling receptor activity ; GO:0038023' and its children.	0
5518	58722	2	This term was made obsolete because it describes a class of gene products rather than a molecular function.	0
5519	58727	2	This term was made obsolete because it represents a gene product.	0
5520	58736	2	Note that enzymes of class EC:5.1.99.- should also be annotated to this term. Note that 'epimerase' refers to the conversion of an epimer into its diastereoisomer, and 'racemase' refers to the interconversion of the two enantiomers of a chiral compound.	0
5521	58750	2	This term was made obsolete because it represents both a biological process and a molecular function.	0
5522	58751	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5523	58753	2	Note that in the standard genetic code, AGA codes for arginine.	0
5524	58757	2	Note that in the standard genetic code, AGC codes for serine.	0
5525	58760	2	This term was made obsolete because it is a redundant grouping term with only one child.	0
5526	58763	2	This term was made obsolete because it represents a multifunctional gene product.	0
5527	58768	2	This function is part of an anaerobic pathway for the catabolism of L-threonine.	0
5528	58775	2	This term was made obsolete because it is based on anatomical information, and describes at least one gene product. It has also never been defined.	0
5529	58777	2	Note that in the standard genetic code, ATG codes for methionine, and is the initiator codon.	0
5530	58809	2	This term was made obsolete because it represents a gene product.	0
5531	58811	2	Note that this is the first step in the formation of farnesyl diphosphate. The second step is 'geranyltranstransferase activity ; GO:0004337'. Consider also annotating to the biological process term 'farnesyl diphosphate biosynthetic process ; GO:0045337'.	0
5532	58819	2	This function is the second step in the pathway of methanogenesis from monomethylamine, dimethylamine and trimethylamine.	0
5533	58823	2	This term was made obsolete because more specific terms were created.	0
5534	58824	2	Note that this function was formerly EC:4.1.2.16.	0
5535	58828	2	This term was made obsolete because it was an unnecessary grouping term.	0
5536	58832	2	This term was made obsolete because it represents a multifunctional gene product.	0
5537	58833	2	This term was made obsolete because it represents a gene product.	0
5538	58839	2	This term was made obsolete because it represents a gene product.	0
5539	58843	2	This term was made obsolete because no known receptor binds apolipoprotein E; instead, receptors bind holo-lipoprotein E (apolipoprotein E + bound lipid).	0
5541	58877	2	This term was made obsolete because it represents two reactions, and should be two separate terms.	0
5542	58881	2	This term was made obsolete because it represents a gene product.	0
5543	58888	2	This term was made obsolete because the activities used in the U2- and U12-type complexes are the same. The cellular component ontology should (and does) represent the two different complexes, but the molecular function ontology should not.	0
5544	58903	2	Note that in the standard genetic code, GCC codes for alanine.	0
5545	58913	2	Note that this function was formerly EC:4.2.99.10.	0
5546	58915	2	This term was made obsolete because it represents a gene product.	0
5547	58933	2	This term was made obsolete because it includes anatomy information.	0
5548	58953	2	This term was made obsolete because the functional distinction for cap binding is the structure of the cap, not the type of RNA it is attached to.	0
5549	58977	2	This term was made obsolete because it represents a gene product.	0
5550	58995	2	This term was made obsolete because it was an unnecessary grouping term.	0
5551	58997	2	See also the molecular function term 'histone acetyltransferase activity ; GO:0004402'.	0
5552	59003	2	This term was made obsolete because it was replaced by more specific terms.	0
5553	59010	2	Note that this function was formerly EC:4.3.1.14.	0
5554	59011	2	This term was made obsolete because it does not represent a molecular function.	0
5555	59020	2	Note that this was EC:2.7.1.152. This term was made obsolete because this activity is currently defined as catalyzing two reactions based on a gene product. The reactions listed in the definition can be catalyzed independently by other gene products.	0
5556	59021	2	This term was made obsolete because it was an unnecessary grouping term.	0
5557	59028	2	This term was made obsolete because it represents a gene product.	0
5558	59030	2	This term was made obsolete because it represents a gene product.	0
5559	59046	2	This term was made obsolete because it represents a gene product.	0
5560	59059	2	The word "promoter" is used variously in the literature to describe the core promoter specifically or the entire proximal regulatory region (excluding any distal enhancers) including both the core promoter and the upstream region where activating transcription factors such as Gal4 in S. cerevisiae or catabolite activator protein (CAP) in E. coli bind. To minimize ambiguity in the use of the word "promoter" in GO, we have chosen the phrase "transcription regulatory region" in order to refer to all of the regulatory regions. Regulatory regions in the DNA which control initiation may include the "core promoter" where the basal transcription machinery binds, the "core promoter proximal region" where regulatory factors other than the basal machinery bind, and "enhancer" regions which are typically more distal from the core promoter. There are also additional regulatory regions, in both the DNA and the RNA transcript, which regulate elongation or termination of transcription. ANNOTATION NOTE: Regarding annotation to "transcription regulatory region DNA binding" (GO:0044212) and any of its is_a children, note that annotation to these terms specifies DNA binding only without any statement about transcription factor activity. To make an annotation about a function of transcription factor activity, consider "sequence-specific DNA binding transcription factor activity" (GO:0003700) or its is_a children which have has_part relationships to the appropriate kind of "transcription regulatory region DNA binding".	0
5561	59065	2	This term was made obsolete because it describes involvement in a process and not a function.	0
5562	59094	2	This term was made obsolete because it represents a gene product.	0
5563	59104	2	This term was made obsolete because it was derived from a UM-BBD enzyme entry that has been deleted, and no other information can be found to suggest that it is a naturally occurring activity.	0
5564	59105	2	This term was made obsolete because it represents a gene product.	0
5565	59121	2	A signaling adaptor can bring together both protein and non-protein molecules within a signaling pathway.	0
5566	59124	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5567	59134	2	This term was made obsolete because it represents a gene product.	0
5568	59142	2	This term was made obsolete because it represents a gene product.	0
5569	59155	2	This term was made obsolete because it represents more than one molecular function.	0
5570	59163	2	Note that collectins include such proteins as mannose-binding lectins (MBL) and surfactant proteins A and D (SP-A and SP-D).	0
5571	59168	2	Note that this term represents activities that do not break or form phosphodiester bonds, and is therefore not a parent of 'site-specific recombinase activity ; GO:0009009'.	0
5572	59169	2	This term was made obsolete because it does not represent a true biological function, rather a pathology that occurs when a particular gene product is inactivated in some way.	0
5573	59175	2	This term was made obsolete because it includes a process term.	0
5574	59176	2	Should omega be included here?	0
5575	59177	2	This term was made obsolete because it represents a gene product and is named based on protein features.	0
5576	59182	2	Note that the name 'para-aminobenzoic acid synthase' was initially given to the 'aminodeoxychorismate synthase' activity before the additional 4-amino-4-deoxychorismate lyase activity was discovered. It is the lyase activity that actually produces para-aminobenzoic acid from 4-amino-4-deoxychorismate.	0
5577	59186	2	Note that EC classifies 'UDP-N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimelyl-D-alanyl-D-alanine:undecaprenyl-phosphate transferase activity ; GO:0051992' and 'phospho-N-acetylmuramoyl-pentapeptide-transferase activity ; GO:0008963' under the same EC number, EC:2.7.8.13.	0
5578	59187	2	This term was made obsolete because it describes the composition (i.e. proteoglycan) of a gene product, not a molecular function.	0
5579	59190	2	Note that this function was formerly EC:4.1.99.4.	0
5580	59198	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
5581	59199	2	This term was made obsolete because it represents a gene product, was not defined, and is named based on protein features.	0
5582	59205	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5583	59223	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5584	59232	2	This term was made obsolete because it names a family of gene products.	0
5585	59233	2	This term was made obsolete because it represents a gene product.	0
5586	59236	2	This term was made obsolete because it represents a gene product.	0
5587	59238	2	This term was made obsolete because it represents a gene product which can catalyze two reactions.	0
5588	59244	2	This term was made obsolete because it represents three molecular functions.	0
5589	59247	2	This term was made obsolete because it represents a process rather than a function.	0
5590	59254	2	This term was made obsolete because it represents two reactions, and should be two separate terms.	0
5591	59257	2	This term was made obsolete because it represents a gene product and not a function.	0
5592	59262	2	This term was made obsolete because it represents a gene product.	0
5593	59263	2	This term was made obsolete because the differentia from the parent is a gene product feature (specifically, the presence of a molybdopterin cofactor in the protein). It has also never been defined.	0
5594	59264	2	This term was made obsolete because there is no record of why it was added, and no evidence can be found to suggest that this activity exists.	0
5595	59266	2	This term was made obsolete because it represents a gene product.	0
5596	59289	2	This term was made obsolete because it represents a gene product.	0
5597	59294	2	Note that enzymes of class EC:4.3.99.- should also be annotated to this term.	0
5598	59296	2	This term was made obsolete because it represents a gene product.	0
5599	59308	2	For example, both TFIIA as well as TFIIB interact with TBP bound to DNA to stabilize formation of the preinitiation complex.	0
5600	59312	2	This term was made obsolete because it represents a gene product.	0
5601	59313	2	This term was made obsolete because it represents two reactions, and should be two separate terms.	0
5602	59324	2	This term was made obsolete because it represents a gene product.	0
5603	59336	2	Note that in the standard genetic code, CGA codes for arginine.	0
5604	59344	2	This term was made obsolete because it describes involvement in a process and not a function.	0
5605	59349	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function terms 'glutamate-gated ion channel activity ; GO:0005234' and 'cation channel activity ; GO:0005261'.	0
5606	59357	2	Note that in the standard genetic code, CCC codes for proline.	0
5607	59367	2	This term was made obsolete because it represents a gene product.	0
5608	59378	2	This term was made obsolete because this solute is transported by an active transporter rather than a channel.	0
5609	59383	2	Note that this term may be useful for annotating small nuclear RNAs (snRNAs).	0
5610	59386	2	This term was made obsolete because it does not represent a function.	0
5611	59389	2	This term was made obsolete because the EC activity it represents, EC:1.2.2.2, has been deleted.	0
5612	59390	2	This term was made obsolete because it represents a gene product, was not defined, and is named based on protein features.	0
5613	59395	2	This term was made obsolete because it represents a multifunctional gene product.	0
5614	59405	2	This term was made obsolete because it contains both component and function information.	0
5615	59412	2	This term was made obsolete because it represents a gene product.	0
5616	59430	2	This term was made obsolete because it represents a protein family rather than a molecular function.	0
5653	59752	2	Note that enzymes of class EC:1.3.99.- should also be annotated to this term.	0
5617	59432	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function terms 'cell adhesion molecule binding ; GO:0050839' and 'receptor binding ; GO:0005102' and the biological process term 'cell adhesion ; GO:0007155'.	0
5618	59439	2	This term was made obsolete because it was an unnecessary grouping term.	0
5619	59444	2	This term was made obsolete because it represents a gene product.	0
5620	59451	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5621	59479	2	This term was made obsolete because it represents component and function information.	0
5622	59487	2	This term was obsoleted because "general/nonspecific/basal" transcription vs "specific" transcription were determined not to be separable, distinct process. Thus, terms trying to distinguish "general/nonspecific/basal" transcription from "specific" transcription were removed from both the Molecular Function and the Biological Process ontologies. In addition, this Molecular Function term was defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5623	59493	2	This term was made obsolete because it represents a gene product.	0
5624	59506	2	This term was made obsolete because it does not represent a molecular function.	0
5625	59507	2	This term was made obsolete because it does not represent a molecular function.	0
5626	59508	2	Note that in the ecdysteroidogenic pathway, this activity catalyzes the conversion of 2-deoxyecdysone to ecdysone. It can also catalyze the conversion of 2,22-dideoxyecdysone (ketotriol) to 22-deoxyecdysone.	0
5627	59515	2	This term was made obsolete because it does not describe a molecular function.	0
5628	59516	2	This term was made obsolete because it represents cellular component and molecular function information.	0
5629	59527	2	Note that this function was formerly EC:4.1.3.2.	0
5630	59539	2	This term was made obsolete because it represents a multifunctional gene product.	0
5631	59544	2	This term was made obsolete because it represents involvement in a biological process.	0
5632	59562	2	This term was made obsolete because it describes a type of hormone rather than a molecular function.	0
5633	59603	2	See also the cellular component term 'katanin complex ; GO:0008352'.	0
5634	59605	2	Note that in the standard genetic code, TGA is a stop codon (opal) and is not normally read by a tRNA.	0
5635	59611	2	Note that this term may be useful for annotating other small nuclear RNAs (snRNAs).	0
5636	59629	2	This term was made obsolete because it represents a gene product.	0
5637	59637	2	This term was made obsolete because it describes a biological process.	0
5638	59638	2	This term was made obsolete because it represents a gene product.	0
5639	59640	2	This term was made obsolete because it represents a gene product.	0
5640	59642	2	Note that IL-28A, IL-28B, and IL-29 are types of interferon-lambda.	0
5641	59646	2	This term was made obsolete because it represents a gene product.	0
5642	59662	2	This term was made obsolete because it represents a gene product.	0
5643	59665	2	This term was made obsolete because it does not represent a function.	0
5644	59678	2	Note that in the standard genetic code, GTA codes for valine.	0
5645	59683	2	This term was made obsolete because it represents two reactions, and should be two separate terms.	0
5646	59700	2	Note that this activity includes EC:2.8.2.12 (deleted from EC).	0
5647	59704	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5648	59718	2	Note that in the standard genetic code, CGG codes for arginine.	0
5649	59720	2	This term was made obsolete because it describes a class of gene products rather than a molecular function.	0
5650	59731	2	This term was made obsolete because this function does not exist; alpha-factor is secreted by the classical secretion pathway and not exported.	0
5651	59738	2	This term was made obsolete because it represents a class of gene products, and its definition incorporates process information.	0
5652	59741	2	This term was made obsolete because it was derived from a UM-BBD enzyme entry that has been deleted, and no other information can be found to suggest that it is a naturally occurring activity.	0
5654	59758	2	This term was made obsolete because the definition does not match the term name.	0
5655	59763	2	This term was made obsolete because the existence of this function has not been established.	0
5656	59778	2	Note that the enzyme arsenite methyltransferase also has methylarsonite methyltransferase activity (GO:0030792).	0
5657	59790	2	This term was made obsolete because it represents a gene product.	0
5658	59793	2	This term was made obsolete because it was an unnecessary grouping term.	0
5659	59798	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function terms 'ionotropic glutamate receptor activity ; GO:0004970' and 'cation channel activity ; GO:0005261'.	0
5660	59802	2	This term was made obsolete because 'large uncharged polar molecule' is not a useful chemical grouping term.	0
5661	59811	2	This term was made obsolete because it describes a biological process.	0
5662	59820	2	Note that in the standard genetic code, AAA codes for lysine.	0
5663	59822	2	This term was made obsolete because it represents a class of gene products rather than a molecular function.	0
5664	59827	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5665	59844	2	Note that the name Sar derives from 'secretion-associated, Ras-related'.	0
5666	59849	2	This term was made obsolete because it was derived from a UM-BBD enzyme entry that has been deleted, and no other information can be found to suggest that it is a naturally occurring activity.	0
5667	59866	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5668	59868	2	This term was made obsolete because it describes a cellular component.	0
5669	59869	2	This term was made obsolete because there is no record of why it was added, and no evidence can be found to suggest that this activity exists.	0
5670	59870	2	Note that this function was formerly EC:1.14.99.5.	0
5671	59883	2	Note that this activity can catalyze cleavage of DNA or RNA.	0
5672	59905	2	This term was made obsolete because it represents gene products involved in the biological process of cell adhesion.	0
5673	59914	2	This term was made obsolete because it represents a gene product.	0
5674	59916	2	This term was made obsolete because it refers to involvement in a biological process.	0
5675	59917	2	This term was made obsolete because it represents a multifunctional gene product.	0
5676	59921	2	This term was made obsolete because it represents a class of gene products.	0
5677	59922	2	Note that with respect to annotation, "base pairing with RNA" and its child terms are intended to be used to annotate the activity of gene products composed of nucleic acid, presumably RNA, to interact with other RNA molecules via base pairing. Internal base pairing with itself is considered part of the secondary structure of the molecule and is not within the scope of GO function.	0
5678	59923	2	Note that in the standard genetic code, CTG codes for leucine.	0
5679	59924	2	This term was made obsolete because it represents two reactions.	0
5680	59930	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5681	59933	2	This term was made obsolete because it represents a gene product.	0
5682	59948	2	This term was made obsolete because it does not represent a molecular function.	0
5683	59967	2	Note that enzymes of class EC:6.3.4.- should also be annotated to this term.	0
5684	59970	2	This term was made obsolete because it represents a gene product.	0
5685	59976	2	This term was made obsolete because it represents a gene product, and the substrate specificity it refers to is not cleanly defined.	0
5729	60277	2	Note that in the standard genetic code, GAC codes for aspartic acid.	0
5730	60285	2	This term was made obsolete because it represents a gene product.	0
5686	59984	2	Note that while this enzyme uses a similar reaction chemistry to topoisomerases and site-specific recombinases, it performs a unique reaction. Topoisomerases promote breakage and reunion of either one or two DNA strands to alter the topological state of a DNA molecule. Site-specific recombinases perform a more complex reaction in which four strands are broken and subsequently joined to a different DNA duplex, resulting in the production of a recombinant product. The telomere resolvases on the other hand, must break two phosphodiester bonds in a single DNA duplex (one on each strand) and join each end with the opposite DNA strand to form covalently closed hairpin telomeres.	0
5687	59985	2	This term was made obsolete because it represents a gene product.	0
5688	59998	2	This term was made obsolete because it describes a receptor type, and not an activity.	0
5689	60002	2	This term was made obsolete because it refers to a non-existent molecular function term, 'Hsp90 protein activity'.	0
5690	60003	2	Note that enzymes of class EC:1.97.-.- should also be annotated to this term.	0
5691	60005	2	This term was made obsolete because it contains both component and function information.	0
5692	60009	2	Note that enzymes of class EC:4.1.99.- should also be annotated to this term.	0
5693	60023	2	This term was made obsolete because it represents a class of gene products.	0
5694	60025	2	This term was made obsolete because it represents a multistep reaction.	0
5695	60036	2	Note that the phrase 'oxidosqualene cyclase' has been used to refer to enzymes that catalyze the reaction represented by 'lanosterol synthase activity ; GO:0000250'.	0
5696	60040	2	This term was made obsolete because it describes presence in body fluids rather than an activity.	0
5697	60044	2	This term was made obsolete because it represents a gene product.	0
5698	60050	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
5699	60062	2	Note that enzymes of class EC:5.3.99.- should also be annotated to this term.	0
5700	60073	2	This term was made obsolete because it represents a cellular component.	0
5701	60074	2	This term was made obsolete because it represents a gene product, and because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
5702	60075	2	This term was made obsolete because it refers to a non-existent molecular function term, 'Hsp70/Hsc70 protein activity'.	0
5703	60077	2	This term was made obsolete because it does not represent a true molecular function.	0
5704	60087	2	Note that this term is intended for annotation of gene products that act as receptors for MHC class Ib protein complexes, not for components of the MHC class Ib protein complexes themselves.	0
5705	60099	2	Note that with respect to annotation, "base pairing with RNA" and its child terms are intended to be used to annotate the activity of gene products composed of nucleic acid, presumably RNA, to interact with other RNA molecules via base pairing. Internal base pairing with itself is considered part of the secondary structure of the molecule and is not within the scope of GO function.	0
5706	60105	2	This term was made obsolete because it represents a class of gene products.	0
5707	60115	2	This term was made obsolete because it represents a multifunctional gene product.	0
5708	60121	2	This term was made obsolete because it represents a gene product.	0
5709	60122	2	This term was made obsolete because it represents a gene product.	0
5710	60128	2	This term was made obsolete because it was an unnecessary grouping term.	0
5711	60130	2	See also the molecular function term '1-phosphatidylinositol-3-kinase activity ; GO:0016303'.	0
5712	60149	2	This term was made obsolete because it represents a class of gene products.	0
5713	60155	2	This term was made obsolete because it represents a gene product.	0
5714	60158	2	Note that this function is one of the activities of the trifunctional enzyme propionyl-coenzyme A synthase. See PMID:11821399.	0
5715	60162	2	This term was made obsolete because it represents a gene product, and because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
5716	60163	2	This term was made obsolete because it represents a multifunctional gene product.	0
5717	60167	2	This term was made obsolete because it represents a regulator of an obsolete molecular function.	0
5718	60177	2	This term was made obsolete because it describes a gene product and it contains both component and function information.	0
5719	60186	2	The reduction of O2 to water is accompanied by the extrusion of four protons from the intramitochondrial compartment.	0
5720	60192	2	Note that phosphorylation of IkappaB targets it for proteasomal degradation and allows the nuclear translocation of kB. The kinase is composed of alpha, beta and gamma subunits, of which the latter does not have kinase activity but is presumed to play a regulatory role.	0
5721	60193	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5722	60212	2	Note that this term is to be used only to annotate gene products that bind to lipid-free APOA1. For receptors that bind lipid-associated apolipoproteins (plasma lipoprotein particles), consider annotating to 'lipoprotein receptor activity ; GO:0030228' or its child terms.	0
5723	60218	2	This term was made obsolete because it was derived from an EC entry (1.2.1.1) that has since been split into two entries.	0
5724	60219	2	This function is part of the prokaryotic alpha-aminoadipate lysine biosynthesis pathway.	0
5725	60245	2	This term was made obsolete because it represents a gene product.	0
5726	60260	2	This term was made obsolete because the term is undefined and we don't know the mechanism so we can't make a correct definition.	0
5727	60261	2	This term was made obsolete because it represents a gene product.	0
5728	60266	2	This term was made obsolete because it represents a gene product.	0
5731	60288	2	This term was made obsolete because it represents a gene product.	0
5732	60293	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
5733	60300	2	This term was made obsolete because it represents a gene product.	0
5734	60304	2	This term was made obsolete because it has been widely, and incorrectly, used to annotate proteins that have GPI anchors covalently attached. A new term has been created that can be used to annotate gene products that interact non-covalently with GPI anchors.	0
5735	60305	2	This term was made obsolete because it refers to involvement in a biological process.	0
5736	60316	2	This term was made obsolete because it does not represent a true molecular function.	0
5737	60329	2	This term was made obsolete because it is not a valid molecular function.	0
5738	60333	2	Note that this term should be used to annotate gene products that interact non-covalently with GPI anchors, and not proteins that have GPI anchors covalently attached.	0
5739	60339	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
5740	60349	2	This term was made obsolete because the function is covered by a parent term.	0
5741	60369	2	Note that in the standard genetic code, ACG codes for threonine.	0
5742	60403	2	Note that in the standard genetic code, GGT codes for glycine.	0
5743	60419	2	This term was made obsolete because it describes involvement in a process and not a function.	0
5744	60440	2	This term was made obsolete because it refers to a bifunctional gene product.	0
5745	60449	2	This term was made obsolete because it refers to a non-existent molecular function term, 'Hsp70 protein activity'.	0
5746	60454	2	Note that the methyl donor is usually S-adenosyl-L-methionine, but there is at least one exception (see GO:0030698).	0
5747	60457	2	This term was made obsolete because it cannot be determined what its intended meaning was, because the term name is not found in the literature.	0
5748	60459	2	This term was made obsolete because it represents a multifunctional gene product.	0
5749	60472	2	Note that this activity was formerly know in GO and EC as 'tRNA isopentenyltransferase' (EC 2.5.1.8, GO:0004811), but it is now known that dimethylallyl diphosphate, rather than isopentenyl diphosphate, is the substrate.	0
5750	60474	2	This term was made obsolete because internalization is a process, not a ligand to which a receptor might bind.	0
5751	60477	2	This term was made obsolete because it represents a gene product.	0
5752	60480	2	This term was made obsolete because it is a redundant grouping term.	0
5753	60481	2	This term was made obsolete because it refers to a class of proteins.	0
5754	60482	2	Note that this function was formerly EC:1.6.6.1.	0
5755	60495	2	This term was made obsolete because it represents a gene product.	0
5756	60498	2	This term was made obsolete because it represents a gene product.	0
5757	60505	2	This term was made obsolete because it represents a combination of process and function information.	0
5758	60506	2	This term was made obsolete because it represents a gene product.	0
5759	60512	2	Note that this function was formerly EC:4.1.3.8.	0
5760	60518	2	Note that in the standard genetic code, TAC codes for tyrosine.	0
5761	60520	2	Note that this term can be used in place of the obsolete term 'transfer RNA ; GO:0005563'.	0
5762	60530	2	This term was made obsolete because it does not represent a function.	0
5763	60544	2	Note that enzymes of class EC:4.99.-.- should also be annotated to this term.	0
5764	60545	2	This term was made obsolete because it describes localization and modification rather than activity.	0
5765	60546	2	For binding to the death effector domain, consider instead the term 'death effector domain binding ; GO:0035877'.	0
5766	60551	2	Note that in the standard genetic code, CGT codes for arginine.	0
5767	60557	2	The word "promoter" is used variously in the literature to describe the core promoter specifically or the entire proximal regulatory region (excluding any distal enhancers) including both the core promoter and the upstream region where activating transcription factors such as Gal4 in S. cerevisiae or catabolite activator protein (CAP) in E. coli bind. To minimize ambiguity in the use of the word "promoter" in GO, we have chosen the phrase "transcription regulatory region" in order to refer to all of the regulatory regions. Regulatory regions in the DNA which control initiation may include the "core promoter" where the basal transcription machinery binds, the "core promoter proximal region" where regulatory factors other than the basal machinery bind, and "enhancer" regions which are typically more distal from the core promoter. There are also additional regulatory regions, in both the DNA and the RNA transcript, which regulate elongation or termination of transcription. ANNOTATION NOTE: Regarding annotation to "transcription regulatory region DNA binding" (GO:0044212) and any of its is_a children, note that annotation to these terms specifies DNA binding only without any statement about transcription factor activity. To make an annotation about a function of transcription factor activity, consider "sequence-specific DNA binding transcription factor activity" (GO:0003700) or its is_a children which have has_part relationships to the appropriate kind of "transcription regulatory region DNA binding".	0
5768	60564	2	This term was made obsolete because it represents a gene product.	0
5769	60571	2	Note that this function was formerly EC:1.6.4.8.	0
5770	60577	2	Note that in the standard genetic code, TAT codes for tyrosine.	0
5771	60579	2	Note that enzymes of class EC:1.7.99.- should also be annotated to this term.	0
5772	60590	2	Note that in the ecdysteroidogenic pathway, this activity catalyzes the conversion of 2,22-dideoxyecdysone (ketotriol) to 2-deoxyecdysone.	0
5773	60592	2	Note that this term can be used in place of the obsolete molecular function term 'inhibitory SMAD protein ; GO:0005074' and is useful for annotating proteins of the SMAD family.	0
5810	60851	2	This term was made obsolete because it does not represent a true function.	0
5774	60593	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function terms 'chloride channel activity ; GO:0005254', 'GABA receptor activity ; GO:0016917' and 'inhibitory extracellular ligand-gated ion channel activity ; GO:0005237'.	0
5775	60605	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function terms 'ionotropic glutamate receptor activity ; GO:0004970' and 'cation channel activity ; GO:0005261'.	0
5776	60615	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5777	60618	2	This term was made obsolete because it refers to a class of gene products.	0
5778	60619	2	This term was made obsolete because it describes modification and presence in body fluids rather than an activity.	0
5779	60622	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
5780	60630	2	Note that the enzyme ent-kaurenoate oxidase also catalyzes the reactions represented by the molecular function terms 'ent-7-alpha-hydroxykaurenoate oxidase activity ; GO:0051778' and 'gibberellin 12-aldehyde oxidase activity ; GO:0051779'.	0
5781	60636	2	Note that the complement cascade includes all of the components involved in the classical complement pathway, the alternative complement pathway, and the lectin complement pathway, as well as the common components of all three pathways.	0
5782	60651	2	This term was made obsolete because it represents a bifunctional gene product.	0
5783	60655	2	This term was made obsolete because this solute is transported by an active transporter rather than a channel.	0
5784	60657	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function term 'serotonin receptor activity ; GO:0004993'.	0
5785	60661	2	This term was made obsolete because it represents a gene product.	0
5786	60668	2	This term was made obsolete because it does not represent a molecular function.	0
5787	60694	2	This term was made obsolete because it refers to a class of gene products.	0
5788	60697	2	This term was made obsolete because it represents a gene product.	0
5789	60710	2	This term was made obsolete because it represents a regulator of an obsolete molecular function.	0
5790	60713	2	This term was made obsolete because it represents a gene product.	0
5791	60723	2	Consider also annotating to the molecular function term 'DNA-(apurinic or apyrimidinic site) lyase activity ; GO:0003906'.	0
5792	60728	2	This term was made obsolete because it represents a gene product.	0
5793	60729	2	This term was made obsolete because it represents two reactions, and should be two separate terms.	0
5794	60737	2	This term was made obsolete because it represents a gene product.	0
5795	60744	2	Note that the term name mentions a specific position within a tRNA because no other names have yet arisen for this activity, and because the position is conserved in nearly all tRNAs. The term nevertheless can be used for activities that methylase an analogous residue at a position other than 54, if such is found, and synonyms that mention positions applicable to other tRNAs or species may also be added.	0
5796	60755	2	Note that this function was formerly EC:4.1.3.21.	0
5797	60758	2	This term was made obsolete because it represents a combination of process and function information.	0
5798	60761	2	This term was made obsolete because it represents a gene product.	0
5799	60773	2	Also see '3-hydroxyacyl-CoA dehydrogenase activity ; GO:0003857'.	0
5800	60777	2	Note that in some species, the methyl group may be added to a lysine in a slightly different position of the histone H4 protein, but that this term still applies.	0
5801	60779	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
5802	60783	2	This term was made obsolete because it represents a gene product.	0
5803	60789	2	This term was made obsolete because it cannot be determined what its intended meaning was, because the term name is not found in the literature.	0
5804	60798	2	This term was made obsolete because it represents a gene product, and because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
5805	60800	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
5806	60805	2	This term was made obsolete because it represents a gene product.	0
5807	60809	2	This term was made obsolete because it was an unnecessary grouping term.	0
5808	60839	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5809	60850	2	This term was made obsolete because it was an unnecessary grouping term.	0
5811	60852	2	This term was made obsolete because it represents a gene product.	0
5812	60856	2	This term was made obsolete because it represents a gene product.	0
5813	60861	2	This term was made obsolete because it does not represent a function.	0
5814	60867	2	Note that enzymes with this activity also act on D-glucitol (giving D-fructose) and other closely related sugar alcohols.	0
5815	60869	2	Note that in the standard genetic code, ATC codes for isoleucine.	0
5816	60877	2	This term was made obsolete because the function it represents does not exist.	0
5817	60878	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
5818	60885	2	Note that in the standard genetic code, ACT codes for threonine.	0
5819	60890	2	This term was made obsolete because its name is ambiguous, and it was never defined.	0
5820	60895	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
5821	60903	2	Note that in the standard genetic code, AGG codes for arginine.	0
5822	60909	2	This term was made obsolete because it represents a gene product.	0
5823	60916	2	Note that the name 'para-amino benzoic acid synthase' was initially given to the 'aminodeoxychorismate synthase' activity before the additional 4-amino-4-deoxychorismate lyase activity was discovered. It is the lyase activity that actually produces para-aminobenzoic acid from 4-amino-4-deoxychorismate.	0
5824	60928	2	This function is involved in the process of methionine salvage.	0
5825	60934	2	This term was made obsolete because it represents a cellular component.	0
5826	60947	2	Note that in the standard genetic code, CTA codes for leucine.	0
5827	60957	2	This term was made obsolete because it does not describe a molecular function.	0
5828	60969	2	This term was made obsolete because it represents a multifunctional gene product.	0
5829	60972	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5830	60988	2	This term was made obsolete because it refers to a class of proteins and a biological process rather than a molecular function.	0
5831	60992	2	Note that in the standard genetic code, TTT codes for phenylalanine.	0
5832	60993	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5833	61000	2	This term was made obsolete because it represents a gene product.	0
5834	61002	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand VEGF. For receptors that bind other growth factors, consider annotating to terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
5835	61004	2	Note that this term is a direct child of 'protein binding ; GO:0005515' because it encompasses binding to either the catalytic or regulatory subunit of protein kinase A, and the latter does not have kinase activity.	0
5836	61006	2	In Field and Osbourn 2008 (PMID:18356490), thalianol is referred to as (3S,13S,3R)-malabarica-8,17,21-trien-3-ol and thalian-diol is referred to as (3S,13S,14R)-malabarica-8,17,21-trien-3,?-diol, but the error in this naming system was pointed out in Kolesnikova 2007 (PMID:17474751). The new names used in the definition have been approved by the authors (Field and Osbourn 2008).	0
5837	61024	2	This term was made obsolete because it is a redundant grouping term with only one child. It is also incorrectly defined and had an incorrect EC dbxref.	0
5838	61035	2	This term was made obsolete because it represents a gene product, was not defined, and is named based on protein features.	0
5839	61037	2	Note that this term may be useful for annotating other small nuclear RNAs (snRNAs).	0
5840	61043	2	This term was made obsolete because it represents a gene product.	0
5841	61055	2	This term was made obsolete because it represents a gene product.	0
5842	61071	2	Residue 1 of histone H2A is taken as the first residue following removal of the initiating Methionine (Met).	0
5843	61082	2	This term was made obsolete because it represents a gene product.	0
5844	61087	2	This function is the first step in the pathway of methanogenesis from trimethylamine.	0
5845	61088	2	This term was made obsolete because it represents a gene product.	0
5846	61111	2	Note that enzymes with this activity usually also hydrolyze NAD+ to NMN and AMP.	0
5847	61118	2	This term was made obsolete because it represents a class of gene products and a biological process rather than a molecular function.	0
5848	61128	2	This term was made obsolete because it represents a combination of molecular functions.	0
5849	61129	2	This term was made obsolete because the functional distinction for cap binding is the structure of the cap, not the type of RNA it is attached to.	0
5850	61151	2	This term was made obsolete because it describes a biological process.	0
5851	61163	2	This term was made obsolete because it represents a gene product.	0
5852	61168	2	Note that this function is part of the process of L-alanine fermentation to propionate.	0
5853	61169	2	This function is involved in archaeal lipid synthesis.	0
5854	61185	2	This reaction falls within the larger set of reactions associated with EC 2.6.1.57 and several other EC numbers (See BRENDA:http://www.brenda-enzymes.org/php/result_flat.php4?ecno=2.6.1.57).	0
5855	61187	2	This term was made obsolete because it represents two functions.	0
5856	61199	2	This term was made obsolete because it is not a valid molecular function.	0
5857	61201	2	This term was made obsolete because it does not represent a molecular function.	0
5858	61203	2	This term was made obsolete because it represents a gene product.	0
5859	61208	2	This term was made obsolete because it represents a biological process.	0
5860	61213	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand PDGF. For receptors that bind other growth factors, consider annotating to other terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
5861	61223	2	Note that this term is restricted to those cases where the binding is to a single-stranded DNA molecule, not to one of the stands of double-stranded DNA.	0
5862	61231	2	This term was made obsolete because it was an unnecessary grouping term.	0
5863	61237	2	See also the molecular function term 'histone deacetylase activity ; GO:0004407'.	0
5864	61242	2	This term was made obsolete because it represents a gene product.	0
5865	61243	2	This term was made obsolete because it represents a gene product.	0
5866	61246	2	This term was made obsolete because it is a grouping term based on name, rather than on function.	0
5867	61255	2	Note that this function occurs as part of nucleotide excision repair (NER).	0
5868	61259	2	This term was made obsolete because it represents a biological process.	0
5869	61261	2	Note that the polyprenyl sidechain substrate for these methyltransferases varies in length between species, for example, 6 units in S. cerevisiae, 8 units in E. coli and 10 units in G. suboxidans. Where the length of the substrate polyprenyl chain is unknown, the term '2-polyprenyl-6-methoxy-1,4-benzoquinone methyltransferase activity ; GO:0008425' should be used.	0
5870	61265	2	This term was made obsolete because it represents involvement in a biological process.	0
5871	61279	2	This term was made obsolete because it represents a gene product.	0
5872	61282	2	Note that this function was formerly EC:4.1.3.18.	0
5873	61284	2	This term was made obsolete because it wrongly combines voltage-gated anion channel activity and porin activity.	0
5874	61314	2	Note that this function was formerly EC:4.3.1.13.	0
5875	61316	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
5876	61322	2	This term was made obsolete because it includes biological process information.	0
5877	61329	2	See also the molecular function term 'DNA topoisomerase type I activity ; GO:0003917'.	0
5878	61331	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand IGF. For receptors that bind other growth factors, consider annotating to other terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
5879	61335	2	This term was made obsolete because it represents a gene product.	0
5880	61344	2	Note that this enzyme differs from EC 1.1.1.187, GDP-4-dehydro-D-rhamnose reductase, in that the only product formed is GDP-D-rhamnose (GDP-6-deoxy-D-mannose).	0
5881	61346	2	This term was made obsolete because it represents a gene product.	0
5882	61347	2	This term was made obsolete because it represents a multifunctional gene product.	0
5883	61348	2	This term was made obsolete because the meaning of the term is ambiguous and it incorporates process information.	0
5884	61371	2	This term was made obsolete because it represents a gene product.	0
5885	61373	2	Note that, in addition to forming the root of the molecular function ontology, this term is recommended for use for the annotation of gene products whose molecular function is unknown. Note that when this term is used for annotation, it indicates that no information was available about the molecular function of the gene product annotated as of the date the annotation was made; the evidence code ND, no data, is used to indicate this.	0
5886	61383	2	This term was made obsolete because it represents a bifunctional gene product (e.g. E. coli RfaE).	0
5887	61391	2	This term was made obsolete because it represents a gene product.	0
5888	61411	2	This term was made obsolete because it includes biological process information.	0
5889	61414	2	This term was made obsolete because it represents a cellular component and not a molecular function.	0
5890	61429	2	Note that this function was formerly EC:5.4.99.6.	0
5891	61433	2	The term was made obsolete because 'proteasome' is not a valid molecular function term.	0
5892	61441	2	This term was made obsolete because this solute is transported by an active transporter rather than a channel.	0
5893	61452	2	This term was made obsolete because it was an unnecessary grouping term.	0
5894	61459	2	This term was made obsolete because it represents a gene product.	0
5895	61463	2	This term was made obsolete because it represents four reactions, and should be four separate terms.	0
5896	61467	2	This term was made obsolete because it includes cellular component information.	0
5897	61468	2	Note that the polyprenyl sidechain substrate for these methyltransferases varies in length between species, for example, 6 units in S. cerevisae, 8 units in E. coli and 10 units in G. suboxidans. Where the length of the substrate polyprenyl chain is unknown, the term '2-polyprenyl-6-methoxy-1,4-benzoquinone methyltransferase activity ; GO:0008425' should be used.	0
5898	61471	2	This term was made obsolete because it contains both component and function information.	0
5899	61477	2	This term was made obsolete because it represents two molecular functions.	0
5900	61484	2	This term was made obsolete because it represents a gene product.	0
5901	61493	2	Note that this function was formerly EC:4.1.3.18.	0
5902	61495	2	This term was made obsolete because it represents component and function information.	0
5903	61496	2	This term was made obsolete because it includes cellular component information.	0
5904	61498	2	This term was made obsolete because it represents a gene product.	0
5905	61499	2	This term was made obsolete because it represents a gene product.	0
5906	61520	2	Note that enzymes of class EC:4.2.99.- should also be annotated to this term.	0
5907	61523	2	Note that in the standard genetic code, CAT codes for histidine.	0
5908	61525	2	This term was made obsolete because it represents a gene product.	0
5909	61530	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand insulin. For receptors that bind other extracellular ligands, consider annotating to other terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
5910	61535	2	This term was made obsolete because it represents a biological process and a molecular function.	0
5911	61538	2	This term is intended for annotation of signal transducers that act directly or indirectly downstream of a receptor. For receptors themselves, consider annotating to the term 'receptor activity ; GO:0004872'.	0
5912	61539	2	This term was made obsolete because it represents a gene product.	0
5913	61543	2	Note that this term is distinguished from 'ubiquitin-specific protease activity ; GO:0004843' in that it specifically refers to hydrolysis of thiolester bonds, but encompasses the removal of any substrate attached to ubiquitin via a thiolester bond.	0
5914	61553	2	The word "promoter" is used variously in the literature to describe the core promoter specifically or the entire proximal regulatory region (excluding any distal enhancers) including both the core promoter and the upstream region where activating transcription factors such as Gal4 in S. cerevisiae or catabolite activator protein (CAP) in E. coli bind. To minimize ambiguity in the use of the word "promoter" in GO, we have chosen the phrase "transcription regulatory region" in order to refer to all of the regulatory regions. Regulatory regions in the DNA which control initiation may include the "core promoter" where the basal transcription machinery binds, the "core promoter proximal region" where regulatory factors other than the basal machinery bind, and "enhancer" regions which are typically more distal from the core promoter. There are also additional regulatory regions, in both the DNA and the RNA transcript, which regulate elongation or termination of transcription. ANNOTATION NOTE: Regarding annotation to "transcription regulatory region DNA binding" (GO:0044212) and any of its is_a children, note that annotation to these terms specifies DNA binding only without any statement about transcription factor activity. To make an annotation about a function of transcription factor activity, consider "sequence-specific DNA binding transcription factor activity" (GO:0003700) or its is_a children which have has_part relationships to the appropriate kind of "transcription regulatory region DNA binding".	0
5915	61556	2	This term was made obsolete because it represents a multifunctional gene product.	0
5916	61585	2	Note that enzymes classified as EC:1.1.5.3 have several activities. They should be annotated with the terms GO:0004368, GO:0052590 and GO:0052591.	0
5917	61589	2	This term was made obsolete because it refers to a non-existent molecular function term, 'calmodulin activity'.	0
5918	61591	2	This term was made obsolete because it represents a gene product.	0
5919	61592	2	This term was made obsolete because 'signal peptide' is difficult to define unambiguously, and because the term refers to gene products.	0
5920	61595	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5921	61603	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand activin. For binding to other extracellular ligands, consider annotating to terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
5922	61611	2	This term was made obsolete because it represents a gene product.	0
5923	61630	2	This term was made obsolete because it describes a gene product.	0
5924	61631	2	This term was made obsolete because it is a redundant grouping term with only one child.	0
5925	61647	2	Note that some gene products that possess DNA translocase activity, such as members of the FtsK/SpoIIIE family, can be fixed in place by interactions with other components of the cell; the relative movement between the protein and DNA bound to it results in movement of the DNA within the cell, often across a membrane.	0
5926	61650	2	Note that this term and its child terms are intended for receptors that are directly coupled to a signal transduction pathway. This term should therefore not be used to annotate decoy receptors and other proteins that bind a signal but do not pass the signal on. For receptors that mediate transport of a substance into the cell by receptor-mediated endocytosis, consider instead the term 'cargo receptor activity ; GO:0038024' and its children.	0
5927	61653	2	This term was made obsolete because it represents a gene product and is named based on protein features.	0
5928	61655	2	Note that enzymes of class EC:1.20.99.- should also be annotated to this term.	0
5929	61656	2	This term was made obsolete because it refers to a class of gene products.	0
5930	61657	2	This term was made obsolete because it is a grouping term representing a set of gene products.	0
5931	61658	2	Note that this function was formerly EC:4.2.1.71.	0
6016	62248	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
6017	62250	2	Note that Kdo is an abbreviation for 3-deoxy-D-manno-oct-2-ulosonic acid.	0
5932	61671	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand TGFbeta. For binding to other growth factors, consider annotating to terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
5933	61676	2	Note: there is also evidence that the RNA itself may code a protein (solution structure of mouse steroid receptor RNA activator 1 (SRA1) protein submitted to PDB by Riken).	0
5934	61682	2	Note that bacterial lipopeptides are derived from bacterial lipoproteins, but the two terms are sometimes used interchangeably in the literature.	0
5935	61690	2	This term was made obsolete because it represents a gene product.	0
5936	61713	2	This term was made obsolete because it refers to a class of gene products.	0
5937	61715	2	Note that in the standard genetic code, GCT codes for alanine.	0
5938	61734	2	This term was made obsolete because it represents a gene product.	0
5939	61735	2	This term was made obsolete because it represents a classification of molecules and not a molecular function.	0
5940	61763	2	This term was made obsolete because it does not represent a function distinct from its parent term 'RNA-directed DNA polymerase'.	0
5941	61765	2	This term was obsoleted because it is defined as a Process term, i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
5942	61766	2	This term was made obsolete because it represents a multifunctional gene product.	0
5943	61776	2	This term was made obsolete because it does not represent a molecular function.	0
5944	61779	2	This term was made obsolete because it represents a gene product and contains cellular component information.	0
5945	61781	2	This term was made obsolete because it contains both component and function information.	0
5946	61783	2	This term was made obsolete because it represents a gene product, was not defined, and is named based on protein features.	0
5947	61784	2	This term was made obsolete because nucleoprotein filament formation does not require ATP hydrolysis, so the term is misleading.	0
5948	61795	2	This term was made obsolete because it represents a gene product.	0
5949	61796	2	This term was made obsolete because it represents a multifunctional gene product.	0
5950	61797	2	This term was made obsolete because it represents a gene product.	0
5951	61798	2	See also the molecular function term 'DNA topoisomerase type I activity ; GO:0003917'.	0
5952	61800	2	This term was made obsolete because it represents a gene product.	0
5953	61801	2	This term was made obsolete because it represents a gene product.	0
5954	61803	2	This term was made obsolete because it refers to a class of gene products.	0
5955	61818	2	See also 'long-chain-3-hydroxyacyl-CoA dehydrogenase activity ; GO:0016509'.	0
5956	61820	2	This term was made obsolete because it represents involvement in a process.	0
5957	61826	2	This term was made obsolete because it represents a gene product.	0
5958	61842	2	Note that this term should not be confused with 'pseudouridylate synthase activity ; GO:0004730', which refers to the formation of free pseudouridine from uracil and ribose-5-phosphate.	0
5959	61846	2	This term was made obsolete because 'heavy metal' is an ambiguous grouping term which has no set meaning (see Pure Appl. Chem. Vol. 74, No. 5, pp. 793-807, 2002, for more information).	0
5960	61858	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
5961	61865	2	This term was made obsolete because it represents a class of gene products.	0
5962	61889	2	Includes EC 1.7.99.5.	0
5963	61890	2	Note that EC:2.1.1.138 was deleted from EC as the reaction is performed by arsenite methyltransferase (EC:2.1.1.137).	0
5964	61893	2	This term was made obsolete because it represents a gene product.	0
5965	61894	2	This term was made obsolete because it represents a gene product.	0
5966	61897	2	This term was made obsolete because it was an unnecessary grouping term.	0
5967	61905	2	Note that this is a compound function and should be replaced by 'GO:0052659 : inositol 1,3,4,5-tetrakisphosphate 5-phosphatase activity' and 'GO:0052658 : inositol-1,4,5-trisphosphate 5-phosphatase activity'.	0
5968	61906	2	Note that in the standard genetic code, GTC codes for valine.	0
5969	61908	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function terms 'ionotropic glutamate receptor activity ; GO:0004970' and 'cation channel activity ; GO:0005261'.	0
5970	61923	2	Ligands do NOT have the molecular function 'signal transducer activity'.	0
5971	61932	2	This term was made obsolete because it represents a gene product, was not defined, and is named based on protein features.	0
5972	61934	2	Note that type I protein arginine N-methyltransferase enzymes possess 'protein-arginine omega-N monomethyltransferase activity ; GO:0035241' and 'protein-arginine omega-N asymmetric methyltransferase activity ; GO:0035242'.	0
6018	62256	2	This term was made obsolete because it represents a multifunctional gene product.	0
5973	61945	2	Note that this term and its child terms are intended for gene products which are directly coupled to a signal transduction pathway; gene products which recognize polymeric structures such as polysaccharides or peptidoglycans in extracellular space, but are not directly coupled to signal transduction pathway, should use the term 'pattern binding ; GO:0001871' or its child terms. Note that many gene products that are called pattern recognition receptors in the literature have a broad range of potential ligands and also can be annotated to 'scavenger receptor activity ; GO:0005044'.	0
5974	61948	2	This term was made obsolete because it refers to a class of gene products.	0
5975	61955	2	This term was made obsolete because it represents a multifunctional gene product.	0
5976	61971	2	This term was made obsolete because it represents a gene product.	0
5977	61974	2	This term was made obsolete because it represents a gene product.	0
5978	61975	2	This term was made obsolete because it represents a gene product.	0
5979	61984	2	Note that this term represents one of two reactions that are grouped together in EC 2.1.1.149.	0
5980	61999	2	This term was made obsolete because it represents the specific complex represented by the cellular component term 'DNA-directed RNA polymerase II, core complex ; GO:0005665'.	0
5981	62002	2	This term was made obsolete because it represents a gene product.	0
5982	62012	2	This term was made obsolete because it does not accurately reflect the function of the proteins involved.	0
5983	62013	2	Note that in the standard genetic code, ATT codes for isoleucine.	0
5984	62014	2	This term was made obsolete because the word "promoter" is used ambiguously in the literature. It sometimes is used to refer specifically to the "core promoter" region recognized by the basal transcription machinery, and other times is used to refer to a larger regulatory region composed of the core promoter and also the regulatory region adjacent (proximal) to the core promoter. The core promoter proximal region is typically recognized by "regulatory transcription factors", such as Gal4 in S. cerevisiae.	0
5985	62021	2	Note that this term should not be confused with 'pseudouridine synthase activity ; GO:0009982', which refers to the intramolecular isomerization of uridine to pseudouridine.	0
5986	62025	2	This term was made obsolete because it represents a multifunctional gene product.	0
5987	62029	2	This term was made obsolete because it contains both process and function information.	0
5988	62055	2	This term was made obsolete because it was an unnecessary grouping term.	0
5989	62056	2	This term was made obsolete because it was defined ambiguously, and has therefore been used incorrectly in annotations. To update annotations of gene products that act as receptors for MHC class II protein complexes, use the molecular function term 'MHC class II receptor activity ; GO:0032395'; to update annotations of gene products which are components of MHC class II protein complexes, use the cellular component term 'MHC class II protein complex ; GO:0042613'.	0
5990	62081	2	This term was made obsolete because it represents a gene product.	0
5991	62099	2	This term was made obsolete because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
5992	62103	2	This term was made obsolete because it represents a class of gene products.	0
5993	62118	2	This term was made obsolete because the dynactin complex is not a motor as such, but does regulate the dynein motor complex.	0
5994	62120	2	This term was made obsolete because it represents a gene product.	0
5995	62132	2	This term was made obsolete because it was derived from an EC entry (2.5.1.64) that has since been split into two entries.	0
5996	62151	2	This term was made obsolete because it does not represent a molecular function.	0
5997	62152	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function term 'glutamate receptor activity ; GO:0008066'.	0
5998	62161	2	This term was made obsolete because it contains both component and function information.	0
5999	62164	2	This term was made obsolete because it represents a gene product.	0
6000	62169	2	Note that this term does not include binding to the antigen peptide bound to the MHC protein, for this also annotate to 'peptide antigen binding ; GO:0042605' or one of its children.	0
6001	62180	2	This term was made obsolete because the activities used in the U2- and U12-type complexes are the same. The cellular component ontology should (and does) represent the two different complexes, but the molecular function ontology should not.	0
6002	62181	2	This term was made obsolete because its text definition and implicit ontology-structure definition disagreed, and as a result the term had been used in annotations with more than one meaning.	0
6003	62184	2	This term was made obsolete because it does not represent a molecular function.	0
6004	62187	2	This term was made obsolete because it names a family of gene products.	0
6005	62194	2	This term was made obsolete because it describes presence in body fluids rather than an activity.	0
6006	62198	2	This term was made obsolete because it represents a gene product.	0
6007	62199	2	This term was made obsolete because it represents a gene product.	0
6008	62200	2	This term was made obsolete because it represents a gene product.	0
6009	62211	2	This term was made obsolete because it represents a gene product.	0
6010	62220	2	Note that in the standard genetic code, TAG is a stop codon (amber) and is not normally read by a tRNA.	0
6011	62225	2	This term was made obsolete because its meaning was ambiguous, it was undefined and its position in the tree wrong.	0
6012	62226	2	This term was made obsolete because it describes two biological processes.	0
6013	62227	2	This term was made obsolete because it represents a gene product, was not defined, and is named based on protein features.	0
6014	62229	2	Note that zymosterol is cholesta-8,24-dien-3-ol.	0
6015	62240	2	This term was made obsolete because it represents a gene product and is named based on protein features.	0
6019	62259	2	This term was made obsolete because it represents a gene product.	0
6020	62275	2	Note that zymosterol is cholesta-8,24-dien-3-ol.	0
6021	62280	2	This term was made obsolete because it represents a class of gene products.	0
6022	62283	2	This term was made obsolete because it represents a gene product.	0
6023	62284	2	Note that in the standard genetic code, TCC codes for serine.	0
6024	62297	2	Note that in the ecdysteroidogenic pathway, this activity catalyzes the conversion of 2,22,25-trideoxyecdysone (3-beta,5-beta-ketodiol) to 2,22-dideoxyecdysone (3-beta,5-beta-ketotriol).	0
6025	62299	2	This term was made obsolete because it refers to a gene product.	0
6026	62301	2	Note that this term may be used to annotate ribosomal RNAs as well as ribosomal proteins.	0
6027	62326	2	This term was made obsolete because it is contains gene product specific characteristics.	0
6028	62333	2	Note that this function was formerly EC:1.6.4.2.	0
6029	62376	2	Note that heartless is the Drosophila gene encoding the type 2 fibroblast growth factor receptor (FGFR2).	0
6030	62377	2	Note that this activity can catalyze cleavage of DNA or RNA.	0
6031	62385	2	This term was made obsolete because it describes a biological process.	0
6032	62387	2	This term was made obsolete because it does not represent a molecular function.	0
6033	62390	2	This term was made obsolete because it represents a class of gene products.	0
6034	62420	2	Note that this function was formerly EC:4.3.1.8.	0
6035	62425	2	This term was made obsolete because it represents a gene product.	0
6036	62426	2	This term was made obsolete because it was an unnecessary grouping term.	0
6037	62429	2	This term was made obsolete because it represents a gene product.	0
6038	62450	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
6039	62455	2	This term was made obsolete because it was derived from a UM-BBD enzyme entry that has been deleted, and no other information can be found to suggest that it is a naturally occurring activity.	0
6040	62483	2	This term was made obsolete because it represents a gene product.	0
6041	62486	2	Note that this term was reinstated from obsolete.	0
6042	62491	2	This term was made obsolete because it represents a composite function.	0
6043	62499	2	This function is the first step in the pathway of methanogenesis from methanol.	0
6044	62516	2	This term was made obsolete because it represents a biological process and not a molecular function.	0
6045	62524	2	Note that in the standard genetic code, GGC codes for glycine.	0
6046	62546	2	Note that the definition of basal, or general, transcription factors has typically been done at a small number of well characterized activator-independent promoters. At an activator-dependent promoter, one or more additional factors are generally required in addition to the basal factors.	0
6047	62553	2	This term was made obsolete because it represents a gene product.	0
6048	62557	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
6049	62558	2	This term was made obsolete because it does not represent a molecular function.	0
6050	62568	2	Note that the two reactions performed by EC:2.5.1.21 are represented in GO by 'farnesyl-diphosphate farnesyltransferase activity ; GO:0004310' and 'squalene synthase activity ; GO:0051996'.	0
6051	62580	2	Note that in the standard genetic code, AAT codes for asparagine.	0
6052	62597	2	This term was made obsolete because it was an unnecessary grouping term.	0
6053	62603	2	This term was made obsolete because it represents a biological process.	0
6054	62614	2	This term was made obsolete because it refers to a class of proteins.	0
6055	62619	2	This term was made obsolete because it represents two functions.	0
6056	62621	2	This term was made obsolete because it refers to a class of gene products.	0
6057	62626	2	This term was made obsolete because it represents a gene product.	0
6058	62628	2	This term was made obsolete because the activity described by the definition does not exist.	0
6059	62636	2	This term was made obsolete because it represents three different molecular functions.	0
6060	62642	2	This term was made obsolete because it represents two activities.	0
6061	62643	2	See also the molecular function term 'pectinesterase activity ; GO:0030599'.	0
6062	62653	2	This term was made obsolete because it represents a gene product.	0
6063	62661	2	Note that 'tRNA nucleotidyltransferase activity ; GO:0009022', also known as 'ribonuclease PH', does not have parentage in the 'nuclease activity' branch of the ontology because both GO and the Enzyme Commission define nuclease activity as a type of hydrolysis.	0
6064	62669	2	This term was made obsolete because it represents a gene product.	0
6065	62674	2	Note that in the standard genetic code, CAG codes for glutamine.	0
6066	62680	2	This term was made obsolete because it contains both component and function information.	0
6067	62697	2	This term was made obsolete because it describes the receptor type, and not an activity.	0
6068	62717	2	This term was made obsolete because it represents a gene product.	0
6069	62722	2	This term was made obsolete because it represents a gene product.	0
6070	62724	2	This reaction falls within the larger set of reactions associated with EC:2.6.1.5 (See BRENDA: http://www.brenda-enzymes.org/php/result_flat.php4?ecno=2.6.1.5).	0
6071	62730	2	Note that this is the second step in the formation of farnesyl diphosphate. The first step is 'dimethylallyltransferase activity ; GO:0004161'. Consider also annotating to the biological process term 'farnesyl diphosphate biosynthetic process ; GO:0045337'.	0
6072	62772	2	This term was made obsolete because the activities used in the U2- and U12-type complexes are the same. The cellular component ontology should (and does) represent the two different complexes, but the molecular function ontology should not.	0
6073	62783	2	See also the molecular function term 'cytokine activity ; GO:0005125'.	0
6074	62795	2	Note that this term specifically refers to the reaction proceeding in the direction shown; under physiological conditions adrenodoxin reduction by adrenodoxin reductase is coupled with electron transfer from AdR to P450, which catalyzes an irreversible monooxygenation reaction. This term should therefore be used to annotate gene products that catalyze the reduction of oxidized adrenodoxin; also consider annotating to the molecular function term 'ferredoxin-NADP+ reductase activity ; GO:0004324'.	0
6075	62796	2	This term was made obsolete because it is undefined and is an unnecessary grouping term.	0
6076	62797	2	This term was made obsolete because it does not represent a function distinct from its parent term.	0
6077	62805	2	This term was made obsolete because it represents a gene product, and because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
6078	62812	2	This term was made obsolete because it represents a gene product.	0
6079	62824	2	This term was made obsolete because it refers to a non-existent molecular function term, 'Hsp70/Hsc70 protein activity'.	0
6080	62828	2	This term was made obsolete because it represents a gene product.	0
6081	62845	2	Note that this function was formerly EC:1.14.99.6.	0
6082	62857	2	Note that some basal transcription factors are themselves considered to have coactivator activity, in that they mediate interactions between an activator and either RNA polymerase II itself or another basal transcription factor.	0
6083	62880	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
6084	62885	2	This term was made obsolete because it was an unnecessary grouping term.	0
6085	62897	2	This term was made obsolete because it does not accurately reflect the function of the proteins involved.	0
6086	62906	2	Note that this term and its child terms are intended for receptors that bind to and internalize molecules by receptor-mediated endocytosis. For receptors that are coupled to a signal transduction pathway, consider instead the term 'signaling receptor activity ; GO:0038023' and its children.	0
6087	62908	2	This term was made obsolete because it contains both component and function information.	0
6088	62909	2	This term was made obsolete because it represents a gene product.	0
6089	62911	2	Note that branchless is the Drosophila gene encoding fibroblast growth factor.	0
6090	62921	2	This term was made obsolete because it represents a gene product.	0
6091	62925	2	Note that enzymes of class EC:2.6.99.- should also be annotated to this term.	0
6092	62926	2	This term was made obsolete because it incorporates process information.	0
6093	62929	2	This term was made obsolete because it represents the specific complex represented by the cellular component term 'DNA-directed RNA polymerase III complex ; GO:0005666'.	0
6094	62932	2	This term was made obsolete because it represents a multifunctional gene product.	0
6095	62946	2	This function is part of the process of degradation of L-malic acid by lactic acid bacteria.	0
6096	62967	2	This term was made obsolete because it represents involvement in a biological process.	0
6097	62971	2	This term was made obsolete because it does not accurately reflect the function of the proteins involved.	0
6098	62979	2	This term was made obsolete because it describes a gene product and not a molecular function.	0
6099	62980	2	This term was made obsolete because it represents a gene product.	0
6100	62983	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
6101	62986	2	Note that this function was formerly EC:4.1.3.9.	0
6102	63006	2	Note that the phrase "upstream activating sequence", or UAS is often used in S. cerevisiae literature to refer to regulatory sequences that occur in the region upstream and proximal to the core promoter. In contrast, in bacteria such as E. coli, the phrase "upstream activating sequence", or UAS is a synonym for "enhancer".	0
6103	63010	2	This term was made obsolete because it represents a gene product.	0
6104	63014	2	Note that this function was formerly EC:1.4.4.1.	0
6105	63020	2	This term was made obsolete because it represents a gene product.	0
6106	63021	2	This term was made obsolete because it represents a gene product.	0
6107	63024	2	This term was made obsolete because it represents a gene product.	0
6108	63035	2	This reaction falls within the larger set of reactions associated with EC:2.6.1.50 (See BRENDA: http://www.brenda-enzymes.org/php/result_flat.php4?ecno=2.6.1.50).	0
6109	63048	2	This term was made obsolete because it does not represent a function.	0
6110	63075	2	This term was made obsolete because it represents a gene product.	0
6111	63088	2	This term was made obsolete because it represents a gene product (was misspelled 'glycipan').	0
6112	63099	2	This term was made obsolete because there is no lysine at position 24 of histone H3.	0
6113	63101	2	This term was made obsolete because 'heavy metal' is an ambiguous grouping term which has no set meaning (see Pure Appl. Chem. Vol. 74, No. 5, pp. 793-807, 2002, for more information).	0
6114	63113	2	This term was made obsolete because it represents a gene product.	0
6115	63122	2	Note that in the standard genetic code, GAT codes for aspartic acid.	0
6116	63128	2	Note that the polyprenyl sidechain substrate for these methyltransferases varies in length between species, for example, 6 units in S. cerevisiae, 8 units in E. coli and 10 units in G. suboxidans. Where the length of the substrate polyprenyl chain is unknown, the term '2-polyprenyl-6-methoxy-1,4-benzoquinone methyltransferase activity ; GO:0008425' should be used.	0
6117	63137	2	This term was made obsolete because it represents a gene product.	0
6118	63141	2	This term was made obsolete because this solute is transported by an active transporter rather than a channel.	0
6119	63147	2	Note that this term has a MetaCyc pathway reference as the pathway only has a single step.	0
6120	63155	2	Note that this term refers to an activity and not a gene product. Consider also annotating to the molecular function term 'purinergic nucleotide receptor activity ; GO:0001614'.	0
6121	63164	2	Note that this term was EC:1.2.1.55.	0
6122	63168	2	Note that in the standard genetic code, GCG codes for alanine.	0
6123	63170	2	Note that in the standard genetic code, TCA codes for serine.	0
6124	63196	2	Note that this function was formerly EC:4.1.3.5.	0
6125	63200	2	This term was made obsolete because it represents a gene product.	0
6126	63204	2	This term was made obsolete because it represents a gene product.	0
6127	63218	2	This term was made obsolete because it represents a gene product.	0
6128	63222	2	Note that pentraxins include such proteins as serum amyloid P component (SAP) and C-reactive protein (CRP).	0
6129	63228	2	This term was made obsolete because it contains both component and function information.	0
6130	63235	2	This term was made obsolete because it represents a gene product.	0
6131	63237	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
6132	63238	2	This term was made obsolete because it represents a gene product.	0
6133	63260	2	This term was made obsolete because it contains both process and function information.	0
6134	63283	2	Note that bacterial lipopeptides are derived from bacterial lipoproteins, but the two terms are sometimes used interchangeably in the literature.	0
6135	63289	2	Note that zymosterol is cholesta-8,24-dien-3-ol.	0
6136	63307	2	This term was made obsolete because it represents a multifunctional gene product.	0
6137	63308	2	Note that this function was formerly EC:4.1.3.7.	0
6138	63324	2	This term was made obsolete because it represents a gene product.	0
6139	63326	2	Note that enzymes of class EC:1.21.99.- should also be annotated to this term.	0
6140	63330	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
6141	63335	2	This term was made obsolete because it represents two separate molecular functions.	0
6142	63341	2	This term was made obsolete because 'signal peptide' is difficult to define unambiguously, and because the term refers to gene products.	0
6143	63350	2	Note that this term represents an activity and not a gene product. Consider also annotating to the molecular function term 'chloride channel activity ; GO:0005254' and 'inhibitory extracellular ligand-gated ion channel activity ; GO:0005237'.	0
6144	63366	2	Note that in the standard genetic code, TAA is a stop codon (ochre) and is not normally read by a tRNA.	0
6145	63367	2	Note that EC classifies 'UDP-N-acetylmuramoyl-L-alanyl-D-glutamyl-meso-2,6-diaminopimelyl-D-alanyl-D-alanine:undecaprenyl-phosphate transferase activity ; GO:0051992' and 'phospho-N-acetylmuramoyl-pentapeptide-transferase activity ; GO:0008963' under the same EC number, EC:2.7.8.13.	0
6146	63373	2	This term was made obsolete because it describes a cellular component rather than a molecular function.	0
6147	63380	2	This term was made obsolete because it is too gene product specific.	0
6148	63389	2	This term was made obsolete because it does not represent a function distinct from its parent term 'RNA-directed DNA polymerase'.	0
6149	63415	2	This term was made obsolete because it does not represent a molecular function.	0
6150	63423	2	This term was made obsolete because it was an unnecessary grouping term.	0
6151	63427	2	This term was made obsolete because it combines two functions that are not linked.	0
6152	63428	2	Note that this term can be used in place of the obsolete molecular function term 'pathway-specific SMAD protein ; GO:0005075' and is useful for annotating proteins of the SMAD family.	0
6153	63437	2	This term was made obsolete because it represents a gene product.	0
6154	63438	2	This term was made obsolete because it represents a class of gene products.	0
6155	63445	2	This term was made obsolete because it does not represent a molecular function.	0
6156	63457	2	This term was made obsolete because it describes the composition (i.e. proteoglycan) of a gene product, not a molecular function.	0
6157	63465	2	This term was made obsolete because it represents a biological process and not a molecular function.	0
6158	63467	2	This term was made obsolete because it represents a gene product.	0
6159	63479	2	This term was made obsolete because it cannot be determined what its intended meaning was, because the term name is not found in the literature.	0
6160	63480	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
6161	63484	2	This term was made obsolete because it was an unnecessary grouping term.	0
6162	63488	2	This term was made obsolete because it represents a multifunctional gene product.	0
6163	63490	2	This term was made obsolete because it describes a biological process.	0
6164	63496	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
6165	63504	2	This term was made obsolete because this solute is transported by an active transporter rather than a channel.	0
6166	63512	2	This term was made obsolete because it describes presence in body fluids rather than an activity.	0
6167	63513	2	Note that this function is one of the activities of the trifunctional enzyme propionyl-coenzyme A synthase. See PMID:11821399.	0
6168	63514	2	This term was made obsolete because it was an unnecessary grouping term.	0
6169	63523	2	This term was made obsolete because it represents a gene product.	0
6170	63525	2	Note that this function was formerly EC:4.1.99.4.	0
6171	63527	2	This term was made obsolete because it represents a gene product.	0
6172	63540	2	Note that the enzyme performing this function has only recently been characterized, and not completely (see PMID:11818558). The common and systematic names have been suggested by TIGR, who have recently compiled an HMM model for this gene (TIGR00216). The enzyme appears to catalyze the final step in the non-mevalonate terpene biosynthesis pathway. Its two products, isopentenyl pyrophosphate and dimethylallyl pyrophosphate, are apparently generated from a common intermediate formed by the enzyme. The mechanism and identity of the reductant have not yet been determined.	0
6173	63549	2	This term was made obsolete because it represents a regulator of an obsolete molecular function term.	0
6174	63552	2	This term was made obsolete because it represents a gene product.	0
6175	63563	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
6176	63573	2	Note that this term is intended for annotation of gene products that act as receptors for MHC class I protein complexes, not for components of the MHC class I protein complexes themselves.	0
6177	63582	2	Note that in the standard genetic code, CAA codes for glutamine.	0
6178	63585	2	This term was made obsolete because it represents two molecular functions.	0
6179	63596	2	The word "promoter" is used variously in the literature to describe the core promoter specifically or the entire proximal regulatory region (excluding any distal enhancers) including both the core promoter and the upstream region where activating transcription factors such as Gal4 in S. cerevisiae or catabolite activator protein (CAP) in E. coli bind. To minimize ambiguity in the use of the word "promoter" in GO, we have chosen the phrase "transcription regulatory region" in order to refer to all of the regulatory regions. Regulatory regions in the DNA which control initiation may include the "core promoter" where the basal transcription machinery binds, the "core promoter proximal region" where regulatory factors other than the basal machinery bind, and "enhancer" regions which are typically more distal from the core promoter. There are also additional regulatory regions, in both the DNA and the RNA transcript, which regulate elongation or termination of transcription. ANNOTATION NOTE: Regarding annotation to "transcription regulatory region DNA binding" (GO:0044212) and any of its is_a children, note that annotation to these terms specifies DNA binding only without any statement about transcription factor activity. To make an annotation about a function of transcription factor activity, consider "sequence-specific DNA binding transcription factor activity" (GO:0003700) or its is_a children which have has_part relationships to the appropriate kind of "transcription regulatory region DNA binding".	0
6180	63597	2	This represents TFIIIA.	0
6181	63602	2	This function is the first step in the pathway of methanogenesis from monomethylamine.	0
6182	63607	2	Note that the bond resulting from this reaction is a carboxylic acid ester bond, linking the alpha carboxyl group of the amino acid to either the 2' or 3' hydroxyl of the 3'- terminal adenyl residue of the tRNA.	0
6183	63614	2	This term was made obsolete because it describes involvement in a process and not a function.	0
6184	63616	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
6185	63619	2	This term was made obsolete because it refers to a class of gene products.	0
6186	63620	2	Note that this function was formerly EC:5.3.1.10.	0
6187	63626	2	This represents TFIIIA.	0
6188	63629	2	This term was made obsolete because it represents a gene product.	0
6189	63633	2	This term was made obsolete because it does not represent a single molecular function.	0
6190	63665	2	Note that the complement cascade includes all of the components involved in the classical complement pathway, the alternative complement pathway, and the lectin complement pathway, as well as the common components of all three pathways.	0
6191	63673	2	This term was made obsolete because it describes a gene product.	0
6192	63674	2	This term was made obsolete because it refers to a class of proteins.	0
6193	63695	2	Note that in the standard genetic code, TTC codes for phenylalanine.	0
6194	63715	2	This term was made obsolete because it represents a gene product.	0
6195	63730	2	This term was made obsolete because it represents component and function information.	0
6196	63735	2	This represents TFIIIA.	0
6197	63752	2	Note that in the standard genetic code, CCG codes for proline.	0
6198	63767	2	This term was made obsolete because it represents a regulator of an obsolete molecular function.	0
6199	63794	2	This term was made obsolete because it represents a gene product.	0
6200	63820	2	This term was made obsolete because it represents a gene product, and because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
6201	63828	2	This term was made obsolete because it represents both process and function information.	0
6202	63839	2	This term was made obsolete because it represents a gene product.	0
6203	63844	2	This term was made obsolete because it represents a gene product.	0
6204	63852	2	This term was made obsolete because it refers to a class of gene products.	0
6205	63855	2	This term was made obsolete because it represents a gene product.	0
6206	63857	2	This term was made obsolete because it represents a gene product.	0
6207	63870	2	Note that this function was formerly EC:4.1.3.12.	0
6208	63880	2	This term was made obsolete because it refers to a class of gene products.	0
6209	63893	2	This term was made obsolete because it incorporates process information.	0
6210	63895	2	Note that bacterial lipopeptides are derived from bacterial lipoproteins, but the two terms are sometimes used interchangeably in the literature.	0
6211	63899	2	Note that in the standard genetic code, TGG codes for tryptophan.	0
6212	63915	2	This term was made obsolete because it represents a class of gene products.	0
6213	63926	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
6214	63935	2	This term was made obsolete because it represents the specific complex represented by the cellular component term 'DNA-directed RNA polymerase I complex ; GO:0005736'.	0
6215	63954	2	This term was made obsolete because it represents a gene product with two different activities.	0
6216	63964	2	This term was made obsolete because it does not represent a molecular function.	0
6217	63968	2	This term was made obsolete because it represents a gene product.	0
6218	63971	2	This term was made obsolete because it represents a gene product.	0
6219	63979	2	This term was made obsolete because ABC transporters are a protein family rather than a functional grouping.	0
6220	63991	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
6221	64002	2	Note that enzymes of class EC:1.4.99.- should also be annotated to this term.	0
6222	64007	2	Note that with respect to annotation, "base pairing" and its child terms are intended to be used to annotate the activity of gene products composed of nucleic acid, presumably RNA, to interact with DNA molecules via base pairing. Internal base pairing with itself is considered part of the secondary structure of the molecule and is not within the scope of GO function.	0
6223	64011	2	Note that the methyl donor is usually S-adenosyl-L-methionine, but there is at least one exception (see GO:0030698).	0
6224	64023	2	Note that EC:4.4.1.12 was deleted from EC as the reaction is performed by sulfoacetaldehyde acetyltransferase (EC:2.3.3.15).	0
6225	64028	2	This term was made obsolete because it represents a multifunctional gene product.	0
6226	64037	2	This term was made obsolete because it represents more than one molecular function.	0
6227	64066	2	This term was made obsolete because it refers to involvement in a biological process.	0
6228	64067	2	Note that enzymes of class EC:1.1.99.- should also be annotated to this term.	0
6229	64069	2	This term was made obsolete because it represents a regulator of an obsolete molecular function.	0
6230	64077	2	This term was made obsolete because it represents a gene product.	0
6231	64080	2	Note that this term and its child terms are intended for annotation of gene products which function to recognize (bind) the repeating structural units such as polysaccharides or peptidoglycans commonly found in microbial cell walls and virions. If such binding is coupled to signal transduction, use 'pattern recognition receptor activity ; GO:0008329' instead.	0
6232	64083	2	Note that this function was formerly EC:4.2.1.16.	0
6233	64106	2	This represents TFIIIC.	0
6234	64115	2	This term was made obsolete because sequestering is a process, not an activity.	0
6235	64121	2	This term was made obsolete because it represents a class of gene products.	0
6236	64126	2	Note that in the standard genetic code, GGA codes for glycine.	0
6237	64128	2	This term was made obsolete because it represents a gene product.	0
6238	64130	2	This term was made obsolete because it represents involvement in a biological process.	0
6239	64135	2	This term was made obsolete because it represents a gene product and not a function.	0
6240	64136	2	Note that enzymes classified as EC:1.1.5.3 have several activities. They should be annotated with the terms GO:0004368, GO:0052590 and GO:0052591.	0
6241	64147	2	Note that this was EC:2.1.1.135.	0
6242	64151	2	This term was made obsolete because it does not describe an activity.	0
6243	64152	2	This term was made obsolete because it represents a gene product.	0
6335	64885	2	This term was made obsolete because it represents a gene product.	0
6244	64154	2	Note that the enzyme UDP-N-acetylmuramoyl-tripeptide-D-alanyl-D-alanine ligase also has UDP-N-acetylmuramoylalanyl-D-glutamyl-2,6-diaminopimelate-D-alanyl-D-alanine ligase activity (GO:0008766).	0
6245	64165	2	This term was made obsolete because it represents a specific gene product rather than a molecular function.	0
6246	64171	2	This term was made obsolete because it does not represent a true function.	0
6247	64180	2	See also the molecular function term 'histone acetyltransferase activity ; GO:0004402'.	0
6248	64181	2	Note that this was EC:1.14.13.45.	0
6249	64190	2	This term was made obsolete because it does not represent a molecular function.	0
6250	64191	2	This term was made obsolete because it refers to a class of proteins.	0
6251	64195	2	This term was made obsolete because it describes a cellular component.	0
6252	64202	2	This term is intended for cell surface receptors that bind and internalize a lipoprotein particle. For members of the lipoprotein receptor family that transduce a signal rather than endocytose their ligand, consider instead the terms 'signaling receptor activity ; GO:0038023' and its children, or 'reelin receptor activity ; GO:0038025'.	0
6253	64213	2	This term was made obsolete because it does not represent a true molecular function.	0
6254	64215	2	This term was made obsolete because it was an unnecessary grouping term.	0
6255	64235	2	This function is part of the process of methionine salvage.	0
6256	64236	2	This term was made obsolete because it represents a gene product.	0
6257	64239	2	This term was made obsolete because sequestering is a process rather than a function.	0
6258	64240	2	This term was made obsolete because it represents a biological process.	0
6259	64246	2	Note that in the standard genetic code, AAG codes for lysine.	0
6260	64275	2	This term was made obsolete because it represents a gene product.	0
6261	64277	2	This term was made obsolete because it represents a gene product.	0
6262	64280	2	Note that in some species, the methyl group may be added to a lysine in a slightly different position of the histone H3 protein, but that this term still applies.	0
6263	64285	2	Note that this term is not a child of 'alpha-glucosidase activity ; GO:0004558', because in the reaction represented by GO:0004339 results in the release of beta-D-glucose, whereas in GO:0004558 alpha-D-glucose is released.	0
6264	64288	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
6265	64293	2	This term was made obsolete because it cannot be determined what its intended meaning was, because the term name is not found in the literature.	0
6266	64300	2	Note that this term describes the activity of an RNA gene product that interacts with other nucleic acid molecules via base pairing; it should not be used to annotate proteins.	0
6267	64308	2	Note that in the standard genetic code, ACC codes for threonine.	0
6268	64357	2	This term was made obsolete because it describes a class of gene products rather than a molecular function.	0
6269	64363	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
6270	64368	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
6271	64372	2	This term was made obsolete because it represents a gene product.	0
6272	64382	2	This term was made obsolete because ABC transporters are a protein family rather than a functional grouping.	0
6273	64383	2	Note that enzymes of class EC:3.5.99.- should also be annotated to this term.	0
6274	64389	2	This term was made obsolete because the gastropyloric receptor is a type of neuron.	0
6275	64391	2	This term was made obsolete because it represents a gene product.	0
6276	64395	2	This term was made obsolete because it represents a gene product.	0
6277	64396	2	This term was made obsolete because it refers to a class of gene products and a biological process rather than a molecular function.	0
6278	64400	2	This term was made obsolete because it represents two molecular functions.	0
6279	64401	2	Note that this term encompasses all activities that transfer a single phosphate group; although ATP is by far the most common phosphate donor, reactions using other phosphate donors are included in this term.	0
6280	64420	2	This term was made obsolete because it contains both component and function information.	0
6281	64423	2	Note that this term can be used in place of the obsolete terms 'storage protein ; GO:0005187' and 'storage protein of fat body (sensu Insecta) ; GO:0008041'.	0
6282	64433	2	This term was made obsolete because it represents a gene product.	0
6283	64442	2	This term was made obsolete because it represents a class of gene products.	0
6284	64447	2	Note that this term was EC:1.2.1.56.	0
6285	64452	2	This term was made obsolete because ABC transporters are a protein family rather than a functional grouping.	0
6336	64913	2	This term was made obsolete because it represents a gene product.	0
6286	64462	2	This term was made obsolete because it represents a class of gene products and a biological process rather than a molecular function.	0
6287	64473	2	Note that enzymes of class EC:1.17.99.- should also be annotated to this term.	0
6288	64481	2	Note that enzymes of class EC:1.5.99.- should also be annotated to this term.	0
6289	64483	2	Note that this term can be used to describe the binding of a peptide to an MHC molecule.	0
6290	64507	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
6291	64514	2	This term was made obsolete because it represents a gene product rather than an activity.	0
6292	64519	2	This term was made obsolete because it does not represent a molecular function and the term name appears to make no sense.	0
6293	64526	2	This term was made obsolete because it refers to a obsolete molecular function term, 'chaperone activity'.	0
6294	64529	2	This term was made obsolete because it represents a biological process.	0
6295	64538	2	This function is part of the pathway of N-acetyl-galactosamine and galactosamine utilization.	0
6296	64552	2	This term was made obsolete because we do not know what it was intended to represent when it was created.	0
6297	64556	2	This term was made obsolete because it represents a gene product.	0
6298	64565	2	Note that the enzyme ent-kaurenoate oxidase also catalyzes the reactions represented by the molecular function terms 'ent-kaurenoate oxidase activity ; GO:0051777' and 'ent-7-alpha-hydroxykaurenoate oxidase activity ; GO:0051778'.	0
6299	64567	2	Note that in the standard genetic code, CCA codes for proline.	0
6300	64575	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
6301	64576	2	This term was made obsolete because it represents a class of gene products.	0
6302	64585	2	This term was made obsolete because it represents a gene product.	0
6303	64630	2	The term was made obsolete because 'proteasome' is not a valid molecular function term.	0
6304	64632	2	This term was made obsolete because it represents a gene product.	0
6305	64648	2	This term was made obsolete because it represents a biological process.	0
6306	64649	2	This term should not be used to annotate the nitrosylating action of nitric oxide synthase (NOS) if the nitroso group is synthesized directly on the substrate.	0
6307	64650	2	Note that in the standard genetic code, TTA codes for leucine.	0
6308	64651	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins. Note that this term may be useful for annotating snoRNAs.	0
6309	64661	2	This term was made obsolete because it was replaced by more appropriate terms.	0
6310	64666	2	This term was made obsolete because it does not accurately reflect the function of the proteins involved.	0
6311	64668	2	This term was made obsolete because it represents a class of gene products rather than a molecular function.	0
6312	64680	2	This term was made obsolete because it refers to a protein sequence feature.	0
6313	64709	2	This term was made obsolete because it describes a cellular component rather than a molecular function.	0
6314	64726	2	This term was made obsolete because it represents a gene product.	0
6315	64730	2	This term was made obsolete because, as defined, it represents a class of gene products rather than a molecular function. The term string is also ambiguous, having connotations of involvement in transport processes.	0
6316	64738	2	This term was made obsolete because it was an unnecessary grouping term.	0
6317	64741	2	This term was made obsolete because it represents a gene product.	0
6318	64760	2	This term was made obsolete because it represents gene products.	0
6319	64761	2	Note that this term and its children are useful for annotating proteins of the SMAD family.	0
6320	64790	2	This term was made obsolete because it represents a gene product.	0
6321	64797	2	Note that this was EC:1.2.3.12.	0
6322	64810	2	Note that this term does not include binding to the antigen peptide bound to the MHC protein. Consider also annotating to the molecular function term 'peptide antigen binding ; GO:0042605' or one of its children.	0
6323	64811	2	This term was made obsolete because it contains both process and function information.	0
6324	64813	2	Note that enzymes of class EC:1.6.99.- should also be annotated to this term.	0
6325	64816	2	Note that this term specifically refers to the reaction proceeding in the direction shown; it should therefore be used to annotate gene products that catalyze the oxidation of reduced ferredoxin or adrenodoxin; also consider annotating to the molecular function term 'NADPH-adrenodoxin reductase activity ; GO:0015039'.	0
6326	64818	2	Note that this term describes the activity of a nucleic acid, usually RNA, gene product that interacts with other RNA molecules via base pairing; it should not be used to annotate proteins.	0
6327	64819	2	See also the molecular function term 'ribulose-bisphosphate carboxylase activity ; GO:0016984'.	0
6328	64822	2	Note that in the standard genetic code, AAC codes for asparagine.	0
6329	64835	2	Note that this function was formerly EC:1.6.6.4.	0
6330	64851	2	Note that EC:1.7.99.3 was merged into this term.	0
6331	64853	2	This term was made obsolete because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
6332	64864	2	The term was made obsolete because 'proteasome' is not a valid molecular function term.	0
6333	64878	2	This term was made obsolete because it describes presence in body fluids rather than an activity.	0
6334	64882	2	Consider also annotating to the molecular function term 'microtubule binding ; GO:0008017'.	0
6337	64935	2	This term was made obsolete because it mentions a component term in the text string.	0
6338	64941	2	This term was made obsolete because there are no known gene products that would be described as 'SAP kinase 5', and the term name implies that it refers to a gene product.	0
6339	64949	2	This term was made obsolete because it describes a gene product.	0
6340	64952	2	This is a process composed of two reactions represented by the terms 'GO:0052632 : citrate hydro-lyase (cis-aconitate-forming) activity' and 'GO:0052633 : isocitrate hydro-lyase (cis-aconitate-forming) activity'.	0
6341	64953	2	This term was made obsolete because it represents a gene product.	0
6342	64971	2	This term was made obsolete because it represents a gene product.	0
6343	64975	2	This term was made obsolete because it represents a biological process.	0
6344	64977	2	This term was made obsolete because it represents a class of gene products.	0
6345	64978	2	This term was made obsolete because it refers to a non-existent molecular function term, 'Hsp27 protein activity'.	0
6346	64989	2	This term was made obsolete because it does not represent a true molecular function.	0
6347	64991	2	See also 'regulation of nitric-oxide synthase activity ; GO:0050999'.	0
6348	65002	2	This term was made obsolete because it represents a gene product.	0
6349	65032	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
6350	65034	2	This term was made obsolete because it refers to a biological process.	0
6351	65053	2	This term was obsoleted because it is essentially identical to a Process term (specifically the Biological Process term which has been selected as a term to consider for reannotation), i.e. it is defined only in terms of the process it acts in and it does NOT convey any information about the molecular nature of the function or whether the function is based on binding DNA, on interacting with other proteins, or some other mechanism. To transfer all annotations without review, the BP term indicated is considered to be equivalent and thus the only appropriate destination for all annotations. To reannotate to a MF term, you will probably need to revisit the original literature or other primary data because this "MF" term was not defined in terms of mechanism of action and there are multiple possibilities in the revised MF structure. In reannotation, please also consider descendent terms of the suggested MF terms as a more specific term may be more appropriate than the MF terms indicated. Please be aware that you may wish to request a new term if the mechanism of action of this gene product is not yet represented or if you are annotating for an RNAP different than one for which there is a specific suggested term. Also note that if there is no information about how the gene product acts, it may be appropriate to annotate to the root term for molecular_function.	0
6352	65055	2	This term was made obsolete because it represents a gene product and not a molecular function.	0
6353	65064	2	This term was made obsolete because it represents a gene product.	0
6354	65065	2	This term was made obsolete because it represents a gene product.	0
6355	65077	2	This term was made obsolete because it refers to component information.	0
6356	65099	2	This term was made obsolete because it represents a gene product, and because describing something as an 'antigen' means that an organism can produce antibodies to it, which says nothing about the gene product activity.	0
6357	65124	2	See also the cellular component term 'microfibril ; GO:0001527'.	0
6358	65144	2	This term was made obsolete because it was an unnecessary grouping term.	0
6359	65148	2	This term was made obsolete because it refers to a obsolete molecular function term, 'chaperone activity'.	0
6360	65153	2	This term was made obsolete because it was an unnecessary grouping term.	0
6361	65154	2	This term was made obsolete because it describes the receptor type, and not an activity.	0
6362	65156	2	This term was made obsolete because it was not defined, is ambiguous, and has been used to annotate gene products with very different activities.	0
6363	65168	2	This term was made obsolete because it represents a combination of process and function information.	0
6364	65170	2	This term was made obsolete because it represents a biological process.	0
6365	65200	2	For ligands that bind to signal transducing receptors, consider the molecular function term 'receptor binding ; GO:0005102' and its children.	0
6366	65201	2	This term was made obsolete because it represents a gene product.	0
6367	65220	2	This term was made obsolete because 'large uncharged polar molecule' is not a useful chemical grouping term.	0
6368	65254	2	This term was made obsolete because it refers to a class of gene products.	0
6369	65269	2	This term was made obsolete because it represents a class of gene products.	0
6370	65270	2	This term was made obsolete because it describes a cellular component.	0
6371	65295	2	Note that in the standard genetic code, TGT codes for cysteine.	0
6372	65296	2	This term was made obsolete because it represents a gene product.	0
6373	65310	2	This term was made obsolete because it represents a gene product rather than a single discrete molecular function.	0
6374	65327	2	This term was made obsolete because it describes presence in body fluids rather than an activity.	0
6375	65333	2	Note that in the standard genetic code, GTT codes for valine.	0
6376	65344	2	Note that the definition of basal, or general, transcription factors has typically been done at a small number of well characterized activator-independent promoters. At an activator-dependent promoter, one or more additional factors are generally required in addition to the basal factors.	0
6377	65350	2	For binding to the death domain, consider instead the term 'death domain binding ; GO:0070513'.	0
6378	65358	2	Note that triphosphate is used as a phosphate donor by at least one kinase.	0
6379	65360	2	This term was made obsolete because 'signal peptide' is difficult to define unambiguously, and because the term refers to gene products.	0
6380	65380	2	This term was made obsolete because it represents a biological process and not a molecular function.	0
6381	65382	2	Note that this term represents a function and not a gene product. Consider also annotating to the molecular function term 'transcription regulator activity ; GO:0030528'.	0
6382	65384	2	This term was made obsolete because it represents a gene product.	0
6383	65387	2	This term was made obsolete because the term belongs in the process ontology.	0
6384	65393	2	Note that the polyprenyl sidechain substrate for these methyltransferases varies in length between species, for example, 6 units in S. cerevisiae, 8 units in E. coli and 10 units in G. suboxidans. Where the length of the substrate polyprenyl chain is unknown, the term '2-polyprenyl-6-methoxy-1,4-benzoquinone methyltransferase activity ; GO:0008425' should be used.	0
6385	65417	2	This term was made obsolete because it describes a type of hormone rather than a molecular function.	0
6386	65424	2	Note that this term represents an activity and not a gene product, and should only be used when the receptor binds the ligand EGF. For receptors that bind other growth factors, consider annotating to other terms under 'transmembrane signaling receptor activity ; GO:0004888.	0
6387	65425	2	This term was made obsolete because it represents a gene product.	0
6388	65426	2	This term was made obsolete because it describes a receptor type, and not an activity.	0
6389	65428	2	This term was made obsolete because it represent a gene product.	0
6390	65436	2	This term was made obsolete because the meaning of the term is ambiguous and it incorporates process information.	0
6391	65439	2	This term was made obsolete because it represents a gene product.	0
6392	65456	2	Note that this was EC:4.99.1.1.	0
6393	65464	2	Note that this term has a MetaCyc pathway reference as the pathway only has a single step.	0
6394	65468	2	This term was made obsolete because it represents a class of gene products, and its definition incorporates process information.	0
6395	65494	2	Note that only peptidoglycan recognition proteins with receptor activity should be annotated to this term; otherwise use 'peptidoglycan binding ; GO:0042834' instead.	0
6396	65503	2	This term was made obsolete because it represents a gene product.	0
6397	65504	2	This term was made obsolete because it represents a biological process.	0
6398	65509	2	This term was made obsolete because it represents a gene product.	0
6399	65511	2	This term was made obsolete because it represents a gene product.	0
6400	65522	2	This term was made obsolete because it represents a gene product.	0
6401	65535	2	Note that as agreed during the transcription overhaul, terms specifying binding to specific transcription regulatory motifs are no longer being created. The level of specificity GO has decided to go to is the "core promoter", "core promoter proximal region" and "enhancer". To capture more detail, please consider using column 16.	0
6402	65536	2	This term was made obsolete because it is an unnecessary grouping term.	0
6403	65538	2	This reaction falls within the larger set of reactions associated with EC 2.6.1.28 (See BRENDA: http://www.brenda-enzymes.org/php/result_flat.php4?ecno=2.6.1.28; note: 3-indole-2-oxopropanoate = indolepyruvate = 3-(indol-3-yl)pyruvate).	0
6404	65561	2	This term was made obsolete because it describes a gene product rather than a function.	0
6405	65580	2	This term was made obsolete because this solute is transported by an active transporter rather than a channel.	0
6406	65588	2	This term was made obsolete because it represents a gene product.	0
6407	65589	2	This term was made obsolete because it represents a gene product.	0
6408	65621	2	This term was made obsolete because it represents a gene product.	0
6409	65643	2	This term was made obsolete because it represents a class of gene products.	0
6410	65644	2	Note that this term can be used in place of the obsolete cellular component term 'centromere ; GO:0005698'. Use with caution because this term refers to a specific region of the chromosome and not a protein complex.	0
6411	65645	2	Note that this term can be used in place of the obsolete cellular component term 'centromere ; GO:0005698'. Use with caution because this term refers to a specific region of the chromosome and not a protein complex.	0
6412	65660	2	Note that process and function information are included in the term and definition for the purpose of describing and distinguishing the complex.	0
6413	65663	2	This term was made obsolete because it is unnecessary in the OBO flat file format.	0
6414	65677	2	This term was made obsolete because it is not a unique subcellular component, i.e. the difference between this term and 'chromosome' is based on temporal and process distinctions.	0
6415	65680	2	This term was made obsolete because the 'complex' it refers to contains only one gene product.	0
6416	65688	2	Note that an immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6417	65689	2	Note that the term 'secretory vesicle' is sometimes used in this sense, but can also mean 'transport vesicle ; GO:0030133'.	0
6418	65693	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6419	65698	2	This term was made obsolete because it is based on a temporal division of the cell cycle.	0
6420	65709	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6421	65711	2	Note that an IgM immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6422	65718	2	Note that this term is not a descendant of 'organelle inner membrane ; GO:0019866' because the outer acrosomal membrane is a portion of the acrosomal membrane; the latter is a single lipid bilayer.	0
6423	65755	2	This term was made obsolete because it represents a gene product.	0
6424	65761	2	Note that this peroxisome assembly pathway is described in the yeast Yarrowia lipolytica. See also the cellular component terms 'P1 peroxisome ; GO:0019819', 'P3 peroxisome ; GO:0019821', 'P4 peroxisome ; GO:0019822', 'P5 peroxisome ; GO:0019823', and 'P6 peroxisome ; GO:0019824'.	0
6425	65765	2	Note that an IgG immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Also, IgG isotypes vary by species.	0
6426	65801	2	Note that this peroxisome assembly pathway is described in the yeast Yarrowia lipolytica. See also the cellular component terms 'P1 peroxisome ; GO:0019819', 'P2 peroxisome ; GO:0019820', 'P3 peroxisome ; GO:0019821', 'P4 peroxisome ; GO:0019822', and 'P5 peroxisome ; GO:0019823'.	0
6427	65864	2	Note that the sexine sometimes consists of 5 layers, but of those, 3 layers are the most common (sexine 1 = columellae; sexine 2 = tectum; sexine 3 = sculpture elements). Sexine is distinguished on purely morphological criteria; compare with 'ectexine ; GO:0043669'. See also 'nexine ; GO:0043672'.	0
6428	65869	2	Note that an IgD immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6429	65875	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6430	65878	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The function of this complex is represented by the molecular function term 'isocitrate dehydrogenase (NAD+) activity ; GO:0004449'.	0
6431	65886	2	Note that an IgA immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Dimeric IgA is by far the most common form of polymeric IgA. In human only the IgA1 isotype is capable of a polymeric forms.	0
6432	65888	2	See also the cellular component terms 'vacuolar proton-transporting V-type ATPase, V1 domain ; GO:0000221' and 'vacuolar proton-transporting V-type ATPase, V0 domain ; GO:0000220' and the molecular function term 'hydrogen ion transporting ATPase activity, rotational mechanism ; GO:0046961'.	0
6433	65889	2	This term was made obsolete because it represents a type of gene product and not a location or complex.	0
6434	65898	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6435	65903	2	This term was made obsolete because more specific children exist.	0
6436	65908	2	Note that the actions of the activin complex are the opposite of those of the inhibin complex, which is a dimer of an inhibin beta-A or inhibin beta-B subunit and a inhibin alpha subunit. See 'inhibin complex ; GO:0043511'.	0
6437	65911	2	Note that this term is a child of 'extracellular matrix part ; GO:0044420' rather than the more specific middle lamella-containing extracellular matrix ; GO:0048196', because unlike the usual plant cell wall, the pollen wall does not contain a middle lamella, as specified in the definition of 'middle lamella-containing extracellular matrix ; GO:0048196'.	0
6438	65915	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6439	65924	2	This term was made obsolete because it was positioned incorrectly, so the replacement term has a definition different from what this term appeared to mean.	0
6440	65925	2	In mammals, the complex consists of two non-identical catalytic subunits and two non-identical regulatory subunits.	0
6441	65927	2	See also the molecular function term '3-isopropylmalate dehydratase activity ; GO:0003861'.	0
6442	65940	2	Note that process and function information are included in the term and definition for the purpose of describing and distinguishing the complex.	0
6443	65956	2	This term was made obsolete because it is out of date. It seems to be referring to the non-integrin 34/67kDa laminin receptor, which new research has shown to actually be a ribosomal protein of the SP2 family.	0
6444	65961	2	Note that this heterodimeric cytokine utilizes the same IL-12p35 subunit as its alpha chain as IL-12 uses and the same EBI3 subunit (product of EBI3, Epstein-Barr virus induced gene 3) as its beta chain as IL-27 uses. IL-35 requires both subunits -- there is no separate IL35 gene.	0
6445	65962	2	This term was made obsolete because more specific terms were created.	0
6446	65966	2	This term was made obsolete because the definition was too sequence oriented and too restrictive.	0
6447	65968	2	Note that this term should not be confused with 'GPI-anchor transamidase complex ; GO:0042765', which represents a distinct complex with a different catalytic activity.	0
6448	65972	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6449	65981	2	Note that this term was deleted from GO rather than being made obsolete and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6450	65984	2	Part of papilla cell (PO:0025166), which is a shoot epidermal cell (PO:0025165) in plants. Replaces the obsolete term papillae (PO:0002001).	0
6451	66009	2	Note that this term differs from 'cell tip ; GO:0051286' in that it is applicable to a broader range of cell shapes.	0
6452	66013	2	This term was made obsolete because there is no evidence that a physical complex forms; although the phrase "quinolinate synthetase complex" is occasionally used in the literature, it refers to two enzymes that act as monomers.	0
6453	66023	2	Note that an IgX immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Note that IgX is found in amphibians.	0
6454	66026	2	Note that an IgM immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6455	66028	2	Obsoleted because type II fatty acid synthases are not complexes	0
6456	66029	2	See also the Fungal Anatomy Ontology term 'hypha ; FAO:0001001'.	0
6457	66032	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6458	66033	2	Consider also annotating to the molecular function term 'microtubule-severing ATPase activity ; GO:0008568'.	0
6459	66041	2	This term was made obsolete because it describes the composition (i.e. proteoglycan) and not the location of a gene product.	0
6460	66053	2	Note that this term does not have 'extracellular region ; GO:0005576' as a parent because in plants the extracellular matrix is considered part of the cell.	0
6461	66064	2	Note that this term can be used in place of the obsolete cellular component term 'centromere ; GO:0005698'. Use with caution because this term refers to a specific region of the chromosome and not a protein complex.	0
6506	66408	2	This term was made obsolete because it represents a gene product.	0
6664	67670	2	See also the molecular function term 'nitrite reductase [NAD(P)H] activity ; GO:0008942'.	0
6462	66066	2	Note that this term and its children can be used to annotate gene products that localize to a mitotic chromosome in an organism that undergoes a 'closed mitosis' in which the nuclear envelope does not break down during mitosis and for gene products that localize to a meiotic chromosome.	0
6463	66070	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6464	66074	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6465	66093	2	Note that this term should be used for annotating gene products with caution: it should be used only to annotate gene products demonstrated to reside and function normally in the autophagic vacuole lumen, not for molecules that are temporarily found in the lumen prior to degradation.	0
6466	66096	2	See also the molecular function term 'alkyl hydroperoxide reductase activity ; GO:0008785'.	0
6467	66102	2	This term is a child of 'cell projection' and not 'cell hair' to distinguish it from animal cell hairs, which are morphologically distinct.	0
6468	66117	2	See also: extrahaustorial matrix ; GO:0085036 and extrahaustorial membrane ; GO:0085037.	0
6469	66122	2	Note that 'cell body' and 'cell soma' are not used in the literature for cells that lack projections, nor for some cells (e.g. yeast with mating projections) that do have projections.	0
6470	66129	2	Note that this term can be used in place of the obsolete cellular component term 'telomere ; GO:0005696'. Use with caution because this term refers to a specific protein complex and not a region of the chromosome.	0
6471	66143	2	Note that this domain generally consists of eight subunits.	0
6472	66148	2	This term was made obsolete because it represents a gene product.	0
6473	66149	2	See also: haustorium ; GO:0085035 and extrahaustorial matrix ; GO:0085036.	0
6474	66163	2	See also the molecular function term 'D-amino-acid oxidase activity ; GO:0003884'.	0
6475	66174	2	See also the molecular function term 'G-protein coupled receptor activity ; GO:0004930'.	0
6476	66179	2	Note that this structure is distinct from the chromoplast of plants, which is also sometimes called a chromatophore; it also should not be confused with the specialized pigment-producing cells known as chromatophores, found in fish and amphibian skin.	0
6477	66184	2	Note that this term has no relationship to 'membrane ; GO:0016020' because the basement membrane is not a lipid bilayer.	0
6478	66193	2	This term was made obsolete because the definition was incorrect.	0
6479	66200	2	This term was made obsolete because more specific terms were created.	0
6480	66215	2	This term was made obsolete because it represents a gene product.	0
6481	66220	2	Note that 'cell body' and 'cell soma' are not used in the literature for cells that lack projections, nor for some cells (e.g. yeast with mating projections) that do have projections.	0
6482	66223	2	Note that this term was deleted from GO and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6483	66224	2	See also the molecular function term 'phosphoribosylaminoimidazole carboxylase activity ; GO:0004638'.	0
6484	66225	2	A thylakoid is not considered an organelle, but some thylakoids are part of organelles.	0
6485	66235	2	Note that an IgE immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6486	66238	2	Note that process and function information are included in the term and definition for the purpose of describing and distinguishing the complex.	0
6487	66244	2	Note that an IgY immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Note that IgY is found in amphibians, reptiles, and birds.	0
6488	66254	2	This term was made obsolete because its definition was inaccurate.	0
6489	66260	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6490	66265	2	See also the cellular component term 'heterotrimeric G-protein complex ; GO:0005834'.	0
6491	66269	2	This term was made obsolete because more specific terms were created.	0
6492	66278	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6493	66313	2	Note that this term was deleted from GO and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6494	66325	2	See also the cellular component terms 'sarcoplasm ; GO:0016528', 'nuclear envelope ; GO:0005635' and 'endoplasmic reticulum ; GO:0005783'.	0
6495	66335	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6496	66343	2	This term was made obsolete because it was defined inaccurately.	0
6497	66346	2	Note that nexine is distinguished on purely morphological criteria; compare with 'endexine ; GO:0043671'. See also 'sexine ; GO:0043673'.	0
6498	66351	2	See also the molecular function term 'cytochrome o ubiquinol oxidase activity ; GO:0008827'.	0
6499	66355	2	See also the molecular functions term 'oxoglutarate dehydrogenase (succinyl-transferring) activity ; GO:0004591', 'dihydrolipoyllysine-residue succinyltransferase activity ; GO:0004149' and 'dihydrolipoyl dehydrogenase activity ; GO:0004148'.	0
6500	66364	2	Note that the definition uses Saccharomyces gene product names because this complex has only been described in Saccharomyces cerevisiae and no other names have yet arisen; the term nevertheless can be used for analogous complexes in other eukaryotes, and the definition can be changed if better wording is found.	0
6501	66380	2	Part of leaf papilla cell (PO:0025167).	0
6502	66382	2	This term was made obsolete because it is a type of cell rather than a cellular component. To update annotations, consider the external ontology term 'ascus ; FAO:0000014'.	0
6503	66386	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6504	66399	2	Note that this term refers to a subcellular structure characteristic of ciliate protozoans, and should not be confused with oral anatomical structures of multicellular animals.	0
6505	66406	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6507	66415	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6508	66424	2	Note that 'nucleolar' in the term name is part of the RNA family designation 'small nucleolar', and does not necessarily reflect the location of the complex.	0
6509	66443	2	Note that the subunits of TFIIIB-beta are conserved between human and yeast; however, in yeast a single TFIIIB complex regulates transcription of tRNA, 5S rRNA and U6 snRNA genes, whereas two different TBP-dependent TFIIIB activities exist in humans.	0
6510	66450	2	Note that monomeric mitochondrial processing peptidases have been observed.	0
6511	66508	2	Note that this definition includes vesicles that are transiently associated with the Golgi.	0
6512	66519	2	Note that an IgM immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6513	66543	2	This complex occurs primarily in bacteria.	0
6514	66562	2	This term was made obsolete because more specific children exist.	0
6515	66565	2	Note that the chlorosome envelope is not a single or double lipid bilayer, so this term is not a child of 'organelle membrane ; GO:0031090' or 'organelle envelope ; GO:0031967'.	0
6516	66580	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6517	66583	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The function possessed by this complex is represented by the molecular function term 'glutaminyl-tRNA synthase (glutamine-hydrolyzing) activity ; GO:0050567'.	0
6518	66589	2	Note that this term refers to Schizosaccharomyces pombe Swi5, which should not be confused with the unrelated Saccharomyces Swi5p.	0
6519	66607	2	See also the molecular function term 'acetolactate synthase activity ; GO:0003984'.	0
6520	66611	2	Different forms of the complex differing in type of N-glycosylation of polycystin-1 can exist (endoglycosidase sensitive and endoglycosidase resistant).	0
6521	66632	2	Note that this peroxisome assembly pathway is described in the yeast Yarrowia lipolytica. See also the cellular component terms 'P1 peroxisome ; GO:0019819', 'P2 peroxisome ; GO:0019820', 'P3 peroxisome ; GO:0019821', 'P4 peroxisome ; GO:0019822', and 'P6 peroxisome ; GO:0019824'.	0
6522	66637	2	See also the molecular function term 'succinate dehydrogenase (ubiquinone) activity ; GO:0008177'.	0
6523	66658	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6524	66663	2	See also the molecular function term 'alpha,alpha-trehalose-phosphate synthase (UDP-forming) activity ; GO:0003825'.	0
6525	66674	2	This term was made obsolete because it was not defined.	0
6526	66685	2	Unicellular trichome branch is part of unicellular trichome, which is a narrow synonym of trichome cell (PO:0008030). For a cell that forms a branch of a multicellular trichome, see multicellular trichome branch cell (PO:0025163).	0
6527	66695	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6528	66708	2	Note that this term should be used to annotate gene products found in cohesin complexes in organisms that undergo closed mitosis (i. e. where the nuclear envelope does not break down, as in fungi). For organisms in which the nuclear envelope breaks down during mitosis, the parent should be used.	0
6529	66715	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6530	66720	2	Note that an IgA immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6531	66728	2	Note that this term is intended to annotate gene products that are not attached to the cell surface. For gene products from multicellular organisms which are secreted from a cell but retained within the organism (i.e. released into the interstitial fluid or blood), consider the cellular component term 'extracellular space ; GO:0005615'.	0
6532	66738	2	Note that this heterodimeric cytokine utilizes the IL-12p35 subunit as its alpha chain, which is also used by IL-35 as its alpha chain, and utilizes the IL-12p40 subunit as its beta chain, which is also used by IL-23 as its beta chain.	0
6533	66747	2	This term was made obsolete because it was defined inaccurately.	0
6534	66755	2	Note that in eukaryotes, aspartate carbamoyltransferase is usually a single polypeptide, not a complex, and should therefore not be annotated to this component term.	0
6535	66756	2	Note that in higher eukaryotes, carbamoyl-phosphate synthase is usually a single polypeptide, not a complex, and should therefore not be annotated to this component term.	0
6536	66757	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6537	66760	2	This term was made obsolete because dihydrolipoamide S-acyltransferase activity resides in a single polypeptide.	0
6538	66765	2	Note that this term does not refer to the extraembryonic membrane surrounding the embryo of amniote vertebrates as this is an anatomical structure and is therefore not covered by GO.	0
6539	66771	2	This term was made obsolete because it represents a gene product.	0
6540	66775	2	This term was made obsolete because it is based on a temporal division of the cell cycle.	0
6541	66782	2	Note that this term can be used in place of the obsolete cellular component term 'telomere ; GO:0005696'. Use with caution because this term refers to a specific region of the chromosome and not a protein complex.	0
6542	66785	2	This term was made obsolete because it represents a gene product.	0
6543	66795	2	Note that proteins extrinsic to membranes can be removed by treatments that do not disrupt the membrane, such as salt solutions.	0
6544	66799	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6545	66803	2	Note that an IgG immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Also, IgG isotypes vary by species.	0
6546	66806	2	See also the molecular function term 'acetolactate synthase activity ; GO:0003984'.	0
6777	68473	2	Note that this term is retained because it is widely used by biologists.	0
6547	66811	2	Note that process and function information are included in the term and definition for the purpose of describing and distinguishing the complex.	0
6548	66817	2	Note that the type II protein secretion system complex does not include components of the Sec or Tat pathways. For components of these pathways, consider annotating to 'cell envelope Sec complex ; GO:0031522' or 'TAT protein translocation system complex ; GO:0033281'.	0
6549	66836	2	Note that an IgA immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Dimeric IgA is by far the most common form of polymeric IgA. In human only the IgA1 isotype is capable of a dimeric form.	0
6550	66841	2	See also the cellular component terms 'cyclin-dependent protein kinase activating kinase holoenzyme complex ; GO:0019907' and 'DNA-directed RNA polymerase II, holoenzyme ; GO:0016591'.	0
6551	66849	2	Type II refers to the type of fatty acid synthase. Type I is in a complex, type II is not.	0
6552	66856	2	This term was made obsolete because it represents a gene product.	0
6553	66858	2	Note that this domain often consists of five subunits, although in some mammalian tissues it may have an additional subunit.	0
6554	66859	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6555	66866	2	Note that this term should not be confused with 'motile cilium ; GO:0031514': Motile primary cilia are distinct from motile cilia (GO:0031514) that are typically present on epithelial cells in multiple copies and move in a whip-like, as opposed to rotational, manner.	0
6556	66869	2	Note that an IgW immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Note that IgW is found in fish.	0
6557	66876	2	Note that alpha-glucosidase I functions as a monomer, and therefore does not have a corresponding cellular component term.	0
6558	66877	2	See also the Fungal Anatomy Ontology term 'vegetative cell ; FAO:0000032'.	0
6559	66894	2	See also the cellular component term 'caveola ; GO:0005901'.	0
6560	66907	2	See also the cellular component term 'plasma membrane ; GO:0005886'.	0
6561	66936	2	Note that the actions of the inhibin complex are the opposite of those of the activin complex, which is a dimer of an inhibin beta-A and/or inhibin beta-B subunit. See also the cellular component term 'activin complex ; GO:0048180'.	0
6562	66947	2	Note that the actions of the inhibin complex are the opposite of those of the activin complex, which is a dimer of an inhibin beta-A and/or inhibin beta-B subunit. See also the cellular component term 'activin complex ; GO:0048180'.	0
6563	66950	2	This term was made obsolete because a muscle fiber is a cell type rather than a cell component. To update annotations, consider the external ontology term 'muscle cell ; CL:0000187'.	0
6564	66957	2	Note that this term refers to a projection from a single cell, and should not be confused with 'microvillus' as used to refer to a multicellular structure such as that found in the placenta.	0
6565	66960	2	Note that this term should not be used to refer to CD14 alone, but the multiprotein receptor complex that it is part of.	0
6566	66964	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6567	66979	2	See also the fly_anatomy.ontology term 'inner nurse cell ring canal rim ; FBbt:00004881'.	0
6568	66983	2	Note that this term was deleted from GO and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6569	67003	2	Note that ectexine is distinguished on staining properties; compare with 'sexine ; GO:0043673'. See also 'endexine ; GO:0043671'.	0
6570	67025	2	This term was made obsolete as part of a general reorganization of vesicle and vesicle coat terms; its position in the ontology suggested that a new term was required.	0
6571	67030	2	Note that this complex is 43S in Saccharomyces.	0
6572	67047	2	Note that the term name uses Saccharomyces gene product names because no other names have yet arisen for this complex; the term nevertheless can be used for analogous complexes in other eukaryotes, and the name can be changed if better wording is found.	0
6573	67055	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6574	67057	2	See also the cellular component term 'cilium ; GO:0005929'.	0
6575	67058	2	See also: 'extra-invasive hyphal membrane ; GO:0085039'.	0
6576	67064	2	Note that this term was deleted from GO and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6577	67079	2	See also the molecular functions term 'oxoglutarate dehydrogenase (succinyl-transferring) activity ; GO:0004591', 'dihydrolipoyllysine-residue succinyltransferase activity ; GO:0004149' and 'dihydrolipoyl dehydrogenase activity ; GO:0004148'.	0
6578	67083	2	Note that this term can be used to annotate gene products that localize to a mitotic chromosome in an organism that undergoes an 'open mitosis' in which the nuclear envelope breaks down during mitosis.	0
6579	67085	2	Note that fatty acid synthetases of vertebrates and yeast are stable enzyme complexes of multifunctional polypeptide chains, whereas the fatty acid synthetases of plants and E. coli consist of non-associated individual enzymes.	0
6580	67088	2	Note that the actions of the activin complex are the opposite of those of the inhibin complex, which is a dimer of an inhibin beta-A or inhibin beta-B subunit and a inhibin alpha subunit. See 'inhibin complex ; GO:0043511'.	0
6581	67093	2	Note that process and function information are included in the term and definition for the purpose of describing and distinguishing the complex.	0
6582	67097	2	This term was made obsolete as part of a general reorganization of vesicle and vesicle coat terms; its position in the ontology suggested that a new term was required.	0
6583	67101	2	Note that an IgA immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6584	67124	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6585	67133	2	See also the molecular function term '3-phenylpropionate dioxygenase activity ; GO:0008695'.	0
6586	67152	2	This term was made obsolete as part of a general reorganization of vesicle and vesicle coat terms; its position in the ontology suggested that a new term was required.	0
6587	67172	2	Note that the term 'secretory vesicle' is sometimes used in this sense, but can also mean 'secretory granule ; GO:0030141'.	0
6588	67179	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6589	67181	2	Note that this term should not be confused with any of the molecular function and biological process terms that refer to the small GTPase ARF (ADP-ribosylation factor).	0
6590	67187	2	Note that this term was deleted from GO and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6591	67193	2	Note that process information is included in the term and definition for the purpose of describing and distinguishing the complex.	0
6592	67202	2	Note that, in addition to forming the root of the cellular component ontology, this term is recommended for use for the annotation of gene products whose cellular component is unknown. Note that when this term is used for annotation, it indicates that no information was available about the cellular component of the gene product annotated as of the date the annotation was made; the evidence code ND, no data, is used to indicate this.	0
6593	67204	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6594	67206	2	Note that this term refers only to the actin portion of a microfilament, and does not encompass associated proteins. See also the cellular component term 'actin filament ; GO:0005884'.	0
6595	67217	2	See also the molecular function term 'acetolactate synthase activity ; GO:0003984'.	0
6596	67229	2	Note that this heterodimeric cytokine utilizes the same EBI3 subunit (product of EBI3, Epstein-Barr virus induced gene 3) as its beta chain as IL-35 uses for its beta chain. Also note that the product of the IL27 gene is the alpha subunit of IL-27. The functional IL-27 protein complex requires both subunits.	0
6597	67234	2	This term was made obsolete because it represents a process.	0
6598	67237	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6599	67238	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex.	0
6600	67255	2	Part of stigma papilla cell (PO:0025168).	0
6601	67269	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6602	67274	2	Note that this complex is 66S in Saccharomyces.	0
6603	67280	2	Note that for multicellular organisms, the extracellular space refers to everything outside a cell, but still within the organism (excluding the extracellular matrix). Gene products from a multi-cellular organism that are secreted from a cell into the interstitial fluid or blood can therefore be annotated to this term.	0
6604	67285	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The functions of this complex are represented by the molecular function terms 'pyruvate dehydrogenase (lipoamide) activity ; GO:0004739', 'dihydrolipoamide S-acetyltransferase activity ; GO:0004742', and 'dihydrolipoamide dehydrogenase activity ; GO:0004148'.	0
6605	67287	2	Note that this component is characterized in Schizosaccharomyces, particularly with respect to the DAPI staining pattern.	0
6606	67293	2	See also the cellular component term 'SAGA complex ; GO:0000124'.	0
6607	67297	2	Note that this term should not be confused with '1-phosphatidylinositol-4-phosphate 3-kinase, class IA complex; GO:0005943' or '1-phosphatidylinositol-4-phosphate 3-kinase, class IB complex ; GO:0005944'.	0
6608	67302	2	Note that this complex is sometimes referred to as the 'SMN complex', but it should not be confused with GO:0032797.	0
6609	67303	2	Note that an IgE immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6610	67321	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6611	67344	2	This term was made obsolete because it is a genetically defined region and not a specific subcellular localization.	0
6612	67349	2	This term was made obsolete because it is based on a process.	0
6613	67351	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6614	67375	2	Note that this complex can be found in the cytoplasm as well as the nucleus.	0
6615	67380	2	Note that an IgM immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6616	67386	2	This term was made obsolete because the activity dihydrolipoamide dehydrogenase is held by a single protein (Lpd1 in yeast), which is one of the components of three different complexes: 2-oxoglutarate dehydrogenase, pyruvate dehydrogenase, and branch chain amino acid dehydrogenase, so dihydrolipoamide dehydrogenase is not a complex itself.	0
6617	67388	2	This term was made obsolete because it represents a molecule and not a location or complex.	0
6618	67402	2	Note that this term should be used to annotate gene products found in cohesin complexes in organisms that undergo closed mitosis (i. e. where the nuclear envelope does not break down, as in fungi). For organisms in which the nuclear envelope breaks down during mitosis, the parent should be used.	0
6619	67403	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6620	67408	2	See also the cellular component term 'mitochondrial inner membrane ; GO:0005743'.	0
6621	67409	2	This term was made obsolete because it represents a gene product.	0
6622	67413	2	Note that this term is mainly relevant in organisms that have both sex chromosomes and non-sex-determining chromosomes in an individual organism.	0
6623	67415	2	This term was made obsolete because it is based on a temporal division of the cell cycle.	0
6624	67416	2	See also the cellular component term 'outer membrane ; GO:0019867'.	0
6625	67440	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6626	67444	2	Note that the synonym 'APC' should not be confused with the abbreviation for the adenomatous polyposis coli gene and protein.	0
6627	67459	2	This term was made obsolete as part of a general reorganization of vesicle and vesicle coat terms; its position in the ontology suggested that a new term was required.	0
6628	67462	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6629	67467	2	See also the molecular function term 'imidazoleglycerol-phosphate synthase activity ; GO:0000107'.	0
6630	67472	2	Note that this peroxisome assembly pathway is described in the yeast Yarrowia lipolytica. See also the cellular component terms 'P1 peroxisome ; GO:0019819', 'P2 peroxisome ; GO:0019820', 'P3 peroxisome ; GO:0019821', 'P5 peroxisome ; GO:0019823', and 'P6 peroxisome ; GO:0019824'.	0
6631	67477	2	Note that the term name uses Saccharomyces gene product names because no other names have yet arisen for this complex; the term nevertheless can be used for analogous complexes in other eukaryotes, and the name can be changed if better wording is found.	0
6632	67484	2	See also the molecular function term 'succinate dehydrogenase (ubiquinone) activity ; GO:0008177'.	0
6633	67486	2	See also the molecular function term 'N-acetylglucosaminyldiphosphodolichol N-acetylglucosaminyltransferase activity ; GO:0004577'.	0
6634	67489	2	Note that this term is intended to annotate gene products that are attached (integrated or loosely bound) to the plasma membrane or cell wall.	0
6635	67491	2	Note that this term should not be confused with the cellular component term 'perinuclear region ; GO:0048471'.	0
6636	67503	2	See also the cellular component term 'cytosolic pyruvate dehydrogenase complex ; GO:0045250'.	0
6637	67510	2	Note that an IgA immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6638	67515	2	Note that this term is not a descendant of 'organelle outer membrane ; GO:0031968' because the outer acrosomal membrane is a portion of the acrosomal membrane; the latter is a single lipid bilayer.	0
6639	67525	2	This term was made obsolete because prepilin peptidase is a single gene product, and there is no evidence that it acts as a multimer.	0
6640	67528	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The function possessed by this complex is represented by the molecular function term 'glycine reductase activity ; GO:0030699'.	0
6641	67538	2	See also the cellular component term 'SAGA complex ; GO:0000124'.	0
6642	67544	2	See also: periarbuscular membrane ; GO:0085042.	0
6643	67548	2	Note that this term refers to membrane-bounded compartments that are not considered organelles in their own right, but form parts of larger organelles.	0
6644	67552	2	This term was made obsolete because it represents a gene product.	0
6645	67567	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The function possessed by this complex is represented by the molecular function term 'NADH dehydrogenase (quinone) activity ; GO:0050136'.	0
6646	67576	2	Note that the term name uses Saccharomyces gene product names because no other names have yet arisen for this complex; the term nevertheless can be used for analogous complexes in other eukaryotes, and the name can be changed if better wording is found.	0
6647	67578	2	This term was made obsolete because thylakoids are not found in organisms of the Phylum Proteobacteria.	0
6648	67582	2	Note that the following subunit names have been used: human RAD9/RAD1/HUS1; S. pombe Rad9/Rad1/Hus1; S. cerevisiae Ddc1p/Rad17p/Mec3p.	0
6649	67583	2	Note that this term refers to Schizosaccharomyces pombe Swi5 and Swi2, which should not be confused with the unrelated Saccharomyces Swi5p and Swi2p.	0
6650	67589	2	Note that this term should not be confused with '1-phosphatidylinositol-4-phosphate 3-kinase, class IA complex; GO:0005943' or '1-phosphatidylinositol-4-phosphate 3-kinase, class IB complex ; GO:0005944'.	0
6651	67600	2	This term was made obsolete as part of a general reorganization of vesicle and vesicle coat terms; its position in the ontology suggested that a new term was required.	0
6652	67604	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6653	67605	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6654	67615	2	Note that proteins intrinsic to membranes cannot be removed without disrupting the membrane, e.g. by detergent.	0
6655	67616	2	Note that podosomes can be distinguished from other F-actin-rich structures or from other matrix contacts. For example, focal adhesions and focal contacts do not display a core structure of F-actin. Unlike focal adhesions, podosome assembly does not require de novo protein synthesis. However, most of the podosome ring components are found in focal adhesions and other cell-matrix contacts. Podosomes are typically found in cells that cross tissue boundaries, recruited to the leading edge of migrating cells, and are often sites of extracellular matrix degradation.	0
6656	67629	2	Note that the centrosomal corona has been observed in Dictyostelium, and is the functional equivalent of pericentriolar material.	0
6657	67630	2	Note that this term can be used in place of the obsolete cellular component term 'telomere ; GO:0005696'. Use with caution because this term refers to a specific protein complex and not a region of the chromosome.	0
6658	67636	2	Note that this term was deleted from GO and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6659	67644	2	This term was made obsolete because it was defined inaccurately.	0
6660	67649	2	Note that this term was deleted from GO and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6661	67650	2	Note that the actions of the inhibin complex are the opposite of those of the activin complex, which is a dimer of an inhibin beta-A and/or inhibin beta-B subunit. See also the cellular component term 'activin complex ; GO:0048180'.	0
6662	67660	2	This term was made obsolete because there is no ubiquitin in bacteria and they do not have proteasome regulatory particles. Instead they have proteasome-activating nucleotidase.	0
6663	67662	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6665	67678	2	Note that this term should not be confused with 'exosome' used in the context of vesicles released from multivesicular bodies.	0
6666	67686	2	This term was made obsolete because it is a redundant grouping term.	0
6667	67697	2	Note that process and function information are included in the term and definition for the purpose of describing and distinguishing the complex.	0
6668	67700	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The function possessed by this complex is represented by the molecular function term 'NADH dehydrogenase (ubiquinone) activity ; GO:0008137'.	0
6669	67708	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6670	67713	2	Note that an IgM immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6671	67729	2	Note that chloroplasts possess a complex that is called 'RNase P' because it catalyzes pre-tRNA cleavage, but the chloroplast complex appears not to contain RNA.	0
6672	67738	2	Note that the p50 subunit is encoded by NFKB1 gene in human and the p65 subunit is encoded by the RELA gene in human. Similar nomenclature is used in other vertebrate species. The p50 subunit has a precursor form p105 in some publications.	0
6673	67739	2	This term was made obsolete because it is based on a temporal division of the cell cycle.	0
6674	67746	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6675	67762	2	This term was made obsolete because its position and synonym implied that it confused a coated vesicle with the coat itself.	0
6676	67766	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6677	67783	2	Note that the term name uses Saccharomyces gene product names because no other names have yet arisen for this complex; the term nevertheless can be used for analogous complexes in other eukaryotes, and the name can be changed if better wording is found.	0
6678	67796	2	See also the molecular function term 'guanylate cyclase activity ; GO:0004383'.	0
6679	67801	2	Note that this term does not have a relationship to 'vacuole ; GO:0005773' because it does not fit the definition of a vacuole; the parasitophorous vacuole was so named because it resembles a vacuole in the microscope.	0
6680	67802	2	Note that this term can be used in place of the obsolete cellular component term 'telomere ; GO:0005696'. Use with caution because this term refers to a specific region of the chromosome and not a protein complex.	0
6681	67808	2	See also the cellular component term 'mitochondrial outer membrane translocase complex ; GO:0005742'.	0
6682	67829	2	Note that an IgE immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6683	67831	2	Note that although this complex is located in the endoplasmic reticulum, there is some evidence that it may also be found in the Golgi.	0
6684	67834	2	See also the fly_anatomy.ontology term 'outer nurse cell ring canal rim ; FBbt:00004882'.	0
6685	67847	2	Note that an IgD immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6686	67848	2	Note that this heterodimeric cytokine utilizes the IL-12p35 subunit as its alpha chain, which is also used by IL-35 as its alpha chain, and utilizes the IL-12p40 subunit as its beta chain, which is also used by IL-23 as its beta chain.	0
6687	67864	2	Note that this complex is conserved in fungi but has not been observed in metazoans.	0
6688	67868	2	This term was made obsolete because it was originally intended only as a temporary parent for protein complex terms for which no more specific parents had been found. This term no longer has any children: All protein complex terms are is_a 'protein complex ; GO:0043234' and nearly all have been placed under parents to yield more specific paths traversing a part_of relationship. In other words, the term has been superseded by other terms and relationships in the cellular component ontology, and is no longer needed.	0
6689	67874	2	Note that this term does not refer to vesicles, but instead to structures in which lipids do not necessarily form bilayers.	0
6690	67877	2	See also: extra-invasive hyphal space ; GO:0085040.	0
6691	67883	2	Note that the term name uses Saccharomyces gene product names because no other names have yet arisen for this complex; the term nevertheless can be used for analogous complexes in other eukaryotes, and the name can be changed if better wording is found.	0
6692	67887	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6693	67889	2	See also the molecular function term 'sulfite reductase (NADPH) activity ; GO:0004783'.	0
6694	67896	2	Note that this heterodimeric cytokine utilizes the same beta subunit as IL-12.	0
6695	67905	2	Note that the intine is not acetolysis resistant and is therefore absent in conventionally prepared palynological material.	0
6696	67934	2	See also the cellular component terms 'cyclin-dependent protein kinase activating kinase holoenzyme complex ; GO:0019907' and 'DNA-directed RNA polymerase II, holoenzyme ; GO:0016591'.	0
6697	67936	2	Note that the exine is highly resistant to strong acids and bases.	0
6698	67942	2	Note that this term refers to the future site of division in a cell that has not yet divided.	0
6699	67958	2	Note that this peroxisome assembly pathway is described in the yeast Yarrowia lipolytica. See also the cellular component terms 'P1 peroxisome ; GO:0019819', 'P2 peroxisome ; GO:0019820', 'P4 peroxisome ; GO:0019822', 'P5 peroxisome ; GO:0019823', and 'P6 peroxisome ; GO:0019824'.	0
6700	67960	2	Note that this term was deleted from GO and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6701	67964	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6702	67967	2	Note that polkadots also contains some amount of MALT1. Interaction with MALT1 is required for formation of the polkadots.	0
6703	67971	2	Note that the actions of the activin complex are the opposite of those of the inhibin complex, which is a dimer of an inhibin beta-A or inhibin beta-B subunit and a inhibin alpha subunit. See 'inhibin complex ; GO:0043511'.	0
6704	67972	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6705	67978	2	See also the cellular component term 'heterotrimeric G-protein complex ; GO:0005834'.	0
6706	67980	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The function possessed by this complex is represented by the molecular function term 'ferredoxin:thioredoxin reductase activity ; GO:0030385'.	0
6707	67985	2	See also: arbuscule ; GO:0085041.	0
6708	67994	2	This term was made obsolete because more specific children exist.	0
6709	68000	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6710	68001	2	This term was made obsolete because the catalytic activity resides in a single polypeptide rather than a complex, and the complex is represented by a different GO term.	0
6711	68025	2	This term was made obsolete because it was added in error; it does not refer to a normal subcellular structure.	0
6712	68027	2	This term was made obsolete because its parent was made obsolete.	0
6713	68028	2	Obsoleted because type II fatty acid synthase is not a complex.	0
6714	68036	2	This term was made obsolete because it represents a gene product.	0
6715	68038	2	Note that this term should not be confused with 'glycosylphosphatidylinositol-N-acetylglucosaminyltransferase (GPI-GnT) complex ; GO:0000506', which represents a distinct complex with a different catalytic activity.	0
6716	68044	2	This term was made obsolete because it is based on a temporal division of the cell cycle.	0
6717	68045	2	Note that, although this complex can be considered analogous to the mammalian transcription factor SL complex, the core factor complex does not include TBP, whereas SL1 does.	0
6718	68052	2	Note that a heavy chain immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Note that IgNAR is found in serum of cartilaginous fish as a heavy chain dimer without immunoglobulin light chains. Note that HCab is found in camels as a heavy chain dimer without immunoglobulin light chains.	0
6719	68056	2	This term was made obsolete because prior to cleavage, complement component C2 is a single polypeptide rather than a complex, and after cleavage the products do not remain physically associated; there is thus no known biological entity corresponding to "complement C2 complex".	0
6720	68061	2	This term was made obsolete because it refers to two distinct complexes, PCNA and Replication factor C (RFC), the latter of which is already represented as a separate, unrelated GO term (DNA replication factor C complex ; GO:0005663). In addition, the phrase 'delta-DNA polymerase cofactor' to represent both PCNA and RFC is not used in current literature.	0
6721	68072	2	This term was made obsolete because it is based on a temporal division of the cell cycle.	0
6722	68073	2	Note that this term refers to a subcellular structure, and should not be confused with the specialized cells known as xanthophores, which produce yellow pigment and are found in fish and amphibian skin. Note that several terms in the biological process ontology ('xanthophore differentiation ; GO:0050936' and its children) refer to xanthophores in the sense of pigment-producing cells.	0
6723	68078	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6724	68082	2	This term was made obsolete because the 'complex' it refers to contains only one gene product.	0
6725	68089	2	Note that this term should not be confused with the cellular component term 'perinuclear region ; GO:0048471'.	0
6726	68090	2	This term was made obsolete because it is ambiguous (there are several debranching enzymes) and because it probably represents the glycogen debranching enzyme which is a single gene product and not a complex.	0
6727	68092	2	This term was made obsolete as part of a general reorganization of vesicle and vesicle coat terms; its position in the ontology was erroneous.	0
6728	68095	2	This term was made obsolete because it represents a gene product.	0
6729	68097	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The functions of this complex are represented by the molecular function terms 'pyruvate dehydrogenase (lipoamide) activity ; GO:0004739', 'dihydrolipoamide S-acetyltransferase activity ; GO:0004742', and 'dihydrolipoamide dehydrogenase activity ; GO:0004148'.	0
6730	68137	2	This term was made obsolete as part of a general reorganization of vesicle and vesicle coat terms; a personal communication from John Armstrong indicated that a replacement term was not required, as TGN-Golgi transport is likely to be mediated by tubules rather than vesicles.	0
6731	68139	2	The ECF-type transporters differs from other types of ABC transporters because the substrate-binding subunit lies integral to the membrane.	0
6732	68140	2	Note that an IgG immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Also, IgG isotypes vary by species.	0
6733	68141	2	This term was made obsolete because it is based on a temporal division of the cell cycle.	0
6734	68151	2	See also the cellular component term 'cytosolic pyruvate dehydrogenase complex ; GO:0045250'.	0
6735	68157	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6736	68168	2	Note that the Golgi apparatus can be located in various places in the cytoplasm. In plants and lower animal cells, the Golgi apparatus exists as many copies of discrete stacks dispersed throughout the cytoplasm, while the Golgi apparatus of interphase mammalian cells is a juxtanuclear, often pericentriolar reticulum, where the discrete Golgi stacks are stitched together to form a compact and interconnected ribbon, sometimes called the Golgi ribbon.	0
6737	68170	2	Note that this term represents a location, not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The function of this complex is represented by the molecular function term 'histone acetyltransferase activity ; GO:0004402'.	0
6738	68183	2	Note that the actions of the activin complex are the opposite of those of the inhibin complex, which is a dimer of an inhibin beta-A or inhibin beta-B subunit and an inhibin alpha subunit. See also the cellular component term 'inhibin complex ; GO:0043511'.	0
6739	68198	2	Note that this term was deleted from GO and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6740	68210	2	This term was made obsolete because there is no evidence that this enzyme ever exists as anything other than a monomer.	0
6741	68211	2	See also the cellular component term 'MHC class I peptide loading complex ; GO:0042824'.	0
6742	68222	2	This term was made obsolete because 'repairosome' has fallen out of use in the literature, and the large complex described in the definition has not been confirmed to exist. The term has also confused annotators.	0
6743	68232	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6744	68234	2	This term was made obsolete because dihydrolipoamide S-succinyltransferase itself is not a complex, it is a component of the 2-oxoglutarate dehydrogenase complex, the activity dihydrolipoamide S-succinyltransferase is contained in a single polypeptide.	0
6745	68237	2	This term was made obsolete because more specific terms were created.	0
6746	68238	2	Note that this term is an is_a child of 'extracellular region part' because it is part of the ascus that lies external to spores, each of which is a cell.	0
6747	68241	2	See also the molecular function term '1-alkyl-2-acetylglycerophosphocholine esterase activity ; GO:0003847'.	0
6748	68243	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6749	68254	2	Note that an IgA immunoglobulin complex has the function of antigen binding if a suitable antigen is available. In human only the IgA1 isotype in the polymeric form is capable of becoming secretory IgA.	0
6750	68256	2	Note that an immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6751	68294	2	Note that this heterodimeric cytokine utilizes the IL-12p35 subunit as its alpha chain, which is also used by IL-35 as its alpha chain, and utilizes the IL-12p40 subunit as its beta chain, which is also used by IL-23 as its beta chain.	0
6752	68295	2	This term was made obsolete because it represents a single polypeptide rather than a complex; all known peroxisome targeting signal receptors are monomeric.	0
6753	68301	2	See also the cellular component term 'mitochondrial pyruvate dehydrogenase complex ; GO:0005967'.	0
6754	68304	2	Note that this term was deleted from GO rather than being made obsolete and was restored to the ontology in Feb 2003 to ensure that the ID is not reused.	0
6755	68308	2	Note that the term name uses Saccharomyces gene product names because no other names have yet arisen for this complex; the term nevertheless can be used for analogous complexes in other eukaryotes, and the name can be changed if better wording is found.	0
6756	68316	2	Carries the male gametes to into or near the ovule. May be branched in gymnosperms. This term replaces the obsolete term PO:0006345. Part of pollen tube cell (PO:0025195).	0
6757	68320	2	This term was made obsolete because the 'complex' it refers to contains only one gene product.	0
6758	68328	2	Note that a larger complex containing Sm proteins and other subunits is also sometimes referred to as the 'SMN complex'. The larger complex is represented by 'SMN-Sm protein complex ; GO:0034719'.	0
6759	68344	2	Note that endexine is distinguished on staining properties; compare with 'sexine ; GO:0043673'. See also 'ectexine ; GO:0043669'.	0
6760	68348	2	Note that an IgA immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6761	68368	2	Note that this term represents a location and not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The functions of this complex are represented by the molecular function terms 'pyruvate dehydrogenase (lipoamide) activity ; GO:0004739', 'dihydrolipoamide S-acetyltransferase activity ; GO:0004742', and 'dihydrolipoamide dehydrogenase activity ; GO:0004148'.	0
6762	68387	2	Note that the term name uses Saccharomyces gene product names because no other names have yet arisen for this complex; the term nevertheless can be used for analogous complexes in other eukaryotes, and the name can be changed if better wording is found.	0
6763	68398	2	Note that this term refers to disrupted cells, and does not necessarily correspond to any specific structure(s) in an intact cell.	0
6764	68409	2	Note that an IgZ immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Note that IgZ is found in bony fish, and called IgT in certain species, such as trout.	0
6765	68410	2	This term was made obsolete because it represents a type of whole cell rather than a cellular component. To update annotations, consider the external ontology term 'shmoo ; FAO:0001023'.	0
6766	68415	2	See also the cellular component term 'SAGA complex ; GO:0000124'.	0
6767	68416	2	Note that the gene/protein name 'APC' should not be confused with the abbreviation for 'anaphase promoting complex'.	0
6768	68423	2	Note that an IgD immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6769	68430	2	This term was made obsolete because it was being used to describe two different components.	0
6770	68432	2	See also the molecular functions term 'oxoglutarate dehydrogenase (succinyl-transferring) activity ; GO:0004591', 'dihydrolipoyllysine-residue succinyltransferase activity ; GO:0004149' and 'dihydrolipoyl dehydrogenase activity ; GO:0004148'.	0
6771	68437	2	This term was made obsolete as part of a general reorganization of vesicle and vesicle coat terms; its position in the ontology was erroneous.	0
6772	68448	2	Note that this term should not be confused with the cellular component term 'nuclear membrane lumen ; GO:0005641', which has the synonym 'perinuclear space'.	0
6773	68452	2	Note that this term can be used in place of the obsolete cellular component term 'telomere ; GO:0005696'. Use with caution because this term refers to a specific protein complex and not a region of the chromosome.	0
6774	68464	2	Note that an IgD immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6775	68469	2	This term was made obsolete because it is based on a process.	0
6776	68472	2	See also: haustorium ; GO:0085035 and extrahaustorial membrane ; GO:0085037.	0
7069	69363	2	Not in current literature.	0
6778	68503	2	See also the cellular component term 'mitochondrial inner membrane ; GO:0005743'.	0
6779	68519	2	This term was made obsolete because the catalytic activity resides in a single polypeptide that is not part of a complex with other gene products.	0
6780	68522	2	See also the cellular component term 'mitochondrial inner membrane ; GO:0005743'.	0
6781	68529	2	Note that this term should not be confused with 'motile primary cilium ; GO:0031512': Motile cilia are distinct from motile primary cilia (GO:0031512) that are typically present during embryogenesis in a single copy per cell, affect asymmetric body plan organization, and move in a rotational manner, as opposed to a whip-like, manner.	0
6782	68534	2	This term was made obsolete because it was defined inaccurately.	0
6783	68536	2	See also the cellular component term 'heterotrimeric G-protein complex ; GO:0005834'.	0
6784	68548	2	Note that this peroxisome assembly pathway is described in the yeast Yarrowia lipolytica. See also the cellular component terms 'P2 peroxisome ; GO:0019820', 'P3 peroxisome ; GO:0019821', 'P4 peroxisome ; GO:0019822', 'P5 peroxisome ; GO:0019823', and 'P6 peroxisome ; GO:0019824'.	0
6785	68560	2	See also the molecular function term 'alkyl hydroperoxide reductase activity ; GO:0008785'.	0
6786	68566	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6787	68567	2	Note that this term differs from 'cell pole ; GO:0060187' in that it is applicable to a narrower range of cell shapes.	0
6788	68572	2	This term was made obsolete because it represents a gene product.	0
6789	68574	2	Note that an IgA immunoglobulin complex has the function of antigen binding if a suitable antigen is available. Dimeric IgA is by far the most common form of polymeric IgA. In human only the IgA1 isotype is capable of a dimeric form.	0
6790	68579	2	Note that an immunoglobulin complex has the function of antigen binding if a suitable antigen is available.	0
6791	68585	2	Despite its name, the pre-BCR is not a receptor complex, as it appears to provide a low level of signal not dependent on a ligand, but rather simply on correct assembly of the complex as a measure for correct Ig heavy chain recombination and folding. A significant proportion of pre-BCR complexes fail to reach the cell surface, and in some cases may provide their signaling function from the trans-Golgi network or lysosome.	0
6792	68597	2	Eukaryotic microorganisms, plants, and probably Gram-positive bacteria, possess a homopolymeric urease. In contrast, urease complexes from gram-negative bacteria studied thus far clearly possess three distinct subunits (alpha, beta and gamma). Tightly bound nickel is present in all urease complexes.	0
6793	68599	2	See also the molecular function term 'DNA topoisomerase (ATP-hydrolyzing) activity ; GO:0003918'.	0
6794	68603	2	See also the molecular function term 'polyphosphate kinase activity ; GO:0008976'.	0
6795	68607	2	Note that this term and its children should be used to annotate gene products found in cohesin complexes in organisms that undergo closed mitosis (i.e. where the nuclear envelope does not break down, as in fungi). For organisms in which the nuclear envelope breaks down during mitosis, the parent should be used.	0
6796	68611	2	Note that this term represents a location, not a function; the activity possessed by this complex is mentioned in the definition for the purpose of describing and distinguishing the complex. The function of this complex is represented by the molecular function term 'histone deacetylase activity ; GO:0004407'.	0
6797	68613	2	This term was made obsolete because it represents a single gene product and not a complex.	0
6798	68617	2	Note that it is not established whether the nitrogenase exists in vivo in a specific particle or whether the nitrogenase proteins are bound nonspecifically to the membranes of some cells.	0
6799	68637	2	Note that this term represents the protein complex involved in transport of proteins across the cytoplasmic membrane. For proteins involved in bacterial Type II secretion across the outer membrane, consider annotating to 'type II protein secretion complex ; GO:0015628'. For proteins involved in Sec-complex dependent translocation into the eukaryotic endoplasmic reticulum, consider annotating to 'endoplasmic reticulum Sec complex ; GO:0031205'.	0
6972	69105	2	The characteristic reproductive structure of angiosperms. May have as part one or more petals, sepals or tepals. May contain pistillode or staminode or other aborted organs that don't show up in mature form.	0
6973	69108	2	Found in Poaceae.	0
6974	69111	2	A stereome is composed of only stereids. Found only in bryophytes in gametophore axes or non-vascular leaves. May function in support.	0
6975	69112	2	Can occur in a stem or branch.	0
6976	69114	2	Occurs in grasses. In grasses, the hypocotyl and cotyledon may not be visible and may be represented by the scutellar node and scutellum, making the mesocotyl similar to the epicotyl in other taxa. Elongation of the mesocotyl during seedling growth pushes the coleoptile above the soil surface.	0
6977	69118	2	Occurs at the tips of the stems and branches of bryophytes.	0
6978	69121	2	As the archegonium matures, the archegonium neck canal cells disintegrate to form the archegonium neck canal.	0
6979	69126	2	May occur in shoot axes or leaves of bryophytes or ferns.	0
6980	69128	2	This term was made obsolete to avoid confusion with the new terms fruit replum and ovary replum. Consider ovary replum (PO:0025272) or fruit replum (PO:0025267).	0
6981	69129	2	CARO:0000005 anatomical space is defined as: Non-material anatomical entity of three dimensions, that is generated by morphogenetic or other physiologic processes; is surrounded by one or more anatomical structures; contains one or more organism substances or anatomical structures.	0
6982	69133	2	May be composed of fused petals, sepals or tepals, but is generally formed from fused petals in Eucalyptus and other Myrtaceae. Sometimes erroneously referred to as part of a fruit. Not the same structure as a spore capsule calyptra.	0
6983	69135	2	Often found on stems and leaves.	0
6984	69140	2	This is a functional term.	0
6985	69142	2	Can occur on a stem or branch.	0
6986	69146	2	Includes isolated plant cells and small plant cell aggregates that proliferate while suspended in sterile liquid medium or spread on a solid agar medium.	0
6987	69149	2	See also leaf spine (PO:0025173).	0
6988	69150	2	Generally, the development of chloronema precedes the development of caulonema. Only the caulonema, and not the chloronema, initiates gametophore buds.	0
6989	69154	2	As applied to an intercellular space, originating by one or a combination of two processes, separation and degradation of cell walls.	0
6990	69155	2	This term was made obsolete because it is a sub-cellular component. New term unicellular trichome branch (GO:0090405) has been added to GO. For cell that is a branch of a multicellular trichome, see multicellular trichome branch cell (PO:0025163).	0
6991	69157	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043677.	0
6992	69159	2	This tissue could be found in any organ, but often occurs in fruits or tubers. New GO term carbohydrate storage has been requested.	0
6993	69164	2	May also contain portions of ground tissue.	0
6994	69165	2	A similar term L3 meristem (PO:0009022) occurs.	0
6995	69166	2	The term was made obsolete because angular form is a common attribute of ordinary collenchyma.	0
6996	69167	2	Somatic plant embryos may arise where embryos normally would not arise as a product of apomixis. They may occur on the edges of leaves on some species of Kalanchoe or some ferns.	0
6997	69169	2	The skin of young potatoes is epidermis while the skin of mature potatoes is periderm.	0
6998	69170	2	May function in providing nutrition to developing sporocytes or pollen. May have one or more layers of cells. May break down as spores mature. A tapetum does not develop in some plants, such as Psilotum. In angiosperms, the tapetum develops from one of the parietal layers. In non-seed plants, the tapetum may develop from the outer cells of archesporium or from the inner-most layer of the sporangium wall.	0
6999	69172	2	Consists of two to a dozen cells.	0
7000	69174	2	Only bears stamens or perianth segments if they are present in the flower (e.g., no stamens in a carpellate flower).	0
7001	69177	2	This term is to be used for only the apical most portion of a bract. For a larger area, use the term bract apex. Use this term when describing the shape of a bract tip.	0
7002	69178	2	Only flattened or laminar organs or organ parts will have a margin.	0
7003	69180	2	The peristome is located under the operculum, if an operculum is present. Upon maturity of a capsule, the teeth of the peristome open to release the spores.	0
7004	69182	2	The primordium is the first distinct form in the development of a plant structure.	0
7005	69193	2	In most cases it is involved in root elongation.	0
7006	69195	2	Also called motor cell because of its presumed participation in the mechanism of rolling and unrolling of leaves. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7007	69197	2	Often with thickened cell walls. Involved in anther dehiscence.	0
7008	69201	2	Functions in conduction and support. In the stem it is often found as a stele, surrounded by the cortex and surrounding the pith.	0
7009	69202	2	This term is for an entire epidermal cell that contains a root hair extension. To describe only the cell extension, see root hair (GO:0035618) or root hair tip (GO:0035619).	0
7010	69203	2	Ceases being an apical cell when the sporangium begins to develop.	0
7011	69204	2	Develops from the outermost layer of an amphithecium in bryophytes.	0
7012	69209	2	In potatoes, this is part of the flesh.	0
7013	69212	2	A non-functional or rudimentary gynoecium.	0
7014	69214	2	Describes the phenotype of a vascular leaf during a leaf development phase in Musa and other monocots.	0
7015	69218	2	In ferns and many monocots, a rhizome is a primary axis (stem), while in other species, it is a branch. Usually produces scale-like leaves.	0
7016	69220	2	The principal function is the upward translocation of water and solutes. See also primary xylem and secondary xylem.	0
7017	69221	2	Term used for vascular plants to describe the outermost layer of a sporangium wall that is internal to the exothecium.	0
7018	69222	2	A functional gynoecium.	0
7019	69224	2	This term was made obsolete because the definition was not correct. A new term with the same name and correct definitions was created to replace it.	0
7020	69229	2	The root epidermis is different from the shoot epidermis in its origin, function and structure.	0
7021	69233	2	Some stalks may be ridged or grooved.	0
7022	69238	2	Antheridial sperm cells are motile and lack a plasma membrane.	0
7023	69243	2	This term was made obsolete because the definition was incorrect. Replaced by PO:0025277.	0
7024	69244	2	Not in current literature. More like an attribute.	0
7025	69250	2	The vascular system may also contain portions of ground tissue.	0
7026	69252	2	Replace_by whole plant in the gametophyte phase (PO:0028002). The gametophyte arises from the product of meiosis (the spore). Structures that occur only in gametophytes should have a participates_in relation to the gametophyte phase.	0
7027	69254	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043673.	0
7028	69256	2	May be a cavity in a sporophyll, within several fused sporophylls, or within a sporangium. In many instances, the locules are filled with seeds or other plant structures.	0
7029	69262	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7030	69264	2	Homologous to the endodermis.	0
7031	69268	2	Most of the primary tissues of a root mature in the differentiation zone. This zone is where root hairs are produced.	0
7070	69366	2	Found in bryophytes. A spore capsule may dehisce ongitudinally, forming evenely sized valves, or it may dehisce at the capsule annulus, forming the operculum, which is a specialized type of valve.	0
7071	69370	2	May occur on the surface or be internal.	0
7032	69270	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7033	69273	2	The epicotyl is the first internode of a stem above the cotyledons.	0
7034	69275	2	Found in bryophytes and pteridophytes, especially in mosses.	0
7035	69278	2	May give rise to a chloronema, caulonema, protonema rhizoid, tmema cell, or brachycyte.	0
7036	69279	2	This term was made obsolete and replaced by stomatal pore (PO:0008032), which can be post-composed with individual floral organs, such as petal or sepal.	0
7037	69281	2	Found only in bryophytes in gametophore axes, setae, or leaves. Functions in support rather than conduction. May or may not retain a living protoplast at maturity.	0
7038	69282	2	Consists of two or more cells.	0
7039	69284	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7040	69287	2	In dicots and gymnosperms, the cortex consists of mainly parenchyma cells. In monocots sclerenchyma develops in addition to parenchyma.	0
7041	69289	2	In many angiosperms, including <i>Arabidopsis</i>, it differentiates into the anther wall endothecium. Alternatively, it may divide periclinally to form an anther wall endothecium externally and an anther wall middle layer internally.	0
7042	69290	2	Nodule is persistent and may continue to grow after a physiological stress.	0
7043	69291	2	The sperm (microgamete) is usually smaller than the egg (megagamete). Male gametes may be defined as the motile gamete, rather than the smaller gamete.	0
7044	69292	2	This term was made obsolete because the definition was not correct. A new term with the same name and correct definitions was created to replace it.	0
7045	69294	2	This term was made obsolete because it is a subcellular component. See GO for the term pollen tube (GO:0090406). Since a pollen tube is part_of a pollen tube cell, annotations for pollen tube may also go to the more general term pollen tube cell (PO:0025195).	0
7046	69296	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7047	69297	2	This term was made obsolete. Replaced by whole plant growth stage seedling growth (PO:0007131) and whole plant (PO:0000003).	0
7048	69301	2	Can occur in the hypocotyl and root.	0
7049	69306	2	The seed is representative of a next generation of sporophyte.	0
7050	69307	2	May be alive or dead at maturity.	0
7051	69312	2	Used to refer to an abaxial epidermis of an entire leaf. More specific terms exist for leaf lamina abaxial epidermis and petiole abaxial epidermis. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7052	69313	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043674.	0
7053	69314	2	Functional term	0
7054	69317	2	Found in mosses. Alar cells occur in an area at the base of a leaf that may be triangular, ovate or rectangular and is sometimes called the alar region. They are different in size, shape, color, thickness, or ornamentation from other cells in the leaf.	0
7055	69320	2	Occurs bryophytes and pteridophytes.	0
7056	69321	2	May be derived from cultured plant callus or plant protoplast that was induced from a segment of leaf. In the case of the plant protoplast, after the re-establishment cell walls.	0
7057	69323	2	The development of the androecium in the ear floret of a normal maize plant is aborted and is present in a rudimentary state.	0
7058	69324	2	A stem (the primary axis) of the leafy part of a bryophyte shoot system.	0
7059	69325	2	Found in Marchantiales.	0
7060	69326	2	Unlike the root nodules, these contain functioning chloroplasts in the nodule cortex and are therefore capable of carbon fixation. Note: stem nodule is commonly used term for this structure, although the nodules are formed at positions of dormant adventitious root primordia.	0
7061	69327	2	This is the general term for the lateral portion of any root cap and not the term for a root cap of lateral root (PO:0003018) or lateral root cap of lateral root (PO:0003020).	0
7062	69328	2	This term was made obsolete because it is a subcellular component. Root hair tip (GO:0035619) has been added to GO. To annotate to a cell that has a root hair tip, consider root hair cell (PO:0000256).	0
7063	69330	2	May represent a reduced floral structure.	0
7064	69336	2	Appear to be specialized for short-distance transfer of solutes. Transfer cells can occur anywhere there is a junction between two individuals, such as between a sporophyte and a gametophyte, or between a parasitic plant and its host.	0
7065	69337	2	Leaf procambial cells may be derived from the shoot apical meristem or can arise throughout the mesophyll of a developing leaf.	0
7066	69340	2	The perichaetal bracts may fuse laterally in the gametophytic perianth. The gametophytic perianth is not the same structure as a perianth (PO:0009058) in angiosperms.	0
7067	69351	2	The entire petiole may be laminar, or the petiole may be more or less rounded in cross section with laminar extensions. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7068	69354	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7072	69371	2	This term is to be used for only the apical most portion of a phyllome. For a larger area, use the term phyllome apex. Use this term when describing the shape of a phyllome tip.	0
7073	69374	2	This term was made obsolete because the definition was wrong. Replace by new term with same name but corrected definition.	0
7074	69376	2	Found in bryophytes. The capsule annulus is located at the base of an operculum. Upon capsule maturation, cell separation in the annulus allows the operculum to separate from the capsule, aiding in spore dispersal.	0
7075	69377	2	check the definition.	0
7076	69378	2	Generally the above ground portion of a plant.	0
7077	69380	2	This term was made obsolete. Its former children were classified as children of either epidermis, phyllome epidermis or shoot epidermis.	0
7078	69385	2	A non-functional or rudimentary gynoecium.	0
7079	69397	2	Has vascular tissue. From APweb Glossary: In angiosperms, commonly thought of as one of the three basic parts of the seed plant body, a structure usually of determinate growth, without secondary thickening, and of superficial origin, often flattened and photosynthetic in part, and in the axil of which is found a bud. Occurs in the sporophytic phase of a plant life cycle.	0
7080	69407	2	Produces pollen sperm cells.	0
7081	69409	2	Apical cells occur only at the tip of a shoot axis apex, leaf apex, root apex, thallus apex, or protonema in bryophytes and some pteridophytes. Apical growth results from division of a single meristematic cell located at the tip of an apical meristem or plant organ, rather than from a population of meristematic cells located at the tip of an apical meristem. The apical cell may be tetrahedral shaped, with three (in shoots) or four (in roots) cutting faces, or wedge-shaped (lenticular) with two cutting faces (in non-vascular leaves or thalli). An apical cell may be established upon germination of a spore or upon the first cell division of an embryo, or later.	0
7082	69410	2	This is not a pedicel in the strict sense, but is the ultimate naked part of the inflorescence axis.	0
7083	69415	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7084	69418	2	This term was brought back from OBSOLETE node (original reason for OBSOLETE: synonym of term stele). Since stele encompasses both vascular system and the pith, in roots with pith, vascular system and stele are not synonymous.	0
7085	69419	2	Extends along the entire length of the anther and is observed as an indentation between the locules of each theca. Upon anther maturation, cell separation within the dehiscence zone allows the anther wall to break open and pollen to be released.	0
7086	69421	2	The development of the androecium in the ear floret of a normal maize plant is aborted and is present in a rudimentary state.	0
7087	69422	2	The term has been made obsolete because this concept is used in a very loose sense.	0
7088	69428	2	This class is for tissues that only occur as part of an embryo.	0
7089	69429	2	May give rise to a branch of the protonema (including a protonema rhizoid, tmema cell or brachycyte), a gametophore bud, or may not divide further.	0
7090	69430	2	In some cases the androecium may consist of only one stamen.	0
7091	69433	2	Plant organs may be formed after the cultured plant callus is treated with plant growth regulators.	0
7092	69436	2	A chloronema cell contains many well-developed chloroplasts.	0
7093	69440	2	A crust of salt forms on leaves which tastes bad and the white surfaces act to reflect light. Example, as is Mangrove vegetation.	0
7094	69451	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7095	69452	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7096	69454	2	An embryo is generally formed after the first division of a zygote, but in the case of adventitious embryos, somatic embryos, other embryos that arise through apogamy, and cultured haploid embryos, it is formed after the division of a single cell that is not a zygote. The end of the embryonic phase varies among taxa. In seed plants, the embryonic phase ends with germination. In pteridophytes, the embryonic phase ends with the formation of the first true leaf after the cotyledon(s). In bryophytes, the embryonic phase ends when the apical cell stops dividing and the sporangium begins to develop. In cultured plant embryos, the embryonic phase ends when organs (roots, shoot axes, or leaves) begin to form.	0
7097	69455	2	See part_of children for individual components of aerial tuber flesh.	0
7098	69456	2	Raises the venter above the rest of the gametophyte.	0
7099	69458	2	More or less persistent, multiplicative or not.	0
7100	69462	2	Term used for bryophytes. May have one or more layers. An amphithecium may give rise to an exothecium and other layer of a sporangium wall (jacket layer or layers). In true mosses, the amphithecium gives rise to the sporangium wall and the peristome. In hornworts and peat mosses, it gives rise to the sporangium wall and sporogenous tissue.	0
7101	69465	2	In vitro growth is defined as microbe-free growth in a sterile, culture environment, usually in the laboratory. An example of a sterile culture environment is growth on or in a nutrient medium in a Petri dish, culture flask or test tube. Microbes may be intentionally added to the culture environment, such as in co-culture with Agrobacterium.	0
7102	69467	2	Nodules are not persistent.	0
7103	69470	2	Absent in some dicots and most monocots. The "wood" of gymnosperm and dicot angiosperm trees, shrubs, and lianas.	0
7104	69474	2	Cultured plant callus may induced to form from plant protoplasts or cultured plant cells in suspension culture. After supplementation with the appropriate plant growth regulators, further differentiation may lead to the development of plant tissues, plant organs and ultimately, a whole plant.	0
7375	70124	2	Used only when not specified more precisely; see testa, tegmen.	0
7105	69477	2	For branches of a unicellular trichome, see unicellular trichome branch (GO:0090405) in GO.	0
7106	69478	2	Found in mosses and leafy liverworts. A stem or branch of the leafy part of a bryophyte.	0
7107	69479	2	In plants with single flowers, the peduncle ends with a flower. In plants with inflorescences, the peduncle is the basal end of the primary\\ninflorescence axis, and it ends where the inflorescence begins to branch.\\nThe peduncle marks the axial transition from vegetative to reproductive\\ngrowth. In branching inflorescences, the second order inflorescence axis from the point at which it leaves the main axis up to the point at which it branches again may be called the second order peduncle. Higher order peduncles are also possible.	0
7108	69480	2	A hydrome is composed of only hydroids. Found in bryophytes, in the center of a non-vascular shoot axis such as a gametophore or seta. Often surrounded by leptome. May function in water conduction and may provide support.	0
7109	69487	2	Consists primarily of parenchyma cells but may contain other cell types as the callus begins to differentiate. May be formed as a result of wounding or may develop in culture.	0
7110	69488	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7111	69490	2	The cells in the mesophyll layer(s) may not differentiate similar to the spongy and palisade cells found in the leaf mesophyll.	0
7112	69493	2	Pollen sperm cells are structurally simple, usually non-motile cells that may contain a normal complement of cellular organelles, including heritable cytoplasmic organelles such as mitochondria and, in some plants, plastids, but lack a cell wall. In seed plants, pollen sperm cells are usually two in number. In Angiosperms, during double fertilization, one fuses with the egg cell to produce a zygote while another fuses with the two polar nuclei of the central cell to give rise to endosperm.	0
7113	69494	2	The micropyle originates as an opening in the integuments of an ovule through which the pollen tube usually enters the embryo sac. In a mature seed the micropyle may remain visible as an occluded pore or may be obliterated.	0
7114	69501	2	In some cases the gynoecium may consist of only one carpel.	0
7115	69508	2	Raises the sporophyte above the perichaetial bracts. Found in Sphagnum and Andreaea.	0
7116	69509	2	The cell walls are thickened and contain suberin. Absent in pteridophytes, fibrous in Phoenix and accompanied by sclerenchyma in Ananas.	0
7117	69510	2	Found in bryophytes and some pteridophytes. In mosses, the foot is located below the seta. In ferns, the foot is formed from the upper hypobasal quandrant of the embryo. The sporophyte foot serves for both attachment and absorption. The outer portion of the foot is composed of absorptive transfer cells.	0
7118	69513	2	Cardinal refers to the fact that these are biologically meaningful parts, not arbitrary. Examples include lobe (PO TBD), operculum (PO TBD), neck (PO TBD), petiole PO:0020038, leaflet PO:0020049.	0
7119	69514	2	Includes both material entities such as plant structures and immaterial entities such as plant anatomical spaces. CARO:0000000 anatomical entity is defined as: Biological entity that is either an individual member of a biological species or constitutes the structural organization of an individual member of a biological species.	0
7120	69515	2	The chalaza is recognized as the region which initiates the two integuments at its flank.	0
7121	69516	2	In many angiosperms, including <i>Arabidopsis</i>, it divides periclinally to form an anther wall middle layer externally and an anther wall tapetum internally. Alternatively, it may differentiate into a tapetum.	0
7122	69517	2	This term is to be used for only the apical most portion of a petal. For a larger area, use the term petal apex. Use this term when describing the shape of a petal tip.	0
7123	69518	2	Cultured somatic plant embryos are commonly induced after the formation of callus from an explant and treatment with plant growth regulators.	0
7124	69519	2	A carbohydrate and amino acid conducting cell found in bryophytes in axes and leaves in the gametophytic phase and in the seta in the sporophytic phase. Leptoids have no nucleus at maturity. Carbohydrate and amino acid conducting cells in bryophytes range from conducting parenchyma cells that are indistinguishable from other parenchyma cells to 'leptoids sensu strictu' that are structurally comparable to sieve elements in vascular plants, as well as many intermediate forms. The term leptoid is used for cells that are distinguishable from other parenchyma cells, whether they be intermediate or leptoids sensu strictu.	0
7125	69521	2	Inapplicable for nearly all monocots.	0
7126	69522	2	Functions as a population of stem cells that replenishes the meristem.	0
7127	69526	2	Obsoleted: Too general definition of the term. Replaced by two terms: non-articulated laticifer cell and articulated laticifer cell.	0
7128	69527	2	Includes plant structures that only occur in embryos (such as suspensor) as well as plant structures that are part of an embryo when a plant is in the embryonic phase (such as embryonic radicle).	0
7129	69530	2	Often found in the leaf of Gymnosperms and elsewhere.	0
7130	69534	2	An ovary replum develops along with the ovary and has no suture line in its center, while a true ovary septum (PO:0025262) is derived from the fusion two adjacent ovary walls. Common in Brassicaceae. Annotations for Arabidopsis should go here, and not under ovary septum.	0
7131	69536	2	In angiosperms endosperm is usually triploid and formed after fertilization by the fusion of one gamete with the polar nucleus; sometimes diploid or polyploid.	0
7132	69537	2	The egg (megagamete) is usually larger than the sperm (microgamete). Female gametes may be defined as the non-motile gamete, rather than the larger gamete.	0
7133	69540	2	Occurs in the non-vascular leaves of bryophytes, which grow by division of a single, wedge-shaped apical cell with two cutting faces.	0
7134	69541	2	A fruit replum develops from the ovary replum and has no suture line in its center, while a fruit septum (PO:0025262) develops from an ovary septum via the fusion of two adjacent ovary walls. Common in Brassicaceae. Annotations for Arabidopsis fruit should go here, and not under fruit septum.	0
7135	69543	2	These cells make up the axial system, also known as vertical or longitudinal system.	0
7136	69545	2	Part of the bark.	0
7137	69546	2	This term is to be used for only the apical most portion of a leaf. For a larger area, use the term leaf apex. Use this term when describing the shape of a leaf tip. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7138	69551	2	May also give rise to sterile cells such as elators (in liverworts) or tapetal cells. In most species outside seed plants, multiple archesporial cells are part of an archesporium or sporogenous tissue.	0
7139	69552	2	Gives rise to sporocytes and may give rise to other sterile cells such as elators.	0
7140	69554	2	The adult leaves are placed above the juvenile (oldest) leaves. However in some plants the juvenile leaves may go on to establish as adult leaves. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7141	69557	2	Often the central axis of a root system.	0
7142	69559	2	Has an outer epidermis (exothecium) and an endothecium and may have additional layers.	0
7143	69561	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7144	69562	2	One of two types of short cells in the epidermis of grasses. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025).	0
7145	69567	2	A first order inflorescence axis consists of either a peduncle alone or a peduncle plus its continuation, depending on the form of the inflorescence.	0
7146	69568	2	A leptome is composed of only leptoids. Found in bryophytes, in non-vascular shoot axes such as a gametophore axis or seta, or in the midrib of a non-vascular leaf. Often surrounding a central hydrome. May function in the conduction of organic substances, similar to phloem in vascular plants.	0
7147	69570	2	Occurs in the non-vascular leaves of bryophytes and the vascular leaves of some ferns. Only in plants where leaf growth is apical.	0
7148	69573	2	Has as parts a hypocotyl, a root meristem and a radicle, if any of these are present.	0
7149	69574	2	This term is used to described not yet fully-developed leaves that are part of an embryo.	0
7150	69576	2	Found generally in gymnosperm leaves.	0
7151	69579	2	Primary, not secondary, tissue differentiation occurs in a differentiation zone.	0
7152	69582	2	Generally the below ground portion of a vascular plant.	0
7153	69583	2	Not used in current plant literature.	0
7154	69584	2	In stem or root it is differentiated behind the apical meristem.	0
7155	69587	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043668.	0
7156	69588	2	In potatoes, the interfascicular region extends to the subterranean tuber axillary vegetative buds (eyes).	0
7157	69589	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7158	69597	2	Redundant to sec ...	0
7159	69599	2	The term was made obsolete because rhexigenous form is an attribute of regular aerenchyma.	0
7160	69600	2	This term is to be used for only the apical most portion of a tepal. For a larger area, use the term tepal apex. Use this term when describing the shape of a tepal tip.	0
7161	69604	2	Develops from the apical portion of a gynoecium. Found in Eucalyptus and other Myrtaceae.	0
7162	69606	2	May be photosynthetic or non-photosynthetic. Some species have vascular leaves that are scale-like (such as Juniperus, Thuja, and Chamaecyparis). Annotations for scale-like leaves should go under vascular\\nleaf (PO:0009025), not scale leaf.	0
7163	69608	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7164	69609	2	A gametophore is the leafy part of the gametophyte of mosses and leafy liverworts, excluding the protonema. Develop from buds that form on the protonema. Antheridia and archegonia arise on the gametophore.	0
7165	69610	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7166	69611	2	Can occur on a stem or branch.	0
7167	69616	2	Develops from the ground meristem (eg, meristem L2 and meristem L3).	0
7168	69618	2	The protonema is the first structure that develops in the gametophytic phase of mosses, some other bryophytes, and leptosporangiate ferns. The term protonema is also used to refer to the phase of development in which protonemal tissue is produced (see PO:0030006 protonema phase). In some species of moss, the protonema is perennial. A protonema may develop from sporophytic tissue during apospory.	0
7169	69621	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7170	69622	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7209	69714	2	As the bud grows, the meristem switches from being an axillary meristem to being a shoot apical meristem.	0
7171	69624	2	Organs can be of the same type or different types. Examples include: flower PO:0009046, perianth PO:0009058, inflorescence PO:0009049. See also collective organ part structure, for plant structures composed of parts of multiple organs, but no complete organs.	0
7172	69625	2	Found in angiosperms.	0
7173	69626	2	A valve may develop from an entire carpel (as in Brassicaceae) or from part of a carpel (as in Fabaceae).	0
7174	69630	2	Found in bryophytes at the base of a gemma. Participates in abscission of the gemma.	0
7175	69631	2	Cells in the antheridium jacket layer surround the inner spermatogenous cells and do not give rise to sperm cells.	0
7176	69633	2	A fruit may contain additional plant structures that were part of the flower that mature along with the gynoecium, such as a receptacle. A fruit may develop without fertilization in cases of parthenocarpy, apomixis, or other hormone-induced conditions. Fruits only occur in angiosperms.	0
7177	69635	2	This is sub-cellular term	0
7178	69640	2	Occurs in several embryo types.	0
7179	69642	2	A thorn is a short, pointed (PATO:0002258) woody structure, may be branched.	0
7180	69648	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7181	69651	2	A portion of plant tissue may contain one or several types of cells that are organized in a specific spatial arrangement into a structural unit (which includes a mass of callus) and may include an intercellular matrix. May include other types of isolated cells, such as idioblasts.	0
7182	69652	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043671.	0
7183	69654	2	Uninformative definition	0
7184	69656	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7185	69657	2	Emerges as an outgrowth in the shoot apex (flanking the meristem).	0
7186	69662	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043670.	0
7187	69663	2	The total number of leaflets may be even or odd, in which case the leaf is called even-pinnate or odd-pinnate respectively.	0
7188	69666	2	The term was made obsolete because lamellar form is an attribute of regular collenchyma.	0
7189	69669	2	It is not precisely defined how far toward the base from the tip a sepal apex extends. For the apical most portion of a sepal, use the term sepal tip.	0
7190	69670	2	Functions in the conduction of organic substances in vascular plants.	0
7191	69672	2	Carpel septum was made obsolete because it was ambiguous. It has been replaced by the more precise terms ovary septum (PO:0025262) and ovary replum (PO:0025272). Annotations for Arabidopsis should go to ovary replum (PO:0025272).	0
7192	69673	2	A thallus is a gametophyte of liverworts and pteridophytes and develops from a short-lived protonema. Roughly two dimensional growth results from division of a single apical cell. Thalli may be ribbon or heart shaped or almost filamentous. Although there are no distinct organs, there may be tissue differentiation and dichotomous branching.	0
7193	69676	2	Paraphyllia are much smaller than leaves and may be filamentous, scale-like, or leaf-like. Found in pleurocarpous mosses and a few leafy liverworts.	0
7194	69678	2	Often composed of living and dead parenchyma cells. Protects the root apical meristem.	0
7195	69680	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7196	69681	2	The peduncle later grows up through the psuedostem. Common in Musa species and some other monocots.	0
7197	69684	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043680.	0
7198	69688	2	Can occur in a stem or branch.	0
7199	69690	2	The cell wall is generally removed using polysaccharide-degrading enzymes such as cellulase, pectinase and /or xylanase. The cultured plant cell may be in suspension culture or from callus culture on solid media.	0
7200	69693	2	The parenchyma cells of both the coleorhiza and epiblast may function in storage. Some researchers consider the epiblast and coleorhiza independent structures that differentiate from the same proembryonic tissue.	0
7201	69694	2	See leaf papilla (GO:0090396) for the subcellular component leaf papilla. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7202	69696	2	This term was made obsolete because the definition was not correct. A new term, root elongation zone (PO:0025181), was created instead.	0
7203	69698	2	Hydroids are water and mineral conducting cells found in bryophytes in axes and leaves in the gametophytic phase and in the seta in the sporophytic phase.	0
7204	69699	2	Upon fruit maturation by drying, undergoes cell separation, allowing the valves to detach from the replum and seeds to be dispersed.	0
7205	69706	2	This term was made obsolete, because its definition did not match the new ontology structure as a child of collective phyllome structure. Annotations for this term are now associated with the new term collective leaf structure (PO:0025022).	0
7206	69708	2	May be filled with spores.	0
7207	69712	2	The size of the stomatal pore is variable and controlled by movement of the guard cells in response to environmental cues.	0
7208	69713	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7211	69724	2	The development of the gynoecium in the tassel floret of a normal maize plant is aborted and is present in a rudimentary state.	0
7212	69726	2	This is a phenotype that is a cross-product of PO:0025021 (collective tepal structure) and PATO:0000642 (fused with). In Musa, there are there are 5 fused tepals which form 3 major lobes and 2 minor lobes.	0
7213	69727	2	May be a single or double layer. Usually crushed by the endothecium and therefore almost invariably degenerates early during anther development. In some angiosperms, including <i>Arabidopsis</i>, it develops from an anther wall outer secondary parietal cell layer. In other angiosperms, it develops directly from an anther wall primary parietal cell layer, while in still others, two layers of the middle layer may develop from both an anther wall outer secondary parietal cell layer and an anther wall inner secondary parietal cell layer.	0
7214	69731	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7215	69732	2	Protective in function because the walls are highly impervious to water.	0
7216	69733	2	If a pith is present, it is part of the stele, otherwise the stele only includes the primary vascular tissue and the ground tissue that surrounds it.	0
7217	69736	2	It is not precisely defined how far toward the base from the tip a bract apex extends. For the apical most portion of a bract, use the term bract tip.	0
7218	69737	2	Proposed to be involved in the retrieval of solutes from the xylem sap.	0
7219	69740	2	Found in bryophytes. The calyptra is a membranous or hairy cap or hood composed of gametophytic tissue that protects the embryonic sporophyte within the archegonium. In some species, the calyptra may persist after the sporophyte develops and gets carried upward as the seta elongates.	0
7220	69742	2	An undeveloped androecium or gynoecium may or may not be detectable.	0
7221	69749	2	A seedling mesocotyl is an elongation of and embryonic mesocotyl that is part of a whole plant in the seedling phase.	0
7222	69750	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7223	69751	2	An antheridium has a sterile jacket layer that does not produce sperm cells.	0
7224	69752	2	Also called starchy endosperm region (characteristic of some grasses).	0
7225	69753	2	This constitutes a functional androecium.	0
7226	69754	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043672.	0
7227	69755	2	Examples: stem, leaf, root. May include individual cell types that are not part of tissues (e.g.: idioblasts).	0
7228	69759	2	Usually found in the adaxil/upper part of the leaf mesophyll. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7229	69760	2	Not used in current plant literature. Confusing definition.	0
7230	69761	2	A functional gynoecium.	0
7231	69762	2	Occurs in the sporophytic phase of a plant life cycle.	0
7232	69763	2	This term was originally named apical cell. It was made obsolete to avoid confusion with the new term apical cell (PO:0030007). This term is replaced by embryonic apical cell (PO:0025284).	0
7233	69764	2	May be a single cell adjacent to a brachycyte or part of a portion of tmema tissue.	0
7234	69765	2	Pollen may be released through the stomium.	0
7235	69766	2	Root nodules are a symbiosis between a plant (often, but not exclusively, of the Fabaceae) and bacteria of the genus Rhizobium, Bradyrhizobium, or Azorhizobium.	0
7236	69767	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7237	69768	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7238	69770	2	Gas can be exchanged through the lenticel.	0
7239	69773	2	Found in some bryophytes, especially mosses.	0
7240	69777	2	The lower floret on the ear does not usually develop into a functional one.	0
7241	69780	2	A fleshy outgrowth from another part of a seed is an arilloid. If the ovule is pressed against the funicle to form a raphe, it may appear that the aril is growing from the raphe.	0
7242	69781	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7243	69782	2	Comment: this term is now available in the cellular_component aspect of the Gene Ontology (GO:0048226).	0
7244	69786	2	Part of a whole plant in the seedling phase.	0
7245	69787	2	A pollen sac is a microsporangium in seed plants. In angiosperms, a single, unfused pollen sac may contain an anther locule or several pollen sacs may fuse so they contain a single anther locule.	0
7246	69790	2	Also sieve tube element and the obsolete sieve tube segment. Occurs in the sporophytic phase of a plant life cycle.	0
7247	69793	2	May be covered by a peristome.	0
7248	69797	2	Microgametophytes in bryophytes only produce sperm cells, but do not develop from microspores, because there is no heterospory in bryophytes. In seed plants the male gametophyte is reduced to a pollen grain.	0
7413	70216	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043678.	0
7249	69800	2	Replace_by whole plant in the sporophyte phase (PO:0028003).  Structures that only occur in sporophyte should have participates_in relation to sporophytic phase.	0
7250	69803	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043667.	0
7251	69805	2	Can occur on a stem or branch.	0
7252	69807	2	Possibly a prophyll/bracteole.	0
7253	69808	2	A non-functional or rudimentary gynoecium.	0
7254	69812	2	May occur in an apical meristem or in a developing phyllome. Gives rise to the primary xylem and primary phloem. This term replaces PO:0006074.	0
7255	69813	2	Some plants have only solitary flowers, e.g.<i> Magnolia</i>.	0
7256	69824	2	The synonym gland does not imply non-secretory 'glands'.	0
7257	69827	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7258	69829	2	Found in some monocots.	0
7259	69831	2	This class is the union of unicellular trichome [narrow synonym of trichome cell (PO:0008030)] and multicellular trichome (PO:0025162).	0
7260	69833	2	This term has multiple inheritance because describes an entity at a certain stage in its\\ndevelopment.	0
7261	69834	2	Branched inflorescence with a central axis and about 10-50 lateral branches.	0
7262	69835	2	This term replaces the obsolete term leaf whorl (PO:0008034). If you are looking for annotations for PO:0008034, please use this term instead.	0
7263	69836	2	Found in some grass inflorescences.	0
7264	69837	2	Often bears leaves and buds. It is usually above ground, more or less negatively geotropic, and exogenous in origin.	0
7265	69838	2	Zea cob is different from the cob inflorescence found in Sorghum.	0
7266	69843	2	In bryophytes, particularly in mosses, a sporangium is referred to as a capsule. In seed plants, a sporangium is located in a sporophyll. In pteridophytes, a sporangium is located on the surface of a sporophyll or fertile leaf or borne on a sporangiophore. May be unicellular in some algae.	0
7267	69844	2	Megagametophytes in bryophytes only produce egg cells, but do not develop from megaspores, because there is no heterospory in bryophytes. In some pteridophytes, megagametophytes develop from megaspores. In angiosperms, Gnetum, and Weltwischia, the megagametophyte is greatly reduced. The megagametophyte in angiosperms is an embryo sac.	0
7268	69845	2	Divides to produces leaf initial cells (if leaves are present) and other stem or branch tissues.	0
7269	69846	2	A branch of a unicellular trichome is a GO sub-cellular component.	0
7270	69847	2	This term is perhaps best defined functionally to prop the plant up.	0
7271	69848	2	Includes parenchyma, collenchyma and sclerenchyma cells.	0
7272	69849	2	May be derived from cultured plant callus or plant protoplasts induced from a segment of root. In the case of the plant protoplast, after the re-establishment plant cell walls.	0
7273	69852	2	See stigma papilla (GO:0090397) for the subcellular component stigma papilla.	0
7274	69854	2	'Part' includes both proper parts and the whole plant. CARO:0000003 anatomical structure is defined as: Material anatomical entity that has inherent 3D shape and is generated by coordinated expression of the organism's own genome.	0
7275	69857	2	This term was made obsolete because the definition was changed. It was replaced by PO:0025276.	0
7276	69858	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7277	69859	2	Include moss and liverwort leaves. Occurs in the gametophytic phase of a plant life cycle.	0
7278	69860	2	Found in Poaceae and some other monocots as well as some gymnosperms. Protects the emerging radicle in a plant embryo or seedling. The parenchyma cells of both the coleorhiza and epiblast may function in storage.	0
7279	69861	2	Develops from a primary or secondary parietal cell layer. Innermost part of the anther wall, involved in the nutrition of the pollen.	0
7280	69862	2	This is a phenotype that is a cross-product of PO:0025136 (tepal) and PATO:0001505 (separated from).	0
7281	69870	2	Pollen may be released through the anther pore.	0
7282	69871	2	Often devoid of intercellular spaces.	0
7283	69873	2	The suspensor often allows the embryo to penetrate deep into the endosperm. Across plant species, suspensors are morphologically diverse and may be single- or multicellular, undifferentiated or highly differentiated, and variously shaped.	0
7284	69876	2	Term used for bryophytes and pteridophytes.	0
7285	69877	2	Often contains both hydrome and leptome. Found in bryophytes. The term central strand is sometimes used to describe a protostele in vascular plants, but this ontology class should only be used for non-vascular plants. Analogous to a vein or vascular bundle in vascular plants.	0
7286	69878	2	A structure on the tuber surface that can sprout. In potatoes, axillary vegetative buds (eyes) can determine processing quality. Scale that the breeders use to rate the buds/sprouts of tubers: 1. none, 2. swollen eye, 3. sprout ca. 1/4", 4. sprout ca. 1/2", 5. sprout ca. 1", 6. sprout ca. 2", 7. sprout ca. 3", 8. new top growth, 9. chain tubers.	0
7287	69881	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043675.	0
7288	69884	2	May be alive or dead at maturity.	0
7289	69890	2	Only flattened carpels can have a margin.	0
7290	69891	2	Occurs in mosses and leafy liverworts. Develops from a caulonema cell in mosses.	0
7291	69895	2	Somatic embryos may be formed after the cultured plant callus is treated with plant growth regulators.	0
7292	69907	2	Found in pleurocarpous mosses. Form in the axils of leaf primordia and may disappear when the gametophore is mature.	0
7293	69910	2	The development of the androecium in the ear floret of a normal maize plant is aborted and is present in a rudimentary state.	0
7295	69916	2	A collective organ part structure is composed of parts of multiple organs, but no complete organs. The organ parts are often of the same type (e.g., petioles, carpel walls), but may be of different types. Includes plant structures like a septum that consists of the walls of two fused carpels or a pseudostem that consist of multiple, overlapping leaf sheaths. Unlike a collective plant structure, a collective organ part structure does not contain any complete organs.	0
7296	69917	2	This is the flesh of a tuber. See part_of children for individual components of tuber flesh.	0
7297	69920	2	Xylem pole pericycle cells are cells in the pericycle that are adjacent to the protoxylem pole of a vascular bundle. Pericycle cells that are adjacent to other xylem cells in the vascular bundle are not considered xylem pole pericycle cells. Xylem pole pericycle cells may retain some meristematic activity and are the site of lateral root initiation.	0
7298	69924	2	Replaced by portion of ground tissue (). Uninformative definition. Check it again.	0
7299	69926	2	Megagametophytes in bryophytes only produce egg cells, but do not develop from megaspores, because there is no heterospory in bryophytes. In some pteridophytes, megagametophytes develop from megaspores.	0
7300	69927	2	A prophyll is not classified as a vascular leaf, because it may not have a fully developed vascular system.	0
7301	69930	2	After secondary growth, the periderm may replace the epidermis in stems and roots, rarely in other organs. In some cases, the epidermis is retained after periderm development. Periderm is derived from lateral meristem and may contain secondary phloem.	0
7302	69931	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043676,	0
7303	69933	2	This term was made obsolete because it only applied to angiosperms. Consider new term microgametophyte (PO:0025280) that can apply to all plants. Also consider pollen (PO:0025281) or antheridial microgametophyte (PO:0025283).	0
7304	69937	2	A non-functional or rudimentary gynoecium.	0
7305	69941	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025).	0
7306	69946	2	Found in Poaceae. It is not clear what the lemma, palea and lodicule correspond to in conventional flowers, therefore we are not making any assumptions of homology at the present time.	0
7307	69947	2	Occurs in the sporophytic phase of pteridophytes.	0
7308	69949	2	Carries the male gametes to into or near the ovule. May be branched in gymnosperms. See GO for pollen tube (GO:0090406) or pollen tube tip (GO:0090404).	0
7309	69952	2	See also subterranean tuber axillary bud (PO:0025042).	0
7310	69953	2	It consists of one to many closely-packed flowers and associated glumes etc.	0
7311	69954	2	Found in potatoes and other species.	0
7312	69956	2	Can include substances like latex, xylem sap, phloem sap, resin, mucilage, oil, cuticle, cutin, sporopollenin. CARO:0000004 portion of organism substance is defined as: Material anatomical entity in a gaseous, liquid, semisolid or solid state; produced by anatomical structures or derived from inhaled and ingested substances that have been modified by anatomical structures as they pass through the body. For plants, the word "body" refers to a whole plant or part thereof.	0
7313	69961	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7314	69964	2	In seed plants, the megaspores and megagametophyte are retained within the nucellus.	0
7315	69966	2	Often interrupted by stomata and other structures. The shoot epidermis is different from the root epidermis in its origin, function and structure.	0
7316	69967	2	May appear as a distinct mantle like zone. Often found in monocotyledons.	0
7317	69969	2	Phloem islands can be formed in the middle of the xylem.	0
7318	69971	2	Directly involved in the weakening process of abscission.	0
7319	69973	2	Can occur in a stem or branch.	0
7320	69974	2	Responsible for transferring nutrients to an embryo by symplastic or apoplastic methods.	0
7321	69975	2	A non-functional or rudimentary gynoecium.	0
7322	69976	2	Found in Marchantiales.	0
7323	69978	2	Found in bryophytes and pteridophytes growing from the epidermis of a gametophore or the lower surface of a thallus and in some monocots growing from the stem at the cotyledonary node. May be considered a type of trichome.	0
7324	69980	2	This term has multiple inheritance because describes an entity at a certain stage in its\\ndevelopment. While the development of this stylar ridge is very similar to that of the upper florets, the development does not proceed beyond the early ridge stage.	0
7325	69985	2	Part of a whole plant in the seedling phase.	0
7326	69986	2	The burs or bristles in Cenchrus and Pennisetum are not involucres because the fused structures are branches and not bracts.	0
7327	69988	2	Found in species with syncarpous gynoecia (fused carpels). An ovary septum is derived from the fused walls of two adjacent carpels, while a replum (PO:0005016) develops from early contact of placental tissue from opposite sides of the ovary. Annotations for Arabidopsis should go under replum, not under ovary septum.	0
7328	69989	2	Common in Citrus.	0
7329	69990	2	Branches arise from axillary meristems in vascular plants and from divisions of the shoot apical meristem in non-vascular plants.	0
7330	69996	2	Occurs in pteridophytes and the sporophyte of bryophytes.	0
7331	69997	2	Found in an embryo or a seedling. May develop into the root system of an adult plant. Sometimes abortive.	0
7332	70008	2	In Arabidopsis, refers to the leaves that are borne on the elongated inflorescence branches.	0
7333	70011	2	This term was made obsolete and replaced by guard cell (PO:0000293) which can be post-composed with individual floral organs, such as petal or sepal.	0
7334	70012	2	A non-functional or rudimentary gynoecium.	0
7335	70013	2	In Physcomitrella patens, a gametophore bud initial typically is\\nmore bulbous than a protonema side branch initial, and its plane of first\\ncell division is oblique, rather than perpendicular, to the plane of growth.	0
7336	70018	2	Gynoecium (sensu Zea) was merged with Poaceae gynoecium, because the Zea gynoecium is not structurally distinct from the Poaceae gynoecium. Hierarchy for gynoecium now matches floret and spikelet.	0
7337	70022	2	Generally, the development of caulonema follows the development\\nof chloronema. Only the caulonema, and not the chloronema, initiates gametophore buds.	0
7338	70030	2	Similar to a stomatal pore, but lacks the ability to open and close. Involved in the release water or xylem sap through guttation or secretion.	0
7339	70034	2	This term was made obsolete and replaced by the stomatal complexes of individual floral organs, such as petal stomatal complex or sepal stomatal complex.	0
7340	70036	2	This term has multiple inheritance because describes an entity at a certain stage in its\\ndevelopment.	0
7341	70039	2	A branch of the leafy part of a bryophyte shoot system.	0
7342	70040	2	This term was made obsolete because it is a subcellular component. See GO for the term pollen tube tip (GO:0090404). Since a pollen tube tip is part_of a pollen tube, which is part of a pollen cell, annotations for pollen tube tip may also go to the more general term pollen tube cell (PO:0025195).	0
7343	70041	2	This term has multiple inheritance because describes an entity at a certain stage in its\\ndevelopment.	0
7344	70042	2	The development of the androecium in the ear floret of a normal maize plant is aborted and is present in a rudimentary state.	0
7345	70044	2	Found in bryophytes. Often contains both hydrome and leptome. Functions in support and conduction in a phyllid. The term costa is sometimes used for the midrib of monocot leaves, but this ontology class should only be used for non-vascular leaves.	0
7346	70048	2	Found in mosses. May remain partly attached to the rest of the capsule.	0
7347	70049	2	Early in development, the neck is occluded by a single row of neck canal cells. At maturity, the neck canal cells disintegrate, creating a canal for the sperm to enter the archegonium.	0
7348	70050	2	May be alive or dead at maturity.	0
7349	70055	2	This term was made obsolete because it is not appropriate for non-seed plants.	0
7350	70058	2	A similar term L2 meristem (PO:0009021) occurs.	0
7351	70060	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7352	70061	2	Found in heterosporous ferns and seed plants. May also give rise to sterile cells. In seed plants, a male archesporial cell undergoes periclinal division, giving rise to an inner primary sporogenous cell layer and an outer primary parietal cell.	0
7353	70069	2	The ultimate branch in an infructescence.	0
7354	70070	2	Developmentally different from periderm cork cell (i.e., phellem), produced by cork cambium. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025).	0
7355	70072	2	Occurs in some ferns in their sporophytic phase.	0
7356	70073	2	Found in mosses. A brachycyte is a drought tolerant cell that can act as a gemma and may give rise to a new plant. Cells of a protonema may develop into brachycytes under stress. May form a chain or be separated by tmema cells.	0
7357	70074	2	Generally triangular. Peristome teeth may be simple or compound, and may be attached by their tips to the epiphragm.	0
7358	70075	2	Often bears leaves and branches. In vascular plants, has at least one node and one internode.	0
7359	70076	2	Usually only one of the four megaspores develops and the other three die.	0
7360	70080	2	Found in monocots and mosses. The basal stalk may contain one or more cells.	0
7361	70081	2	Includes isolated and maintained mature or immature zygotic embryos, somatic embryos or haploid embryos (derived from male gametophyte).	0
7362	70082	2	A gynophore is only present when there is an elongation of the axis between the androecium and gynoecium.	0
7363	70083	2	In many angiosperms, the cells of the anther wall primary parietal cell layer undergo a periclinal division, resulting in the formation of two anther wall secondary parietal layers.	0
7364	70092	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7365	70093	2	Most commonly arising from the funicle, also developing from placenta, integument, etc.	0
7366	70094	2	It may or may not arise from independent initials. B Some researchers also call it an epidermis in meristematic state.	0
7367	70098	2	This term was made obsolete because it was ambiguous. It has been replaced by the more precise terms fruit septum (PO:0025268) and fruit replum (PO:0025267). Annotations for Arabidopsis should go to fruit replum.	0
7368	70099	2	Usually found in the abaxial/lower part of the leaf mesophyll as in a dorsiventral leaf, but between two palisade parenchyma layers in an isobilateral leaf. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7369	70104	2	Found in Marchantiales.	0
7370	70106	2	The term has been made obsolete because this concept is used in a very loose sense.	0
7371	70114	2	Can occur in a stem or branch.	0
7372	70115	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7373	70117	2	Arabidopsis, vegetative development is characterized by the production of the rosette leaves.	0
7374	70121	2	This term has multiple inheritance because describes an entity at a certain stage in its\\ndevelopment. Continued overgrowth of the shoot apex (which becomes the ovule primordium) by the ring of gynoecial tissue leads to the formation of the stylar canal, which is detected as a slight protuberance on the mature ovary.	0
7376	70125	2	Petiole margins may be found in flattened (laminar) petioles, but may also occur in laminar extensions of petioles that are rounded or c-shaped in cross section. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7377	70126	2	See node.	0
7378	70129	2	Found in grasses where no hypocotyl is present. The scutellar node may represent a reduction of the hypocotyl and cotyledonary node.	0
7379	70131	2	Annotations for Arabidopsis should go under fruit replum (PO:0025267), not under fruit septum. The partition between two sections of an orange is a fruit septum.	0
7380	70136	2	If found, this zone is a temporary feature mostly in Gymnosperms.	0
7381	70137	2	Forms after the archegonium neck canal cells disintegrate.	0
7382	70139	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7383	70143	2	Often glandular. Often involved in movement of a plant structure in response to touch, gravity or light. In panicoid grasses a swollen region in the stem above the intercalary meristem. Such a definition would also include stems of Chloranthaceae, Acanthaceae, Carpels, Amaranthaceae, etc. [source: APWeb:Glossary].	0
7384	70145	2	The term was made obsolete because the lacunar form is an attribute of regular collenchyma.	0
7385	70146	2	This terms was made obsolete because it is a sub-cellular compartment. Plant cell papilla (GO:0090395), leaf papilla (GO:0090396), and stigma papilla (GO:0090397) have been added to GO. To annotate to a cell that has a papilla, consider papilla cell (PO:0025166), leaf papilla cell (PO:0025167), or stigma papilla cell (PO:0025168).	0
7386	70147	2	Forms a sheath around the vascular system. It may have secondary walls later, part_of cortex.	0
7387	70148	2	It is not precisely defined how far toward the base from the tip a phyllome apex extends. For the apical most portion of a phyllome, use the term phyllome tip.	0
7388	70151	2	Redundant sec phloem and xylem	0
7389	70156	2	Examples include seed PO:0009010 and embryo PO:0009009.	0
7390	70157	2	The development of the androecium in the ear floret of a normal maize plant is aborted and is present in a rudimentary state.	0
7391	70159	2	A similar term L1 meristem (PO:0009020) occurs.	0
7392	70164	2	It is not precisely defined how far toward the base from the tip a leaf apex extends. For the apical most portion of a leaf, use the term leaf tip. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7393	70166	2	Commonly thought of as one of the three basic parts of the seed plant body. A plant stucture that is usually underground and does not bear leaves and only rarely shoots, is usually more or less positively geotropic, is endogenous in origin, indeterminate in growth and often with secondary thickening.	0
7394	70172	2	May be a modified cotyledon.	0
7395	70175	2	In the leaf epidermis of Poaceae and Joinvilleaceae, long cells and short cells often alternate in longitudinal rows. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7396	70176	2	This term was made obsolete because the parentage and definition changed slightly. It is replaced by PO:0025275.	0
7397	70182	2	Part of a whole plant in the seedling phase. This term should only be used for seed plants.	0
7398	70184	2	May have sinuous anticlinal cell walls that overall give a jigsaw like appearance to the epidermis. Pavement cells are epidermal cells that are not directly associated with a stomatal complex or trichome at maturity, but they share similar developmental origins.	0
7399	70185	2	Found in Marchantiales.	0
7400	70194	2	The term was made obsolete because schizo-lysigenous form is an attribute of regular aerenchyma.	0
7401	70195	2	The skin of young potatoes is epidermis while the skin of mature potatoes is periderm.	0
7402	70196	2	This term was made obsolete because it only applied to angiosperms. Consider new term megagametophyte (PO:0025280) that can apply to all plants. Also consider embryo sac (PO:0025074) or archegonial megagametophyte (PO:0025282).	0
7403	70197	2	The root elongation zone is only a few millimeters in length and is the only portion of the root in which cell elongation generally occurs. Root hairs are not yet produced in this region. Primary root tissues begin to differentiate in the root elongation zone. This term replaces elongation zone (PO:0020125).	0
7404	70201	2	Can vary in size and complexity. May contain a secretory gland.	0
7405	70203	2	Includes roots and shoots.	0
7406	70205	2	The term was made obsolete because lysigenous form is an attribute of regular aerenchyma.	0
7407	70206	2	Term used for bryophytes. In liverworts an early sporangium endothecium produces sporogenous tissue. In Sphagnum, Andreaea, and hornworts, it produces columella and sporogenous tissue.	0
7408	70207	2	Occurs in the non-vascular shoot system of the gametophyte of mosses and leafy liverworts.	0
7409	70208	2	Found in Poaceae. The coleoptile is the first phyllome formed from the embryonic shoot apical meristem. Protects the emerging shoot system as it grows through the soil.	0
7410	70209	2	Microgametophytes in bryophytes only produce sperm cells, but do not develop from microspores, because there is no heterospory in bryophytes. In some pteridophytes, microgametophytes develop from microspores.	0
7411	70211	2	Produces an embryo sac egg cell.	0
7412	70215	2	The bracteoles are borne on the pedicel, which terminates in a flower. A pedicel is the ultimate branch in an inflorescence.	0
7583	70621	2	Closure of the carpel can occur in various ways, by fusion or secretion.	0
7414	70220	2	When an antheridium occurs on a specialized lateral branch of the gametophore, all of the phyllomes on that branch are usually perigonial bracts. If an antheridium occurs on a main axis of the gametophore, usually only the terminal phyllomes are perigonial bracts.	0
7415	70222	2	May have multiple layers such as exothecium, endothecium and tapetum. Early in development, the sporangium wall bounds the archesporium. Later, after spores develop from the archesporium, it bounds the spore or spores.	0
7416	70223	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7417	70226	2	It is not precisely defined how far toward the base from the tip a tepal apex extends. For the apical most portion of a tepal, use the term tepal tip.	0
7418	70227	2	It is not precisely defined how far toward the base from the tip a petal apex extends. For the apical most portion of a petal, use the term petal tip.	0
7419	70230	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7420	70233	2	Often contains deposit of minerals or products of secondary metabolism. May have a specialized function.	0
7421	70235	2	Includes the pericycle as the outermost layer of the stele.	0
7422	70244	2	Found in heterosporous ferns and seed plants. May also give rise to sterile cells. In the majority of flowering plants, including Arabidopsis, the female archesporial cell elongates and polarizes longitudinally, and directly differentiates into the megasporocyte or megaspore mother cell. In some flowering plants, it undergoes a periclinal division, and subsequently the inner cell differentiates into the megasporocyte.	0
7423	70246	2	This term has multiple inheritance because describes an entity at a certain stage in its\\ndevelopment.	0
7424	70247	2	Can occur in a stem or branch.	0
7425	70249	2	Can occur in a stem or branch.	0
7426	70250	2	May be cylindrical (PATO:0001203) in shape, with a circular, D-shaped or other irregularly-shaped cross-section.	0
7427	70253	2	Functional term	0
7428	70254	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7429	70255	2	Only flattened stamens can have a margin.	0
7430	70256	2	Raises the antheridium above the rest of the gametophyte.	0
7431	70257	2	Part of the epidermis of a thallus or gametophore of a bryophyte or pteridophyte in the gametophytic phase or the stem of a monocot in the sporophytic phase.	0
7432	70258	2	Part of a whole plant in the seedling phase.	0
7433	70259	2	If carpels are fused, the gynoecium is a syncarpous gynoecium, as in Poaceae, Brassicaceae and Solanaceae. B If carpels are free, the gynoecium is an apocarpous gynoecium, as in Fabaceae.	0
7434	70262	2	Hydathodes may have one or more pores that are similar to stomata but lack the ability to open and close. Hydathodes are involved in the release of water or xylem sap through pores via guttation or secretion. Generally, hydathodes are located at the end of a minor vein in a phyllome. In many plants, hydathodes includes a portion of thin-walled parenchyma between the tracheary elements and the pore, known as an epithem. In some plants, hydathodes are associated with secretory tissue.	0
7435	70263	2	They cause the opening and closing of the pore by changes in turgor.	0
7436	70267	2	Comment: this term is now available in the cellular_component aspect of the Gene Ontology (GO:0043078).	0
7437	70268	2	Phloem pole pericycle cells are cells in the pericycle that are adjacent to the protophloem pole of a vascular bundle. Pericycle cells that are adjacent to other phloem cells in the vascular bundle are not considered phloem pole pericycle cells. Phloem pole pericycle cells are distinct from xylem pole pericycle cells in that they display cytoplasmic characteristics of a more differentiated status.	0
7438	70271	2	May be unicellular or multicellular. Serves to anchor the plant to the substrate, and may function in nutrient and water uptake. Usually lacks chlorophyll. Includes epidermal rhizoids that grow from the epidermis of bryophytes and pteridophytes in the gametophytic phase or from the stems of some monocots, protonemal rhizoids that branch from a protonema, and rhizoids that develop from a basal cell of a gametophore bud.	0
7439	70272	2	Involved in transferring nutrients to an embryo.	0
7440	70274	2	Generally contains at least one ovule. An ovary locule may be part of a single carpel, in the case of unicarpellate flowers. An ovary that is part of a syncarpous gynoecium may have multiple locules, or the anatomical spaces of multiple carpels may be fused to form a single locule.	0
7441	70276	2	A seedling coleoptile is an elongation of an embryonic coleoptile and is part of a whole plant in the seedling phase.	0
7442	70277	2	A septum is formed by the fusion of the walls of two adjacent organs (ovary walls or anther walls), for example, the partition between two sections of an orange, seen in cross-section.	0
7443	70278	2	Term used for bryophytes and pteridophytes. The sporangium base is the sterile part of the sporangium below the sporangium theca. If swollen and distinct from the rest of the sporangium, it is called an apophysis or hypophysis.	0
7444	70279	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7445	70280	2	Oil glands are schizogenous.	0
7446	70285	2	Term is specific for parasitic plants only.	0
7447	70288	2	Generally causes root thickening. Not to be confused with lateral root meristem, which is the meristem of the lateral root.	0
7448	70289	2	Functional characterization is not part of the criteria.	0
7449	70290	2	This constitutes a functional androecium.	0
7450	70293	2	May be fused to two tepals (one on either side). This is a phenotype that is a cross-product of PO:0025136 (tepal) and PATO:0000642 (fused with).	0
7451	70298	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7452	70299	2	Used to refer to an adaxial epidermis of an entire leaf. More specific terms exist for leaf lamina adaxial epidermis and petiole adaxial epidermis. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7453	70300	2	A layer or layers of cells beneath the epidermis that is distinct in appearance from adjacent tissues.	0
7454	70302	2	In the leaf epidermis of Poaceae and Joinvilleaceae, long cells and short cells often alternate in longitudinal rows. If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7455	70304	2	The genetic distinction between cauline axillary branches and tillers may or may not be unique to the Poaceae. There are no data for other plant families.	0
7456	70307	2	The embryo proper is the entire embryo exclusive of the suspensor.	0
7457	70308	2	This term is used to refer to potato tuber flesh. See part_of children for individual components of subterranean tuber flesh.	0
7458	70309	2	Because a vascular system is defined as the totality of the portions of vascular tissue in a plant structure, the vascular systems of floral parts are part of the flower vascular system.	0
7459	70315	2	This a sub-inflorescence that arises from the main inflorescence axis.	0
7460	70319	2	Parenchyma contains relatively unspecialized cells.	0
7461	70320	2	Primary, not secondary, tissue differentiation occurs in a differentiation zone.	0
7462	70321	2	This term is to be used for only the apical most portion of a sepal. For a larger area, use the term sepal apex. Use this term when describing the shape of a sepal tip.	0
7463	70322	2	Occurs in vascular leaves of some ferns in their sporophytic phase.	0
7464	70324	2	This floret does not usually develop into a functional one.	0
7465	70326	2	See plant cell papilla (GO:0090395) for the subcellular component papilla.	0
7466	70329	2	Usually different from leaves. Often used to refer to a floral bract, but includes other kinds of bracts.	0
7467	70333	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7468	70334	2	May have secondary thickening of walls of cells that are involved in anther dehiscence. There can be more than one layer in an anther endothecium.	0
7469	70335	2	See also stipule spine (PO:0025174).	0
7470	70336	2	If a root cap is present, the quiescent center is behind the root cap.	0
7471	70338	2	In stem or root it is differentiated behind the apical meristem.	0
7472	70339	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7473	70343	2	Applies to cells that are living or dead at maturity (e.g., fiber cell or tracheid) and includes any external encapsulating structures (if present) such as the plasma membrane and the plant-type cell wall. Definition of cell GO:0005623: "The basic structural and functional unit of all organisms. Includes the plasma membrane and any external encapsulating structures such as the cell wall and cell envelope". GO:0009505.  Definition of plant-type cell wall (GO:0009505): A more or less rigid structure lying outside the cell membrane of a cell and composed of cellulose and pectin and other organic and inorganic substances, synonym; exact: cellulose and pectin-containing cell wall.	0
7474	70344	2	Initial cells are often part of a portion of tissue that is composed mostly of somewhat older, differentiating cells. The division of an initial cell is often uneven, with the smaller daughter cell remaining meristematic.	0
7475	70345	2	Part of a whole plant in the seedling phase.	0
7476	70348	2	This term is redundant with epidermis and will be obsoleted.\\nMove annotations to epidermis.	0
7477	70358	2	This term is now available in the cellular_component aspect of the Gene Ontology, GO:0043669.	0
7478	70363	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf. The first juvenile leaves in Poaceae are e.g. the embryonic leaves found in the grass kernel (caryopsis).	0
7479	70364	2	Present in some moss species of the family Polytrichaceae.	0
7480	70365	2	The term perimedullary zone is only used when the outer layer of the pith is distinct from the inner layer.	0
7481	70366	2	This is different from root lateral meristem.	0
7482	70368	2	The epidermis can be composed of one or more layers of cells. In some\\nspecies of vascular plants, the epidermis, which is a primary tissue, is\\nreplaced by periderm, which is secondary tissue, later in development. The\\nepidermis can also include trichomes, stomatal pores, root hairs, and\\nrhizoids.	0
7483	70369	2	A caulonema cell contains fewer, less well-developed chloroplasts than a chloronema cell.	0
7528	70467	2	Repetitive periclinal divisions and radial enlargement of cells form the cortex layers, the innermost layers become the endodermis with the differentiation of casparian strips.	0
7529	70472	2	Crown root stages are based on rice plant. This  term has been obsoleted to keep the structure simple.	0
7484	70371	2	When an archegonium occurs on a specialized lateral branch of the gametophore, all of the phyllomes on that branch are usually perichaetal bracts. If an archegonium occurs on a main axis of the gametophore, only the terminal phyllomes are usually perichaetal bracts. The two or three terminal-most perichaetal bracts may fuse to form a gametophytic perianth.	0
7485	70373	2	In Physcomitrella patens, non-vascular leaf initials arise from the daughter cells of a gametophore axis apical cell. Subsequent division of a non-vascular leaf initial establishes a non-vascular leaf apical cell.	0
7486	70374	2	If you are annotating to this term, please add an additional annotation to vascular leaf (PO:0009025) or non-vascular leaf (PO:0025075), depending on the species. All annotations for angiosperms, gymnosperms, and pteridophytes should go to vascular leaf and all annotations for bryophytes should go to non-vascular leaf.	0
7487	70376	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7488	70378	2	The first identifiable region in the differentiating vascular cylinder is the pericycle. In the xylem the differentiation of the tracheary elements begins in a centrifugal direction but is completed in the centripetal direction. The first phloem elements mature before the first xylem elements.	0
7489	70380	2	In monocots each leaf stage is defined according to the uppermost leaf whose collar is visible (Handbook of plant and crop physiology).	0
7490	70384	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7491	70388	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7492	70393	2	In taxa with mature two-celled pollen, the second mitotic division takes place after pollen germination, in germinating pollen tube.	0
7493	70394	2	This  term has been obsoleted to keep the structure simple.	0
7494	70398	2	In grasses, the plant has one leaf plus the coleoptile. The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7495	70399	2	This stage is recommended over rosette growth or stem elongation as it is most easily observed and least ambiguous.	0
7496	70402	2	Crown root stages are based on rice plant.	0
7497	70405	2	At present the stages are described for primary, lateral and crown roots and stages for adventitious root formed by wounding or hormone treatment is not described. Finer resolution of root stages has been kept in the obsolete node as they are not consistently used in the consulted literature. These terms will be reintroduced into the ontology when there is a specific user request.	0
7498	70409	2	There is no one-to-one correspondence between growth stages of inflorescences formation in members of Poaceae with that of other families.	0
7499	70410	2	We have chosen to use fruit size as a marker of these physiological processes to represent the whole plant growth stage.	0
7500	70411	2	The protonema phase follows spore germination and precedes the development of gametophores in mosses, some other bryophytes, and leptosporangiate ferns.	0
7501	70413	2	Root hairs come to full development beyond the region of elongation zone, approximately at the level where the xylem begins to mature.	0
7502	70414	2	These first flowers are not necessarily the oldest flowers in the inflorescence. In some cereal plants the flowering starts in the middle of the inflorescence. This stage refers to the whole plant.	0
7503	70415	2	Only the first true foliage leaf or pair of leaves are visible. Occurs in plants with hypogeal germination.	0
7504	70420	2	Not all embryos form true leaves during the embryonic development; this occurs post-embryonically in some taxa.	0
7505	70422	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7506	70426	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7507	70427	2	In rice the flag leaf sheath is 5-10cm out of the penultimate leaf sheath.	0
7508	70428	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7509	70429	2	Characteristic differences in meristem organization have been related to taxonomic groups. Terms for developmental zones formation are available in the obsolete node, and they will be reintroduced in the ontology when there is a specific user request for them.	0
7510	70431	2	Two lodicules form on the side of the lemma in rice spikelet.	0
7511	70432	2	The axillary shoot can be a single shoot or a pair of axillary shoots at each node.	0
7512	70434	2	The axillary shoot can be a single shoot or a pair of axillary shoots at each node.	0
7513	70436	2	Although the use of stages like dough or particular ripening stages properly refer to the development of an individual fruit, they are commonly used as here to extrapolate to a growth of a whole plant or a group of plants.	0
7514	70437	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7515	70443	2	The lemma primordium forms in 1/2 alternate phylotaxy in rice spikelet.	0
7516	70446	2	Crown root primordia formed endogenously opposite the collateral bundles in maize.	0
7517	70448	2	This stage refers to the whole plant.	0
7518	70449	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7519	70451	2	In some plants more than one megaspore contributes to the megametophyte.	0
7520	70454	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7521	70455	2	The axillary shoot can be a single shoot or a pair of axillary shoots at each node.	0
7522	70456	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7523	70457	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7524	70458	2	This  term has been obsoleted to keep the structure simple.	0
7525	70460	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7526	70463	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7527	70464	2	In the taxa with hypogeal type germination the first leaf on the epicotyl is leaf 1, and in grasses, the coleoptile is leaf 1.  The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7530	70478	2	Some plants do not form an eight nucleate megametophyte.	0
7635	73045	2	TODO: obsolete? I don't know what this means.	0
7531	70480	2	The axillary shoot can be a single shoot or a pair of axillary shoots at each node.	0
7532	70483	2	The number and origin of root cap initials that form the root cap varies among species. The root cap initials become independent from the more internally located root meristem cells by an increase in the thickness of the cell wall that separates them.	0
7533	70488	2	Microspores within single locule are at unicellular stage.	0
7534	70494	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7535	70504	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7536	70506	2	The axillary shoot can be a single shoot or a pair of axillary shoots at each node.	0
7537	70509	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7538	70510	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7539	70512	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7540	70518	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7541	70521	2	During the sporophytic phase, a plant may produce meiospores by meiosis. A whole plant in the sporophytic phase usually has twice the chromosome complement of a plant in the gametophytic phase, but may not in the case of apogamy. Examples of apogamy both naturally occurring instances (such sporophytes arising form haploid cells as in bryophytes or ferns) as well as in vitro instances (such haploid embryo\\nculture or in vitro fusion of non-gamete cells or protoplasts).	0
7542	70525	2	Occurs in plants with epigeal germination.	0
7543	70527	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7544	70528	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7545	70530	2	In some taxa, this occurs some time after the ripe fruit stage and after the dispersal of the seed.	0
7546	70533	2	Many stages like leaf production PO:0007112, axillary shoot formation PO:0007073, inflorescence PO:0007047 often overlap with this stage	0
7547	70535	2	This cannot be used in plants with hypogeal germination.	0
7548	70536	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7549	70537	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7550	70540	2	Cells in the primordium are not yet differentiated.	0
7551	70541	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7552	70545	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7553	70546	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7554	70551	2	This  term has been obsoleted to keep the structure simple.	0
7555	70552	2	Although the use of stages like milk or particular fruit sizes properly refer to the development of an individual fruit, they are commonly used as here to extrapolate to a growth of a whole plant or a group of plants.	0
7556	70553	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7557	70554	2	Mature pollen stages is reached at three-celled pollen in some angiosperms (maize, rice and Arabidopsis), while in others, the maturepollen has two haploid cells (tobacco, snapdragon).	0
7558	70560	2	This stage refers to the whole plant.	0
7559	70561	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7560	70564	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7561	70566	2	Although megaspore and megagametophyte development are normally separate, one spore producing one gametophyte, in some flowering plants a single gametophyte may be produced from two or four spores.	0
7562	70567	2	The axillary shoot can be a single shoot or a pair of axillary shoots at each node.	0
7563	70570	2	The axillary shoot can be a single shoot or a pair of axillary shoots at each node.	0
7564	70572	2	This stage refers to the whole plant.	0
7565	70573	2	Starch grains can be seen in the root cap after emergence.	0
7566	70574	2	In some plant species this stage is subdivided into distal and proximal elongating zones.	0
7567	70575	2	Awns will be visible only in those species and varieties where they are known to be present.	0
7568	70577	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7569	70579	2	These stages are based on Arabidopsis plant. This  term has been obsoleted to keep the structure simple.	0
7570	70581	2	In rice the flag leaf sheath is 5cm out of the penultimate leaf sheath. Upper part of the stem is slightly thickened.	0
7571	70585	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7572	70589	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7573	70594	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7574	70595	2	The axillary shoot can be a single shoot or a pair of axillary shoots at each node.	0
7575	70597	2	Endogenously formed embryonic roots are exclusive to Poaceae.\\nThis  term has been obsoleted to keep the structure simple.	0
7576	70599	2	During the gametophytic phase, a plant may produce gametes by mitosis. In bryophytes and pteridophytes, a gametophytic phase may begin without meiosis by apospory. This usually occurs when damage to a plant in the sporophytic phase leads directly to the growth of a plant that is in the gametophytic phase but bears the chromosome complement that would normally be found in the sporophytic phase. A whole plant in the gametophytic phase usually has half the chromosome complement of a plant in the sporophytic phase, but not in the case of apospory.	0
7577	70605	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7578	70606	2	This stage refers to the whole plant.	0
7579	70613	2	The palea primordium forms in 1/2 alternate phylotaxy in rice spikelet.	0
7580	70615	2	This  term has been obsoleted to keep the structure simple.	0
7581	70619	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7582	70620	2	This stage refers to the whole plant.	0
7584	70626	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7585	70627	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7586	70628	2	This  term has been obsoleted to keep the structure simple.	0
7587	70630	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7588	70632	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7589	70633	2	This  term has been obsoleted to keep the structure simple.	0
7590	70634	2	Crown root stages are based on rice plant. This  term has been obsoleted to keep the structure simple.	0
7591	70635	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7592	70636	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7593	70642	2	The life cycle of all plants is characterized by the alternation of phases (or generations). The sporophytic phase has twice the chromosome complement of the gametophytic phase.	0
7594	70644	2	The leaves can be a single leaf, two, or whorls of leaves at each node.	0
7595	70646	2	In rice the flag leaf sheath is more than 10cm out of the penultimate leaf sheath.	0
7596	70652	2	A measure of vegetative growth, but leaf production is to be preferred.	0
7607	72075	2	This term will be obsoleted; Use GO:growth and PATO:rate.	0
7608	72076	2	GO has now relevant relation terms which should be used instead.	0
7609	72078	2	TODO: consider merging with angular placement.	0
7610	72137	2	Gradually enlarged at the base, like the head of an arrow.	0
7611	72174	2	For example loss of myelin sheath from a normally myelinated axon or dendrite.	0
7612	72207	2	This refers to the disposition of the bearer.	0
7613	72264	2	For example, a tubular organ or part.	0
7614	72323	2	Cystic is an abnormal condition.	0
7615	72348	2	TODO: the definition is incorrect. See absent.	0
7616	72375	2	Having the shape of heart.	0
7617	72391	2	This term is for curator easiness - denote vertical length - we might consider obsoleting this but we have to consider how curators are going to represent them if we do.	0
7618	72438	2	This term was made obsolete because it is not a quality. To update annotations, consider the following term 'quality of a liquid; PATO:0001548 '	0
7619	72468	2	The reciprocal of density.	0
7620	72484	2	Example: [E=organism Q=lacks_all_parts_of_type E2=Wing] - applies to an organism. A relational quality in which the bearer entity has no parts of the specified type. The bearer of this quality has_part = 0 of the indicated entity type, where a comparable organism usually has at least 1 part of the same type. Note that the bearer of the quality is the whole, not the part. Formally: If a bearer entity e lacks all parts of type X at time t, then there exists no instances x of X at t such that x part_of e that has no wings, where wings are normally present in that organism type. In OWL this is equivalent to a restriction on the OBO_REL:has_part relation with cardinality=0, i.e has_part 0 E2.	0
7621	72543	2	Terms were requested by the OBI consortium but it was later decided that the term was not reflecting a quality rather what it might be refered to as a "conferred quality".	0
7622	72599	2	In polydactyly, the bearer of the quality is the hand, and the entity type being counted is 'finger'. In EQ syntax, E=hand, Q=<this> E2=finger.	0
7623	72617	2	For example a mixture of females and male or males and hermaphrodites.	0
7624	72632	2	Use GO:0007631 \\! feeding behavior plus PATO instead.	0
7625	72767	2	Capacitance is also a measure of the amount of electrical energy stored (or separated) for a given electric potential.	0
7626	72774	2	TODO: define this or obsolete it and move children somewhere else.	0
7627	72787	2	This term will be obsoleted; Use GO:growth and PATO:rate.	0
7628	72812	2	This term and children should probably be obsoleted.	0
7629	72830	2	GO has now relevant relation terms which should be used instead.	0
7630	72842	2	Term should be obsoleted and the GO term cellular motility should be used instead.	0
7631	72906	2	TODO: decide on correct parentage.	0
7632	72915	2	This term was made obsolete because it is not a quality. To update annotations, consider the following term 'quality of a solid; 'PATO:0001546'	0
7633	72954	2	See comments of relational quality of a physical entity.	0
7634	72979	2	Examples: height to weight; brain size to body size. These could all be children of proportionality. Proportions can be measured as ratios. Some measures may be dimensionless. Not all ratios measure proportionality, eg m/s measures velocity which is not a proportion in the sense defined above, it is a quality in its own right.	0
7636	73055	2	The definition is general enough to cover adhesion arising from different kinds of chemical bonding/forces, although for PATO this term will most commonly used for cellular adhesion. See also GO:0031589 "cell-substrate adhesion".	0
7637	73071	2	Cartilage is a type of dense connective tissue. It is composed of specialized cells called chondrocytes (CL:0000138) that produce a large amount of extracellular matrix composed of collagen fibers, abundant ground substance rich in proteoglycan, and elastin fibers.	0
7638	73076	2	For example calcium composition (which may inhere in bone), haemoglobin composition (which may inhere in blood).	0
7639	73088	2	May be part of an animal (such as an organ or bone) that is no longer used by the species and has therefore become smaller or less developed.	0
7640	73119	2	This quality either inheres directly in the surface, or in the entity that has the surface. For example, to say that a particular fly wing is curved is shorthand for saying the wing has a surface which is curved.	0
7641	73162	2	Adapted from Wikipedia and the birnlex term that is dbxref'd. Added on behalf of OBI at March 2010 workshop.	0
7642	73163	2	Terms were requested by the OBI consortium but it was later decided that the term was not reflecting a quality rather what it might be refered to as a "conferred quality".	0
7643	73180	2	Use GO:0007631 \\! feeding behavior plus PATO instead.	0
7644	73200	2	Consider PATO:0001925 \\! surface feature share	0
7645	73227	2	This term was originally named "presence". It has been renamed to reduce ambiguity. Consider annotating with the reciprocal relation,PATO:0001555, has_number_of. For example, rather than E=fin ray Q=count in organism C=10, say E=organism Q=has number of E2= fin ray C=10.	0
7646	73234	2	Unipotent cells have the quality of self-renewal which distinguishes them from non-stem cells.	0
7647	73250	2	The exact number may be one or two different from the 2n number and still be classified as diploidy (although with aneuploidy). Nearly all mammals are diploid organisms, although all individuals have some small fracton of cells that are polyploidy.	0
7648	73259	2	Shapes are invariant on size transformations. Shapes can be subdivided into 2D and 3D shapes, We can also make a distinction between shapes of complete self-connected objects, and shapes of parts of objects.	0
7649	73270	2	Example: [ E=wing Q=absent ] -applies to an organism that lacks wings. Note that this is the reciprocal quality to the relational quality "lacks all parts of type". This means that [E=wing Q=absent] is replaceable with [E=organism Q=lacks_all_parts_of_type E2=Wing]. The latter is preferable as it allows greater precision in stating what is lacking from where. E.g. We can say [E=spermatocyte Q=lacks_all_parts_of_type E2=aster] to describe spermatocytes that have no asters.	0
7650	73279	2	This term will be obsoleted; Use GO:growth and PATO:rate.	0
7651	73282	2	Examples could be heat or electricity or sound.	0
7652	73312	2	Typically used for light, but also applied to full EM spectrum.	0
7653	73321	2	This term is for curator easiness - denote downward/inward length - we might consider obsoleting this but we have to consider how curators are going to represent them if we do.	0
7654	73344	2	This term is for curator easiness - we might consider obsoleting this but we have to consider how curators are going to represent them if we do.	0
7655	73350	2	For example, structures undergoing endochondral ossification change in composition from cartilaginous to ossified.	0
7656	73358	2	Becoming flat but not necessarily completely flat.	0
7657	73421	2	See GO term: GO:0031974 membrane-enclosed lumen [DEF:"The enclosed volume within a sealed membrane or between two sealed membranes"].	0
7658	73512	2	Should be defined using translocation.	0
7659	73533	2	Use GO:0007631 \\! feeding behavior plus PATO instead.	0
7660	73548	2	Setose as a label is used extensively to describe insect phenotypes that have hairy-like appearances (i.e., they are covered in setae, not the hairs of mammals). A bristle is a type of seta.	0
7661	73557	2	Relational qualities are qualities that hold between multiple entities. Normal (monadic) qualities such as the shape of a eyeball exist purely as a quality of that eyeball. A relational quality such as sensitivity to light is a quality of that eyeball (and connecting nervous system) as it relates to incoming light waves/particles.	0
7662	73579	2	This term is also used in reference to the operation of the muscle in anatomy or musculature.	0
7663	73601	2	This refers to the disposition of the bearer.	0
7664	73651	2	Unknown is not a type of sex.	0
7665	73674	2	Obsoleted because it used to be a child of behavioral quality, which really meant increased magnitude of a given behavior. Now this can be done by using increased magnitude with another quality.	0
7666	73676	2	TODO: obsolete, definition too ambiguous.	0
7667	73687	2	Color saturation refers to the amount of white light or gray paint mixed in with the hue (single wavelength) and is a measure of color purity.	0
7668	73708	2	This term was created as a grouping term for the 2 terms "conspicuous" and "inconspicuous". However, it is not clear if these terms should even remain in PATO.	0
7669	73795	2	Less potent than multipotent, often thought of as precursor or progenitor cell status.	0
7670	73848	2	GO has now relevant relation terms which should be used instead.	0
7671	73881	2	TODO: we need a clearer differentium between this and contractility - or merge?	0
7672	73932	2	Note that a fiber shaped object may take any circuitous or straight path through space (think of a length of string or rope).	0
7673	73963	2	Color brightness refers to the intensity, lightness or value of the light present. Think of this as a dimmer switch.	0
7674	73972	2	Use this term or an is_a child of this term when the entire shape of the object is known.	0
7675	73992	2	For diploid organisms, such as humans, it is the normal condition, whilst for organisms that are normally triploid or above, disomy is an aneuploidy.	0
7676	74105	2	Example: [E=hand Q=has_fewer_parts_of_type E2=digit] - applies to an organism that has no less fingers than is normal for organisms of that type.	0
7677	74140	2	TODO: obsolete this.	0
7731	74601	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7678	74199	2	Needs redefined or obsoleted. Is this the same as genetic incompatibility? Moved to organismal quality.	0
7679	74307	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7680	74311	2	Requested by Bayer Cropscience June, 2011.	0
7681	74316	2	EBI term Intergenic variations - More than 5 kb either upstream or downstream of a transcript.	0
7682	74330	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7683	74332	2	Requested by Chris Smith, and others at Flybase to help annotate nested repeats.	0
7684	74338	2	The type of RNA editing found in the mitochondria of Myxomycota, characterized by the insertion of mono- and dinucleotides in RNAs relative to their mtDNA template and in addition, C to U base conversion. The most common mononucleotide insertion is cytidine, although a number of uridine mononucleotides are inserted at specific sites. Adenine and guanine have not been observed in mononucleotide insertions. Five different dinucleotide insertions have been observed, GC, GU, CU, AU and AA. Both mono- and dinucleotide insertions create open reading frames in mRNA and contribute to highly conserved structural features of rRNAs and tRNAs.	0
7685	74356	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7686	74361	2	Attributes added to describe the different kinds of replicon. SO workshop, September 2006.	0
7687	74362	2	This has been obsoleted as it represents a process. replaced_by: GO:0006260.	0
7688	74367	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7689	74372	2	Binds TAF6, TAF9.	0
7690	74373	2	Requested by Lynn Crosby, jan 2006.	0
7691	74387	2	The insertion and deletion of uridine (U) residues, usually within coding regions of mRNA transcripts of cryptogenes in the mitochondrial genome of kinetoplastid protozoa.	0
7692	74389	2	Attributes added to describe the different kinds of replicon. SO workshop, September 2006.	0
7693	74391	2	May have either GT-AC or AT-AC 5' and 3' boundaries.	0
7694	74392	2	Term requested by the MODencode group.	0
7695	74400	2	Range.	0
7696	74406	2	The iron-uptake ability of many pathogens are conveyed by adaptive islands. Nature Reviews Microbiology 2, 414-424 (2004); doi:10.1038 micro 884 GENOMIC ISLANDS IN PATHOGENIC AND ENVIRONMENTAL MICROORGANISMS Ulrich Dobrindt, Bianca Hochhut, Ute Hentschel & Jorg Hacker.	0
7697	74407	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7698	74411	2	Added by KE Jan 2006 to capture the kinds of attributes of TEs	0
7699	74413	2	Added in response to Kelly Williams from Indiana. Date: Nov 2005.	0
7700	74420	2	EBI term Upstream variations - Within 5 kb upstream of the 5prime end of a transcript.	0
7701	74423	2	A region of UTR. This term is a grouping term to allow the parts of UTR to have an is_a path to the root.	0
7702	74428	2	Range.	0
7703	74431	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7704	74434	2	Range. Old definition from before biosapiens: A region of a single polypeptide chain that folds into an independent unit and exhibits biological activity. A polypeptide chain may have multiple domains.	0
7705	74442	2	Range.	0
7706	74446	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7707	74447	2	I am using the term segment instead of gene here to avoid confusion with the region 'gene'.	0
7708	74448	2	Different groups annotate up and downstream to different lengths. The subtypes are specific and are backed up with cross references.	0
7709	74452	2	A place holder for a cross product with chebi.	0
7710	74453	2	An evolutionarily conserved eukaryotic low molecular weight RNA capable of intermolecular hybridization with both homologous and heterologous 18S rRNA.	0
7711	74457	2	Discrete.	0
7712	74458	2	Range.	0
7713	74474	2	EBI term: 5prime UTR variations - In 5prime UTR (untranslated region).	0
7714	74496	2	EBI term: Stop gained - In coding sequence, resulting in the gain of a stop codon (i.e. leading to a shortened peptide sequence).	0
7715	74500	2	A place holder for a cross product with chebi.	0
7716	74517	2	This term was added after a request by SGD. August 2004. Modified after SO meeting in Cambridge to not include start or stop.	0
7717	74522	2	EBI term: Non-synonymous SNPs. SNPs that are located in the coding sequence and result in an amino acid change in the encoded peptide sequence. A change that causes a non_synonymous_codon can be more than 3 bases - for example 4 base substitution.	0
7718	74524	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology. The region on a DNA molecule involved in RNA polymerase binding to initiate transcription.	0
7719	74527	2	This is a manufactured term to allow the parts of promoter to have an is_a path back to the root.	0
7720	74528	2	An example is a read produced by Illumina technology.	0
7721	74532	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7722	74546	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7723	74548	2	A place holder for a cross product with chebi.	0
7724	74558	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7725	74561	2	Binds TBP.	0
7726	74568	2	Discrete.	0
7727	74572	2	Formerly called transcript_by_bound_nucleic_acid.	0
7728	74579	2	A target region for site-specific inversion of a DNA region and which carries binding sites for a site-specific recombinase and accessory proteins as well as the site for specific cleavage by the recombinase.	0
7729	74585	2	This term is the hypernym of attributes and should not be annotated to.	0
7730	74592	2	A junction is a boundary between regions. A boundary has an extent of zero.	0
7735	74634	2	DO not obsolete without considering MGED mapping.	0
7736	74641	2	Genes for phenolic compound degradation in Pseudomonas putida are found on metabolic islands.	0
7737	74642	2	A place holder for a cross product with chebi.	0
7738	74646	2	EBI term: Complex InDel - Insertion or deletion that spans an exon/intron border or a coding sequence/UTR border.	0
7739	74662	2	Histone deacetylation is GO:0016573.	0
7740	74663	2	Added in March 2007 in after meeting with pharmgkb. Although this term is in common usage, it is better to annotate with the most specific term possible, such as synonymous codon, intron variant etc.	0
7741	74668	2	Within non-coding gene - Located within a gene that does not code for a protein.	0
7742	74669	2	This term was requested 2009-10-16 by Michel Dumontier, tracker id 2880699.	0
7743	74674	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7744	74679	2	MM Young, K Kirshenbaum, KA Dill & S Highsmith. Predicting conformational switches in proteins. Protein Science, 1999, 8, 1752-64. K. Kirshenbaum, M.M. Young and S. Highsmith. Predicting Allosteric Switches in Myosins. Protein Science 8(9):1806-1815. 1999.	0
7745	74681	2	Merged with partially characterized change in nucleotide sequence.	0
7746	74687	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7747	74689	2	Requested by Karen Pilcher - Dictybase. song-Term Tracker-1574577.	0
7748	74696	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7749	74697	2	This terms is used by MO.	0
7750	74698	2	The definitions of the children of this term were revised Decemeber 2007 after discussion on song-devel. The resulting definitions are slightly unweildy but hopefully more logically correct.	0
7751	74699	2	This region contains a polypyridine tract and AG dinucleotide in some organisms and is UUUCAG in C. elegans.	0
7752	74700	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7753	74703	2	Discrete.	0
7754	74707	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7755	74710	2	Hormones, neuropeptides, antimicrobial peptides, are active peptides. They are typically short (<40 amino acids) in length.	0
7756	74712	2	Part of an edited transcript only.	0
7757	74715	2	Probably in the future this will cross reference to Chebi.	0
7758	74720	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7759	74725	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7760	74732	2	Do not use this for feature annotation. Use morpholino_oligo (SO:0000034) instead.	0
7761	74742	2	Ruby et al. Nature 448:83 describe a new class of miRNAs that are derived from de-branched introns.	0
7762	74743	2	This is the analog of the transcript of a functional gene. The term was requested by Rama - SGD to allow the annotation of the parts of a pseudogene. Non-functional is defined as either its transcription or translation (or both) are prevented due to one or more mutations.	0
7763	74754	2	See GO:0042277 : peptide binding.	0
7764	74755	2	This would include, for example, a cluster of genes encoding different histones.	0
7765	74767	2	This term is mapped to MGED. This term is now located in OBI, with the following ID OBI_0000406.	0
7766	74769	2	This consensus sequence was identified computationally using the MEME algorithm within core promoter sequences from -60 to +40, with an E value of 1.7e-183.  Tends to co-occur with Motif 7. Tends to not occur with DPE motif (SO:0000015) or motif 10.	0
7767	74781	2	Range.	0
7768	74784	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7769	74786	2	A cryptic splice site is only used when the natural splice site has been disrupted by a sequence alteration.	0
7770	74787	2	This is a manufactured term to allow the parts of RNApol_III_promoter_type_2 to have an is_a path back to the root.	0
7771	74792	2	Range.	0
7772	74794	2	Range.	0
7773	74797	2	Birren BW et al. A human chromosome 22 fosmid resource: mapping and analysis of 96 clones. Genomics 1996.	0
7774	74804	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology. Drosophila melanogaster PACs carry an average insert size of 80 kb. The library represents a 6-fold coverage of the genome.	0
7775	74806	2	Requested by Michael, 19 nov 2004.	0
7776	74809	2	FLAG - definition describes an unknown.	0
7777	74811	2	Range.	0
7778	74826	2	Do not use this term for feature annotation. Use GNA_oligo (SO:0001192) instead.	0
7779	74827	2	GO:0000374.	0
7780	74828	2	A place holder for a cross product with chebi.	0
7781	74840	2	Attributes added to describe the different kinds of replicon. SO workshop, September 2006.	0
7782	74842	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7783	74845	2	Range.	0
7784	74847	2	A place holder for a cross product with chebi.	0
7785	74856	2	Flag - unknown in the definition.	0
7786	74869	2	With spliceosomal introns, the splice sites bind the spliceosomal machinery.	0
7787	74871	2	EBI term: Intronic variations - In intron.	0
7788	74877	2	An example is a read produced by Roche 454 technology.	0
7789	74881	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7790	74883	2	EBI term Downstream variations - Within 5 kb downstream of the 3prime end of a transcript.	0
7884	75402	2	This term was requested 2009-10-16 by Michel Dumontier, tracker id 2880699.	0
7791	74899	2	The A box can be found in the promoters of type 1 and type 2 (pol III) so sub-typing here allows the part of relationship of the subtypes to remain true.	0
7792	74900	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7793	74905	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7794	74906	2	The type of RNA editing found in the mitochondria of Myxomycota, characterized by the insertion of mono- and dinucleotides in RNAs relative to their mtDNA template and in addition, C to U base conversion. The most common mononucleotide insertion is cytidine, although a number of uridine mononucleotides are inserted at specific sites. Adenine and guanine have not been observed in mononucleotide insertions. Five different dinucleotide insertions have been observed, GC, GU, CU, AU and AA. Both mono- and dinucleotide insertions create open reading frames in mRNA and contribute to highly conserved structural features of rRNAs and tRNAs.	0
7795	74907	2	The type of RNA editing found in the mitochondria of Myxomycota, characterized by the insertion of mono- and dinucleotides in RNAs relative to their mtDNA template and in addition, C to U base conversion. The most common mononucleotide insertion is cytidine, although a number of uridine mononucleotides are inserted at specific sites. Adenine and guanine have not been observed in mononucleotide insertions. Five different dinucleotide insertions have been observed, GC, GU, CU, AU and AA. Both mono- and dinucleotide insertions create open reading frames in mRNA and contribute to highly conserved structural features of rRNAs and tRNAs.	0
7796	74913	2	GO:0003964 RNA-directed DNA polymerase activity.	0
7797	74920	2	A place holder for a cross product with chebi.	0
7798	74925	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7799	74946	2	Requested by the Trypanosome community.	0
7800	74947	2	For example, was a substitution natural or mutated as part of an experiment? This term is added to merge the biosapiens term sequence_variations.	0
7801	74953	2	This classes of attributes was added by MA to allow the broad description of genes based on qualities of the transcript(s). A product of SO meeting 2004.	0
7802	74954	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7803	74956	2	RNA interference is GO:0016246.	0
7804	74958	2	Term requested via tracker ID: 2910829.	0
7805	74961	2	This term was requested 2009-10-16 by Michel Dumontier, tracker id 2880699.	0
7806	74968	2	Term requested by Rama from SGD.	0
7807	74969	2	2 discreet & joined.	0
7808	74970	2	Intein-mediated protein splicing occurs after mRNA has been translated into a protein.	0
7809	74978	2	An example of this kind of read is one produced by ABI SOLiD.	0
7810	74979	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7811	74984	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7812	74985	2	EBI term: Partial codon - Located within the final, incomplete codon of a transcript with a shortened coding sequence where the end is unknown.	0
7813	74990	2	This is a manufactured term to allow the parts of bacterial_RNApol_promoter to have an is_a path back to the root.	0
7814	74999	2	Range.	0
7815	75005	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7816	75006	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7817	75011	2	Modified as requested by Lynn - FB. May 2007.	0
7818	75015	2	EBI term: Within mature miRNA - Located within a microRNA.	0
7819	75019	2	To allow transcribed_spacer_region to have a path to the root.	0
7820	75033	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7821	75048	2	Binds TFIIIC.	0
7822	75049	2	See GO:0046872 : metal ion binding.	0
7823	75053	2	Definition change requested by Val, 3172757.	0
7824	75071	2	The exact rules need to be stated, a common set of rules can be derived from e.g. BLOSUM62 amino acid distance matrix.	0
7825	75077	2	EBI term: Stop lost - In coding sequence, resulting in the loss of a stop codon.	0
7826	75080	2	Term added because of request by MO people.	0
7827	75084	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7828	75089	2	Term requested via tracker (2981725) by Alan Ruttenberg, April 2010. It has been described as both an enhancer and a promoter, so the parent is the more general term.	0
7829	75090	2	Term added Dec 06 to comply with mapping to MGED terms. It should be used to generate consensus regions. The specific cross product terms they require are consensus_region and consensus_mRNA.	0
7830	75092	2	Binds TAF1, TAF2.	0
7831	75118	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7832	75128	2	Added in respose to request by Simon Twigger November 14th 2005.	0
7833	75133	2	Not found in Eukaryotic sequence.	0
7834	75135	2	A place holder for a cross product with chebi.	0
7835	75138	2	The type of RNA editing found in the mitochondria of Myxomycota, characterized by the insertion of mono- and dinucleotides in RNAs relative to their mtDNA template and in addition, C to U base conversion. The most common mononucleotide insertion is cytidine, although a number of uridine mononucleotides are inserted at specific sites. Adenine and guanine have not been observed in mononucleotide insertions. Five different dinucleotide insertions have been observed, GC, GU, CU, AU and AA. Both mono- and dinucleotide insertions create open reading frames in mRNA and contribute to highly conserved structural features of rRNAs and tRNAs.	0
7836	75141	2	Biosapien term was secondary_structure.	0
7885	75405	2	Requested by Trish Whetzel.	0
7886	75407	2	This is not cryptic in the same sense as a cryptic gene or cryptic splice site.	0
7837	75143	2	The repeats are maintained by telomerase and there is generally 300 (+/-) 75 bp of TG(1-3) at a given end. Telomeric repeats function in completing chromosome replication and protecting the ends from degradation and end-to-end fusions. This term was requested 2009-10-16 by Michel Dumontier, tracker id 2880739.	0
7838	75147	2	Has RNA pseudouridylation guide activity (GO:0030558).	0
7839	75150	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7840	75151	2	This term was added to provide a grouping term for the region parts of transcript, thus giving them an is_a path back to the root.	0
7841	75154	2	Do not use this term for feature annotation. Use S_GNA_oligo (SO:0001197) instead.	0
7842	75159	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7843	75161	2	Not to be confused with BRE_motif (SO:0000016), which binds transcription factor II B.	0
7844	75167	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7845	75176	2	Residue is part of a binding site for a metal ion.	0
7846	75180	2	Intron characteristic of tRNA genes; splices by an endonuclease-ligase mediated mechanism.	0
7847	75186	2	This would include, for example, a cluster of genes each encoding the major ribosomal RNAs and a cluster of histone gene subarrays.	0
7848	75191	2	This would include, for example, the mating type gene cassettes of S. cerevisiae. Gene cassettes usually exist as linear sequences as part of a larger DNA molecule, such as a chromosome or plasmid.	0
7849	75196	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7850	75198	2	Requested by MA nov 19 2004.	0
7851	75207	2	Possible functions include roles in chromosomal segregation,\\nmaintenance of chromosome stability, recombinational sequestering, or as a\\nbarrier to transcriptional silencing. This term was requested 2009-10-16 by Michel Dumontier, tracker id 2880747.	0
7852	75214	2	A place holder for a cross product with chebi.	0
7853	75217	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7854	75225	2	Range.	0
7855	75226	2	An mRNA does not contain introns as it is a processed_transcript. The equivalent kind of primary_transcript is protein_coding_primary_transcript (SO:0000120) which may contain introns. This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7856	75236	2	The free molecule is CHEBI:17596.	0
7857	75241	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7858	75252	2	The free molecule is CHEBI:2274.	0
7859	75260	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7860	75264	2	Added by request from Colin Batchelor.	0
7861	75265	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7862	75269	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7863	75272	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7864	75274	2	This has been obsoleted as it represents a process. replaced_by: GO:0070581.	0
7865	75277	2	X element combinatorial repeats contain Tbf1p binding sites,\\nand possible functions include a role in telomerase-independent telomere\\nmaintenance via recombination or as a barrier against transcriptional\\nsilencing. These are usually present as a combination of one or more of\\nseveral types of smaller elements (designated A, B, C, or D). This term was requested 2009-10-16 by Michel Dumontier, tracker id 2880747.	0
7866	75286	2	An exon either containing but not starting with a start codon or containing but not ending with a stop codon will be partially coding and partially non coding.	0
7867	75287	2	This is different from a non processed pseudogene because the gene was not duplicated. An example is the L-gulono-lactone oxidase pseudogene in primates.	0
7868	75293	2	Old def before biosapiens:The sequence for an N-terminal domain of a secreted protein; this domain is involved in attaching nascent polypeptide to the membrane leader sequence.	0
7869	75300	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7870	75315	2	Attributes added to describe the different kinds of replicon. SO workshop, September 2006.	0
7871	75333	2	This term mature peptide, merged with the biosapiens term mature protein region and took that to be the new name. Old def: The coding sequence for the mature or final peptide or protein product following post-translational modification.	0
7872	75335	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7873	75337	2	Range.	0
7874	75339	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7875	75340	2	A place holder for a cross product with chebi.	0
7876	75342	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7877	75350	2	similar to:<sequence_id>	0
7878	75352	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology. A gene may be considered as a unit of inheritance.	0
7879	75372	2	Note: PMID:18794354 describes the DDB box, and has lots of alignments, but doesn't actually come out with a consensus sequence.	0
7880	75374	2	Do not use this for feature annotation. Use enzymatic_RNA (SO:0000372) instead.	0
7881	75392	2	Paper: vans GA et al. High efficiency vectors for cosmid microcloning and genomic analysis. Gene 1989; 79(1):9-20. This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7882	75397	2	Added to bring SO inline with the embl ddbj genbank feature table. Old definition before biosapiens: The coding sequence for an N-terminal domain of a nuclear-encoded organellar protein. This domain is involved in post translational import of the protein into the organelle.	0
7883	75399	2	Discrete.	0
7887	75413	2	The terminal codon may be the terminator, or in an incomplete transcript the last available codon.	0
7888	75414	2	Range.	0
7889	75418	2	Requested by tracker 2021594, July 2008, by Alex.	0
7890	75424	2	This is a manufactured term to allow the parts of RNApol_II_promoter to have an is_a path back to the root.	0
7891	75437	2	This has been obsoleted as it represents a process. replaced_by: GO:0034961.	0
7892	75438	2	An enhancer may participate in an enhanceosome GO:0034206. A protein-DNA complex formed by the association of a distinct set of general and specific transcription factors with a region of enhancer DNA. The cooperative assembly of an enhanceosome confers specificity of transcriptional regulation. This comment is a place holder should we start to make cross products with GO.	0
7893	75446	2	Genomic islands are transmissible elements characterized by large size (>10kb).	0
7894	75452	2	Requested by Keith Boroevich December, 2006.	0
7895	75455	2	Added Jan 2006 to allow the annotation of the pseudogenic rRNA by flybase. Non-functional is defined as its transcription is prevented due to one or more mutatations.	0
7896	75460	2	The free molecule is CHEBI:17802.	0
7897	75461	2	This term was requested 2009-10-16 by Michel Dumontier, tracker id 2880747.	0
7898	75465	2	See tracker ID 2060908.	0
7899	75477	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7900	75483	2	Range.	0
7901	75490	2	This term does not include the stop codons that are redefined. An example would be a stop codon that partially overlapped a frame shifting site would be an example stimulatory signal.	0
7902	75496	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7903	75509	2	Requested by flybase, Dec 2010.	0
7904	75518	2	May have either GT-AG or AT-AG 5' and 3' boundaries.	0
7905	75520	2	A terms added to allow the parts of introns to have is_a paths to the root.	0
7906	75525	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7907	75526	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7908	75529	2	GO:0000373.	0
7909	75536	2	Term requested by M. Dumontier, June 1 2011.	0
7910	75539	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7911	75540	2	Range.	0
7912	75552	2	Requested by flybase, Dec 2010.	0
7913	75556	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7914	75572	2	Formerly called transcript_by_bound_factor.	0
7915	75577	2	Do not use this for feature annotation. Use ribozyme (SO:0000374) instead.	0
7916	75583	2	Range.	0
7917	75586	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7918	75598	2	Added to allow the polypeptide regions to have is_a paths back to the root.	0
7919	75601	2	Mathematically defined repeat regions are determined without regard to the biological origin of the repetitive region. The repeat units of a MDR are the overlapping oligomers of size k that were used to for the query. Tools that can annotate mathematically defined repeats include Tallymer (Kurtz et al 2008, BMC Genomics: 517) and RePS (Wang et al, Genome Res 12(5): 824-831.).	0
7920	75607	2	May contain introns.	0
7921	75608	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7922	75609	2	Residue involved in contact with calcium.	0
7923	75612	2	An exon containing either a start or stop codon will be partially coding and partially non coding.	0
7924	75618	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7925	75624	2	Ensembl and Vega also use this term name. Requested by Howard Deen of MGI.	0
7926	75637	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7927	75641	2	From tracker [ 2372385 ] expressed_sequence_assembly.	0
7928	75642	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7929	75645	2	A place holder for a cross product with chebi.	0
7930	75654	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7931	75658	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7932	75660	2	Tracker ID: 3052459.	0
7933	75662	2	A term created to allow the parts of an inversion site have an is_a path back to the root.	0
7934	75665	2	Added in response to comment from Kelly Williams from Indiana. Nov 2005.	0
7935	75672	2	EBI term - essential splice site - In the first 2 or the last 2 base pairs of an intron. The 5th base is on the donor (5') side of the intron. Updated to b in line with Cancer Genome Project at the Sanger.	0
7936	75675	2	A processed transcript cannot contain introns.	0
7937	75677	2	See GO:0005488 : binding.	0
7938	75678	2	A term to be used in conjunction with the paralogous_to relationship.	0
7939	75688	2	See tracker ID: 2138359.	0
7940	75689	2	This would include, for example, the arrays of non-functional VSG genes of Trypanosomes.	0
7941	75691	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7942	75697	2	FLAG - this term is should probably be a part of rather than an is_a.	0
7943	75698	2	Range.	0
7944	75699	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7945	75702	2	Examples are x-inactivation and immunoglobulin formation.	0
7946	75707	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7947	75714	2	Nature. 1986 Oct 16-22;323(6089):640-3.	0
7948	75724	2	Discrete.	0
7949	75727	2	A manufactured term to collect together the parts of a mature transcript and give them an is_a path to the root.	0
7950	75732	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7951	75734	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7952	75744	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7953	75745	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7954	75746	2	A manufactured to group the parts of repeats, to give them an is_a path back to the root.	0
7955	75762	2	Nitrogen fixation in Rhizobiaceae species is encoded by symbiosis islands. Evolution of rhizobia by acquisition of a 500-kb symbiosis island that integrates into a phe-tRNA gene. John T. Sullivan and Clive W. Ronso PNAS 1998 Apr 28 95 (9) 5145-5149.	0
7956	75770	2	Requested by Hadi Quesneville January 2007.	0
7957	75771	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7958	75774	2	GO:0000372.	0
7959	75775	2	Attributes added to describe the different kinds of replicon. SO workshop, September 2006.	0
7960	75778	2	Added jan 2006 by KE.	0
7961	75780	2	A place holder for a cross product with chebi.	0
7962	75783	2	EBI term:Frameshift variations - In coding sequence, resulting in a frameshift.	0
7963	75798	2	This has been obsoleted as it represents a process. replaced_by: GO:0070582	0
7964	75806	2	Histone modification is GO:0016570.	0
7965	75813	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect. Also as there is not change, it is not a good ontological term.	0
7966	75814	2	FLAG - term describes an unknown.	0
7967	75820	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology. The term 'protein' was merged with 'polypeptide'. Although 'protein' was a sequence_attribute and therefore meant to describe the quality rather than an actual feature, it was being used erroneously. It is replaced by 'peptidyl' as the polymer attribute.	0
7968	75821	2	This could be inside an organelle within the cell.	0
7969	75824	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7970	75825	2	The exact rules need to be stated, a common set of rules can be derived from e.g. BLOSUM62 amino acid distance matrix.	0
7971	75829	2	A place holder for a cross product with chebi.	0
7972	75834	2	This term was added to provide a grouping term for the region parts of tmRNA, thus giving them an is_a path back to the root.	0
7973	75835	2	This term was requested by Jeff Bowes, using the tracker, ID = 2594157.	0
7974	75838	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7975	75841	2	Please not the synonym R psi M uses the spelled out form of the greek letter.	0
7976	75842	2	Requested by Andy Schroder - Flybase Harvard, Nov 2006.	0
7977	75843	2	Modified base:<modified_base>.	0
7978	75849	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7979	75850	2	A ncRNA is a processed_transcript, so it may not contain parts such as transcribed_spacer_regions that are removed in the act of processing. For the corresponding primary_transcripts, please see term SO:0000483 nc_primary_transcript.	0
7980	75851	2	Discrete.	0
7981	75853	2	Added for the MO people.	0
7982	75858	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7983	75865	2	Discrete.	0
7984	75866	2	By:<protein_id>.	0
7985	75868	2	See GO:0000166 : nucleotide binding.	0
7986	75872	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7987	75874	2	The free molecule is CHEBI:30832.	0
7988	75880	2	Histone methylation is GO:0016571.	0
7989	75882	2	Added to comply with the feature table. A single repeat.	0
7990	75889	2	This terms and children were added to SO in response to tracker request by Patrick Chain. The paper Genome Project Standards in a New Era of Sequencing. Science October 9th 2009, addresses these terms.	0
7991	75893	2	A region of a molecule that binds to a restriction enzyme.	0
7992	75895	2	Requested by Colin Batchelor, Feb 2007.	0
7993	75897	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
7994	75900	2	This term was added to provide a grouping term for the region parts of mRNA, thus giving them an is_a path back to the root.	0
7995	75902	2	This is a manufactured term to allow the parts of RNApol_III_promoter_type_1 to have an is_a path back to the root.	0
7996	75904	2	Binds TFIIIC.	0
7997	75915	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
7998	75918	2	This term should be used in conjunction with the similarity relationships defined in SO.	0
7999	75921	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
8000	75934	2	This term is used by MO.	0
8001	75935	2	Range.	0
8002	75944	2	Range.	0
8003	75945	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect. Also as there is no effect, it is not a good term.	0
8004	75962	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
8005	75971	2	Range.	0
8006	75972	2	This concept cam about as a direct result of the SO meeting August 2004.nThe exact nature of the relationship between transcribed_region and gene is still up for discussion. We are going with 'associated_with' for the time being.	0
8007	75980	2	This has been obsoleted as it represents a process. replaced_by: GO:0034961.	0
8008	75981	2	A place holder for a cross product with chebi.	0
8009	75987	2	Attributes added to describe the different kinds of replicon. SO workshop, September 2006.	0
8010	75999	2	A place holder for a cross product with chebi.	0
8011	76000	2	This feature was requested by Nicole, tracker id 1911479. It is required to gather evidence together for annotation. An example would be overlapping ESTs that support an mRNA.	0
8012	76001	2	Do not use this term for feature annotation. Use TNA_oligo (SO:0001191) instead.	0
8013	76003	2	Do not use this term for feature annotation. Use LNA_oligo (SO:0001189) instead.	0
8014	76004	2	A place holder for a cross product with chebi.	0
8015	76006	2	The type of RNA editing found in the mitochondria of Myxomycota, characterized by the insertion of mono- and dinucleotides in RNAs relative to their mtDNA template and in addition, C to U base conversion. The most common mononucleotide insertion is cytidine, although a number of uridine mononucleotides are inserted at specific sites. Adenine and guanine have not been observed in mononucleotide insertions. Five different dinucleotide insertions have been observed, GC, GU, CU, AU and AA. Both mono- and dinucleotide insertions create open reading frames in mRNA and contribute to highly conserved structural features of rRNAs and tRNAs.	0
8016	76012	2	Do not use this term for feature annotation. Use PNA_oligo (SO:0001011) instead.	0
8017	76013	2	Requested by John Calley 3125900.	0
8018	76026	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8019	76035	2	A place holder for a cross product with chebi.	0
8020	76037	2	A manufactured term used to allow the parts of a gene to have an is_a path to the root.	0
8021	76039	2	Examples are Nullo-4, Haplo-4 and triplo-4 in Drosophila.	0
8022	76044	2	Indels can have a different number of bases than the corresponding reference sequence.	0
8023	76052	2	Binds TFIIB.	0
8024	76053	2	Requested by Bayer Cropscience June, 2011.	0
8025	76065	2	This is the analog of the exon of a functional gene. The term was requested by Rama - SGD to allow the annotation of the parts of a pseudogene. Non-functional is defined as either its transcription or translation (or both) are prevented due to one or more mutations.	0
8026	76082	2	Range.	0
8027	76086	2	Added Jan 2006 to allow the annotation of the pseudogenic tRNA by flybase. Non-functional is defined as its transcription is prevented due to one or more mutatations.	0
8028	76087	2	Could be a cross product with Gene ontology, GO:0006388.	0
8029	76094	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8030	76096	2	This was moved to be a child of transcript (SO:0000673) because some enzymatic RNA regions are part of primary transcripts and some are part of processed transcripts.	0
8031	76097	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8032	76103	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8033	76113	2	The definition is most of the old definition for snoRNA (SO:0000275).	0
8034	76116	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8035	76133	2	GO:0000398.	0
8036	76137	2	requested by Michael on 19 Nov 2004.	0
8037	76139	2	The definition was modified by Rama. ORF is defined by the sequence, whereas the CDS is defined according to whether a polypeptide is made. This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
8038	76141	2	EBI term 3prime UTR variations - In 3prime UTR.	0
8039	76153	2	Discrete.	0
8040	76160	2	EBI term: Regulatory region variations - In regulatory region annotated by Ensembl.	0
8041	76169	2	Requested by Stepen Grossmann Dec 2004.	0
8042	76179	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8043	76196	2	This term was requested by Jeff Bowes, using the tracker, ID = 2594157.	0
8044	76200	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8045	76201	2	Added in response to Lynn Crosby. A clone insert may be composed of many cloned regions.	0
8046	76204	2	Requested by Bayer Cropscience June, 2011.	0
8047	76206	2	Different groups annotate up and downstream to different lengths. The subtypes are specific and are backed up with cross references.	0
8048	76214	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect. Also, as there is no change, this is not a good ontological term.	0
8049	76218	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
8050	76221	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8051	76222	2	Requested by tracker ID: 2902685.	0
8052	76224	2	EBI term: splice site - 1-3 bps into an exon or 3-8 bps into an intron.	0
8053	76226	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8054	76229	2	Term requested by M. Dumontier, June 1 2011.	0
8055	76234	2	SL RNA contains a donor site.	0
8056	76240	2	Formerly called transcript_by_bound_protein.	0
8057	76246	2	A place holder for a cross product with chebi.	0
8058	76247	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8059	76248	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8060	76249	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.\\nUpdated after discussion with Peter Taschner - Feb 09.	0
8061	76255	2	A place holder for a cross product with chebi.	0
8062	76267	2	This is a manufactured term, that serves the purpose of allow the parts of a chromosome to have an is_a path to the root.	0
8063	76278	2	The A box can be found in the promoters of type 1 and type 2 (pol III) so sub-typing here allows the part of relationship of the subtypes to remain true.	0
8064	76280	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
8065	76298	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8066	76308	2	A place holder for a cross product with chebi.	0
8067	76309	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8068	76313	2	DO not obsolete without considering MGED mapping.	0
8069	76318	2	Range.	0
8070	76326	2	Has RNA 2'-O-ribose methylation guide activity (GO:0030561).	0
8071	76333	2	Discrete.	0
8072	76335	2	OBSOLETE: This term was deleted as it conflated more than one term. The alteration is separate from the effect.	0
8073	76338	2	Do not use this term for feature annotation. Use R_GNA_oligo (SO:0001195) instead.	0
8074	76344	2	Nature Reviews Microbiology 2, 414-424 (2004); doi:10.1038 micro 884 GENOMIC ISLANDS IN PATHOGENIC AND ENVIRONMENTAL MICROORGANISMS Ulrich Dobrindt, Bianca Hochhut, Ute Hentschel & Jorg Hacker.	0
8075	76347	2	The insertion and deletion of uridine (U) residues, usually within coding regions of mRNA transcripts of cryptogenes in the mitochondrial genome of kinetoplastid protozoa.	0
8076	76351	2	This term is mapped to MGED. Do not obsolete without consulting MGED ontology.	0
8077	76352	2	This term was added to provide a grouping term for the region parts of primary_transcript, thus giving them an is_a path back to the root.	0
8078	76361	2	EBI term: Synonymous SNPs - In coding sequence, not resulting in an amino acid change (i.e. silent mutation).\\nThis term is sometimes used synonomously with the more general term 'silent mutation', although a silent mutation may occur in non coding sequence. The best practice is to annotate to the most specific term.	0
\.
