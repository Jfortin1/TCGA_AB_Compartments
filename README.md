# TCGA_AB_Compartments

In our recent paper available as a preprint on bioRxiv ([Fortin et al., 2015](http://biorxiv.org/content/early/2015/06/03/019000.full-text.pdf+html)), we estimated from TCGA methylation data the A/B compartments for 12 different cancer types. 

## What do the data look like
The data are saved as tab-delimited text files. The first three columns represent the genomic coordinates of the bin, the fourth column reports the value of the eigenvector for the bin, and the fifth column categorizes the bin as "open" or "closed" (A and B compartment respectively). 
```{}
chr    start    end    eigen    domain
chr1	500000	599999	-0.448558697994734	open
chr1	600000	699999	-0.317063576958963	open
chr1	700000	799999	-0.0518659472420911	open
chr1	800000	899999	0.0711965336724111	closed
chr1	900000	999999	0.098443079780858	closed
chr1	1000000	1099999	-0.051011778069161	open
chr1	1100000	1199999	-0.318273718360445	open
chr1	1200000	1299999	-0.53951736779136	open
chr1	1300000	1399999	-0.585600098287715	open

```

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

### References


[Fortin et al., 2015]: Jean-Philippe Fortin, Kasper D. Hansen. Reconstructing A/B compartments as revealed by Hi-C using long-range correlations in epigenetic data, 
