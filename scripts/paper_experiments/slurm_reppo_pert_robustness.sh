#!/bin/bash
#SBATCH -N 1            # number of nodes on which to run
#SBATCH --gres=gpu:1        # number of gpus
#SBATCH --cpus-per-task=16     # number of cpus required per task
#SBATCH --mem=128GB
#SBATCH --ntasks=1
#SBATCH --tasks-per-node=1
#SBATCH --time=8:00:00      # time limit
#SBATCH --account aip-whitem
#SBATCH --job-name=sac_lang
#SBATCH --output=slurm_logs/slurm_mjx_op_%A_%a.out
#SBATCH --error=slurm_logs/slurm_mjx_op_%A_%a.err
#SBATCH --array=0-23%23

env=(AcrobotSwingup AcrobotSwingupSparse BallInCup CartpoleBalance CartpoleBalanceSparse CartpoleSwingup CartpoleSwingupSparse CheetahRun FingerSpin FingerTurnEasy FingerTurnHard FishSwim HopperHop HopperStand PendulumSwingup ReacherEasy ReacherHard WalkerRun WalkerWalk WalkerStand HumanoidStand HumanoidWalk HumanoidRun)
hostname

cd /home/$USER/projects/aip-whitem/pedanana/langevin/reppo
source .venv/bin/activate

python src/jaxrl/reppo.py --config-name=reppo \
    env=mjx_dmc_pert \
    env.name=${env[$((SLURM_ARRAY_TASK_ID%23))]} \
    seed=$RANDOM \
    tune=false \
    env.pert.body_mass_pert=$1 \
    env.pert.gravity_pert=$2 \
    tags=[reppo,pert_robustness]
