>  ICE contains data sets curated for targeted toxicity endpoints by NICEATM, ICCVAM, and their partner organizations. ICE also contains other data sets that may be useful in evaluating or developing new approaches for assessing chemical safety.

Biobricks.ai transforms ICE into parquet files. 

# Data overview 
- This directory contains data obtained from ICE. 
- The data was downloaded from: https://ice.ntp.niehs.nih.gov/DATASETDESCRIPTION

# Data Table List
`Acute_Dermal_Toxicity.parquet`

`Acute_Inhalation_Toxicity.parquet`

`ADME_Parameters.parquet`


# Description of Files 

`Acute_Dermal_Toxicity.parquet`
- Product Name. Name of the product.
- Active Ingredient. Name of the active ingredient.
- CASRN. CAS Registry Number.
- Percent Active Ingredient. The percent of the product made up of the active ingredient.
- Test Material Form. Whether the test material is solid or liquid.
- Dose (mg/kg). The tested dose.
- Product Vehicle. The vehicle for the product.
- Conc Test Substance. The concentration for the test substance.
- Test Guideline. The ID for the test guideline.
- Test Organism. The organism that the product was tested on.
- Strain. The strain of the organism that the product was tested on.
- Sex. The sex of the organisms that the product was tested on.
- Min Age (weeks). Minimum age of the organisms.
- Max Age (weeks). Maximum age of the organisms. 
- Min Weight (g). Minimum weight of the organisms.
- Max Weight (g). Maximum weight of the organisms. 
- Curated LD50 (mg/kg). The curated LD50.
- EPA Tox Ca. EPA Toxicity category.
- GHS Tox Cat. GHS Toxicity Category.
- Death. Number of deaths.
- Test. 
- Clinical Observations. Summary of clinical findings.
- Gross Pathology. Summary of gross pathology findings. 
- Limit Test.
- Record ID. The record ID.
- PID. 

`Acute_Inhalation_Toxicity.parquet`
- Product Name. Name of the product.
- Active Ingredient. Name of the active ingredient.
- CASRN. CAS Registry Number.
- Percent Active Ingredient. The percent of the product made up of the active ingredient.
- Test Material Form. Whether the test material is solid or liquid.
- Product Vehicle. The vehicle for the product.
- Conc Test Substance. The concentration for the test substance.
- Test Guideline. The ID for the test guideline.
- Test Organism. The organism that the product was tested on.
- Strain. The strain of the organism that the product was tested on.
- Sex. The sex of the organisms that the product was tested on.
- Min Age (weeks). Minimum age of the organisms.
- Max Age (weeks). Maximum age of the organisms. 
- Min Weight (g). Minimum weight of the organisms.
- Max Weight (g). Maximum weight of the organisms. 
- Curated LD50 (mg/kg). The curated LD50.
- EPA Tox Ca. EPA Toxicity category.
- GHS Tox Cat. GHS Toxicity Category.
- Exposure. Part of the body that was exposed.
- Nominal Concentration (mg/L). The Nominal Concentration.
- Dose Gravimetric Concentration (mg/L). The Dose Gravimetric Concentration.
- MMAD. Median mass aerodynamic diameter.
- GSD. 
- Death. Number of deaths.
- Test. 
- Clinical Observations. Summary of clinical findings.
- Gross Pathology. Summary of gross pathology findings. 
- Limit Test.
- Record ID. The record ID.
- PID. 

`Acute_Oral_Toxicity.parquet`
- Formulation Name. Name of the formulation.
- Chemical Name. Name of the chemical.
- CASRN. CAS Registry Number.
- DTXSID. The DTXSID number. 
- Percent Active. The percent of the product made up of the active ingredient.
- Mixture. Whether or not the product is a mixture.
- Data Type. Type of data (eg, In Vivo). 
- Assay. Assay performed.
- Endpoint. Study endpoint. 
- Response Modifier. The response modifier (eg, > or <)
- Response. Dose of response. 
- Units. Dose units.
- Species. Species that the dose was tested on.
- Route. The route of administration.
- Sex. The sex of the organisms that the product was tested on.
- Reference. Reference for study.
- PMID. PMID of study. 
- URL. URL for study.
- Formulation ID. The formulation ID. 
- Record ID. The record ID.

`ADME_Parameters.parquet`
- Dataset.Name. Name of dataset. 
- Record.ID. ID for record. 
- Chemical.Name. Name of chemical studied.
- CASRN. CAS Registry Number.
- DTXSID. The DTXSID number. 
- Assay. Assay performed.
- Endpoint. Study endpoint. 
- Response. Dose of response. 
- Units. Dose units.
- Reference. Reference for study.
- URL. URL for study.

