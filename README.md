# ICE — Integrated Chemical Environment (EPA)

> **Brick ID:** `biobricks-ai/ice`
>
> **Primary assets:** 26 EPA-published toxicity datasets, each in Parquet format
>
> **Data source:** [EPA ICE portal](https://comptox.epa.gov/dashboard/ice)
>
> **Licence:** Public domain (U.S. Government data)

---

## What is ICE?

ICE is the EPA's Integrated Chemical Environment: a curated collection of computational and in vitro datasets that support chemical safety evaluations without animal testing. It includes predictive models, curated toxicity endpoints, and exposure estimates.

This brick bundles key ICE datasets in Parquet format for fast downstream use in Python, R, or Spark. All files are read-only and mirror the structure of the published ICE data tables.

---

## File layout

Each dataset is exposed as an individual Parquet file:

```
brick/
├─ Acute_Dermal_Toxicity.parquet
├─ Acute_Inhalation_Toxicity.parquet
├─ Acute_Oral_Toxicity.parquet
├─ ADME_Parameters.parquet
├─ AndrogenMOA.parquet
├─ Cancer.parquet
├─ CancerMOA.parquet
├─ CardioToxMOA.parquet
├─ ChemicalQC.parquet
├─ Chemical_Functional_Use_Categories.parquet
├─ DART.parquet
├─ DARTMOA.parquet
├─ Endocrine.parquet
├─ EstrogenMOA.parquet
├─ Exposure_Predictions.parquet
├─ Eye_Irritation.parquet
├─ Skin_Sensitization.parquet
├─ SteroidMOA.parquet
├─ ThyroidMOA.parquet
├─ Tox21MT.parquet
├─ cHTSMOA.parquet
├─ cHTSMT.parquet
├─ cHTSMT_ALL.parquet
├─ cHTS2022_invitrodb34_20220302.parquet
├─ CardioToxTMOA.parquet
├─ ChemcialQC.parquet
```

Note: some similarly named files are preserved verbatim (`ChemcialQC` vs `ChemicalQC`).

---

## Quick start

```python
import biobricks, pandas as pd
ice = biobricks.assets("ice")

# Example: load the endocrine dataset
df = pd.read_parquet(ice.Endocrine_parquet)
print(df.columns)
```

All datasets are rectangular and immediately usable as pandas dataframes. Sizes vary from a few KB to several MB.

---

## Licence

All ICE datasets are in the **public domain** as works of the United States Government. You may reuse and redistribute freely.
