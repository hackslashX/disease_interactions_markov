# Get marginal probabilities
libra gibbs -m ../models/mnw/final-0.01-all.mn -q scene/query.csv -v -marg -mo r-0.01-all.marg > r-0.01-all.log
libra gibbs -m ../models/mnw/final-1-unique.mn -q scene/query.csv -v -marg -mo r-1-unique.marg > r-1-unique.log
libra acquery -m ../models/acs/ac-1-cl.ac -marg -q scene/query.csv > r-1-cl-marg

# Housekeeping
mv r-* ../models/qrs/