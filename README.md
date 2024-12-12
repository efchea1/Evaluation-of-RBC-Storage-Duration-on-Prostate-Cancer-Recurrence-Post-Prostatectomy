# Evaluation-of-RBC-Storage-Duration-on-Prostate-Cancer-Recurrence-Post-Prostatectomy
Exploring the impact of allogeneic RBC storage duration on biochemical recurrence timing in prostate cancer patients' post-radical prostatectomy, using SAS for data analysis.

### Background

Prostate cancer is the most common malignant neoplasm in men, and radical prostatectomy is among the primary therapies for localized prostate cancer. The biochemical recurrence-free survival rate 5 years after prostatectomy ranges from 70% to 90%. Improvements in the surgical technique have decreased the amount of intraoperative blood loss occurring during radical prostatectomy; however, substantial numbers of patients still require perioperative blood transfusions. 

Blood transfusions are associated with adverse reactions, including postoperative infections and transfusion-related immune perturbations. Allogeneic leukocytes present in the transfused blood are thought to suppress host cellular immune responses. Furthermore, the immunodepressant effect is secondary to an imbalance of accumulated cytokines and proinflammatory mediators in the transfused blood against decreased production of lymphocyte-stimulating cell-mediated cytokines, such as interleukin 2 and increased release of immunosuppressive prostaglandins in the patient undergoing transfusion.
In cancer patients, perioperative blood transfusion has long been suspected of reducing long-term survival, but available evidence is inconsistent. It is also unclear which components of transfused blood underlie the cancer-promoting effects reported by some studies. An important factor associated with the deleterious effects of blood transfusion is the storage age of the transfused blood units. It is suspected that cancer recurrence may be worsened after the transfusion of older blood.

This study1 evaluated the association between red blood cell (RBC) storage duration and biochemical prostate cancer recurrence after radical prostatectomy. Specifically tested was the hypothesis that perioperative transfusion of allogeneic RBCs stored for a prolonged period is associated with earlier biochemical recurrence of prostate cancer after prostatectomy.
1 Cata et al. “Blood Storage Duration and Biochemical Recurrence of Cancer after Radical Prostatectomy”. Mayo Clinic Proceedings 2011; 86(2): 120-127.

### Dataset Information

Patients were assigned to one of three RBC age exposure groups on the basis of the terciles (i.e., the 33rd and 66th percentiles) of the overall distribution of RBC storage duration if all of their transfused units could be loosely characterized as of “younger,” “middle,” or “older” age. Although this approach resulted in the removal of certain patients with wide RBC age distributions, it has the advantage of defining an essentially random and clearly separable exposure.

Prostate-specific antigen (PSA) was used as a biochemical marker of prostate cancer recurrence after prostatectomy. A PSA value of at least 0.4 ng/mL (to convert to μg/L, multiplied by 1.0) followed by another increase was considered biochemical cancer recurrence.

The initial population consisted of 865 men who had undergone radical prostatectomy and received transfusion during or within 30 days of the surgical procedure at Cleveland Clinic and had available PSA follow-up data. Of these patients, 110 were excluded from the analysis because they received a combination of allogeneic and autologous blood products. Of the remaining 755 patients, 405 (54%) received solely allogeneic, and 350 patients (46%) received solely autologous RBC units. Of the 405 patients who received allogeneic RBC transfusion, 89 were excluded because their transfused RBC age distribution included more than one of the terciles. Thus, this dataset consists of 316 patients who received solely allogeneic blood products and could be classified into an RBC age exposure group.

### The research question 

* What is the effect of perioperative transfusion of allogeneic RBCs stored for a prolonged period on the time to biochemical recurrence of prostate cancer after prostatectomy?

# Report - Study Findings

### Background

Prostate cancer ranks as the most prevalent malignant neoplasm among men, with radical prostatectomy serving as a primary therapeutic approach. While surgical advancements have minimized intraoperative blood loss, many patients still require perioperative blood transfusions. The storage duration of transfused red blood cells (RBCs) is a critical factor suspected to influence the recurrence of prostate cancer post-surgery due to immunomodulatory effects associated with older blood units. This study investigates whether prolonged storage of allogeneic RBCs is associated with an increased risk of biochemical recurrence.

### Objectives

The primary objective of this study is to evaluate the impact of RBC storage duration on the time to biochemical recurrence of prostate cancer following radical prostatectomy. We hypothesized that perioperative transfusion of allogeneic RBCs stored for longer periods would correlate with earlier biochemical recurrence.

### Methods

Dataset Description: The study utilized data from 316 patients who underwent radical prostatectomy and received allogeneic blood transfusions at the Cleveland Clinic. Patients were grouped into three categories based on the storage duration of transfused RBCs: younger, middle, and older. The primary endpoint was the time to biochemical recurrence, defined by a rise in prostate-specific antigen (PSA) levels to at least 0.4 ng/mL after surgery.

Statistical Analysis: The dataset was analyzed using SAS software. Kaplan-Meier survival curves assessed univariate effects of RBC age on recurrence times. Cox proportional hazards models were implemented to adjust for potential confounders such as patient age, preoperative PSA levels, and Gleason scores. Custom numeric formats were used for RBC age groups to enhance the interpretability of the models.

### Results

**Descriptive Statistics:**

The mean age of the study participants was 61 years, and the average preoperative PSA was 8.19 ng/mL. The distribution of patients across RBC age groups was relatively uniform.

**Survival Analysis:**

Kaplan-Meier estimates did not demonstrate significant differences in biochemical recurrence-free survival across the three RBC age groups (Log-rank p = 0.7221).

**Multivariate Cox Regression:**

The Cox model adjusted for age, preoperative PSA, and Gleason scores revealed no statistically significant association between RBC storage duration and time to biochemical recurrence. Hazard ratios for middle and older age groups compared to the younger group were 1.168 and 1.045, respectively, with p-values exceeding 0.05.

### Discussion

Contrary to the hypothesis, the analysis found no significant evidence that the storage duration of transfused allogeneic RBCs affects the time to biochemical recurrence in prostate cancer patients post-radical prostatectomy. These findings suggest that other factors, such as genetic predispositions and the overall health status of patients, may play more critical roles in cancer progression than the age of transfused RBCs.

### Limitations

The study's retrospective nature and the specific patient cohort from a single institution may limit the generalizability of the findings.
Potential biases in the assignment to RBC age groups and unmeasured confounding variables could influence the results.

### Conclusion

This study does not support the hypothesis that longer storage duration of transfused RBCs is associated with earlier biochemical recurrence of prostate cancer. While the quality of blood transfusions remains a crucial component of postoperative care, our findings emphasize the need for continued research into the mechanisms by which blood storage duration might influence clinical outcomes in cancer patients.

### Future Research

Further research involving larger, multicentric cohorts and prospective designs would help clarify these findings and potentially identify the subgroup of patients who might be more susceptible to the effects of older transfused blood. Additionally, exploring molecular changes in stored blood over time could provide insights into the biological mechanisms underlying these clinical observations.

