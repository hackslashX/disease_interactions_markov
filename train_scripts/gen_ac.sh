# Generate ACs for BN network models
libra acve -m ../models/cls/base-cl-1.bn -o ac-1-cl.ac -v

# Get default marginal probabilities
libra gibbs -m ../models/mnw/final-0.01-all.mn -q ../data/export/def.csv -v -marg -mo mp-0.01-all.marg
libra gibbs -m ../models/mnw/final-1-unique.mn -q ../data/export/def.csv -v -marg -mo mp-1-unique.marg
libra acquery -m ac-1-cl.ac -marg > mp-1-cl-marg

# Housekeeping
mv ac-* ../models/acs/
mv mp-* ../models/acs/