# no pert (for reference)
sbatch scripts/paper_experiments/slurm_reppo_pert_robustness.sh 1.0 1.0 1.0
sbatch scripts/paper_experiments/slurm_reppo_pert_robustness.sh 1.0 1.0 1.5  # eval on perturbed env


# gravity perturbations

sbatch scripts/paper_experiments/slurm_reppo_pert_robustness.sh 1.0 1.5 1.5
# sbatch scripts/paper_experiments/slurm_reppo_pert_robustness.sh 1.0 2.0

sbatch scripts/paper_experiments/slurm_lang_pert_robustness.sh 1.0 1.5 1.5
# sbatch scripts/paper_experiments/slurm_lang_pert_robustness.sh 1.0 2.0
