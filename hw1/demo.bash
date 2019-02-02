#!/bin/bash
set -eux
for e in Hopper-v2 Ant-v2 HalfCheetah-v2 Humanoid-v2 Reacher-v2 Walker2d-v2
do
    python3.5 run_expert.py experts/$e.pkl $e --render --num_rollouts=10
done