`Cancer.parquet`
- Dataset.Name. Name of dataset. 
- Record.ID. ID for record. 
- Formulation ID. ID for formulation.
- Formulation. Name of formulation.
- Name.
- Chemical Name. Name of chemical.
- CASRN. CAS Registry Number.
- DTXSID. The DTXSID number. 
- Percent Active. The percent of the product made up of the active ingredient.
- Mixture. Whether or not the product is a mixture.
- Data Type. Type of data (eg, In Vivo). 
- Species. Species that the dose was tested on.
- Sex. The sex of the organisms that the product was tested on.
- Strain. The strain of the organism that the product was tested on.
- Route. The route of administration.
- Level of evidence. Level of evidence for finding. 
- Tissue. 
- Location.
- Lesion. Tumor type.
- Lesion (incidence). Incidence of lesion.
- Assay. Name of assay performed.
- Endpoint. Study endpoint. 
- Response. Dose of response. 
- Units. Dose units.
- Reference. Reference for study.
- PMID. PMID of study. 
- URL. URL for study.

`DART.parquet`
- Record.ID. ID for record. 
- Chemical Name. Name of chemical.
- Substance Type. Type of substance tested.
- CASRN. CAS Registry Number.
- DTXSID. The DTXSID number. 
- QSAR Ready ID.
- Assay. Name of assay performed.
- Endpoint. Study endpoint. 
- Value. Dose.
- Unit. Units for dose.
- Species. Species that the dose was tested on.
- Receptor Species. 
- lifestage. Stage pf life of organism.
- tissue. Tissue studied.
- lesion. Name of the lesion studied.
- location. Location of lesion. 
- assaysource. Source of assay.
- gene. Gene studied.
- entrezid. Entrez ID for gene.
- invitroassayformat. Format for assay. 
- reference. Reference for study.
- referenceurl. URL for study.
- pubmedid. PMID of study. 

`Endocrine.parquet`
- Record.ID. ID for record. 
- Chemical Name. Name of chemical.
- Substance Type. Type of substance tested.
- CASRN. CAS Registry Number.
- DTXSID. The DTXSID number. 
- Mixture. Whether or not the product is a mixture.
- Data Type. Type of data (eg, In Vivo). 
- Assay. Assay performed.
- Receptor Species. Receptor of Species. 
- Endpoint. Study endpoint. 
- Reported Response Modifier. 
- Reported Response. 
- Reported Response Unit. 
- Conversion Factor. 
- Conversion Factor Value.
- Conversion Factor Source. 
- Converted Response UNit.
- Response Modifier. 
- Response.
- Response Unit.
- Reference. 
-Reference 2. 

`Eye_Irritation.parquet`
- Chemical Name. Name of chemical.
- CASRN. CAS Registry Number.
- DTXSID. The DTXSID number. 
- Assay. Assay performed.
- Endpoint. Study endpoint. 
- Value
- Qsar Ready ID. 
- Record.ID. ID for record. 

`Skin_Irritation.parquet`
- Chemical Name. Name of chemical.
- CASRN. CAS Registry Number.
- DTXSID. The DTXSID number.
- Percent Active. The percent of the product made up of the active ingredient.
- Mixtures. Whether or not the product is a mixture.
- Data Type. Type of data (eg, In Vivo). 
- Laboratory.
- Run number. 
- 3 min Viability (%).   
- 60 min Viability (%).  
- 240 min Viability (%).
- Assay. Name of assay performed.
- Endpoint. Study endpoint. 
- Response Modifier. 
- Response. Dose of response. 
- Units. Dose units.
- Species. Species that the dose was tested on.
- Sex. The sex of the organisms that the product was tested on.
- Route. The route of administration.
- Reference. Reference for study.
- PMID. PMID of study. 
- URL. URL for study.
- Formulation ID. ID for formulation.
- Record.ID. ID for record. 

`Skin_Sensitization.parquet`
- Record.ID. ID for record. 
- Chemical Name. Name of chemical.
- Substance Type. Type of substance tested.
- CASRN. CAS Registry Number.
- DTXSID. The DTXSID number. 
- QSAR Ready ID> 
- Assay. Assay performed.
- Endpoint. Study endpoint. 
- Value. 
- Unit. Units for dose.
- Species. Species that the dose was tested on.
- Receptor Species. 
- Route. The route of administration.
- Sex. The sex of the organisms that the product was tested on.
- Strain. The strain of the organism that the product was tested on.
- lifestage. Stage pf life of organism.
- tissue. Tissue studied.
- lesion. Name of the lesion studied.
- location. Location of lesion. 
- assaysource. Source of assay.
- gene. Gene studied.
- entrezid. Entrez ID for gene.
- invitroassayformat. Format for assay. 
- reference. Reference for study.
- referenceurl. URL for study.
- pubmedid. PMID of study.  
