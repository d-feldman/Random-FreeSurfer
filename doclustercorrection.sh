#!/bin/tcsh

setenv study $argv[1]

foreach meas (thickness volume)
  foreach hemi (lh rh)
    foreach smoothness (10)
      foreach dir ({$hemi}.{$meas}.{$study}.{$smoothness}.glmdir)
        mri_glmfit-sim \
          --glmdir {$dir} \
          --cache 1.3 pos \
          --cwp 0.05  \
          --2spaces
      end
    end
  end
end