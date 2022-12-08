#!/bin/tcsh

set study = $argv[1]

foreach hemi (lh rh)
  foreach smoothness (10)
    foreach meas (volume thickness)
        mri_glmfit \
        --y {$hemi}.{$meas}.{$study}.{$smoothness}.mgh \
        --fsgd FSGD/{$study}.fsgd \
        --C Contrasts/Pre-Post.mtx \
        --C Contrasts/Post-Pre.mtx \
        --surf fsaverage {$hemi}  \
        --cortex  \
        --glmdir {$hemi}.{$meas}.{$study}.{$smoothness}.glmdir
    end
  end
end