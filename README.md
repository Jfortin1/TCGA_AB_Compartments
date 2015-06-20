# TCGA_AB_Compartments
A/B compartments (open/closed chromatin) for 12 cancer types estimated from TCGA methylation data

Paper: [Fortin et al., 2015](http://biorxiv.org/content/early/2015/06/03/019000.full-text.pdf+html)

## What do the data look like

## Cancers analyzed

| Abbreviation        | Full name           | 
| ------------- |-------------| 
| BLCA     | Bladder Urothelial Carcinoma | 
| BRCA | Breast invasive carcinoma |
| COAD | Colon adenocarcinoma |
| HNSC | Head and Neck squamous cell carcinoma |
| KIRC | Kidney renal clear cell carcinoma |
| KIRP | Kidney renal papillary cell carcinoma |
| LIHC | Liver hepatocellular carcinoma |
| LUAD | Lung adenocarcinoma |
| LUSC | Lung squamous cell carcinoma |
| PRAD | Prostate adenocarcinoma |
| THCA | Thyroid carcinoma |
| UCEC | Uterine Corpus Endometrial Carcinoma |

## Note about preprocessing

We preprocessed each methylation cancer dataset separately by using the 'noob' background correction method [[Triche et al., 2013](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3627582/)] followed by Functional normalization [[Fortin et al., 2014](http://www.genomebiology.com/2014/15/12/503)], both implemented in the minfi package [[Aryee et al., 2014](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4016708/)]  



