# no pert (to double check)
sbatch scripts/paper_experiments/slurm_reppo_pert_stress_test.sh 0.0 0.0  

# body perturbations
sbatch scripts/paper_experiments/slurm_reppo_pert_stress_test.sh 0.125 0.0
sbatch scripts/paper_experiments/slurm_reppo_pert_stress_test.sh 0.25 0.0
sbatch scripts/paper_experiments/slurm_reppo_pert_stress_test.sh 0.5 0.0 
sbatch scripts/paper_experiments/slurm_reppo_pert_stress_test.sh 1.0 0.0

# gravity perturbations
sbatch scripts/paper_experiments/slurm_reppo_pert_stress_test.sh 0.0 0.125 
sbatch scripts/paper_experiments/slurm_reppo_pert_stress_test.sh 0.0 0.25 
sbatch scripts/paper_experiments/slurm_reppo_pert_stress_test.sh 0.0 0.5  
sbatch scripts/paper_experiments/slurm_reppo_pert_stress_test.sh 0.0 1.0 
