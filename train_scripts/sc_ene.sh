# Get marginal probabilities
libra gibbs -m ../models/mnw/final-0.01-all.mn -q sc_ene/1.csv -v -marg -mo sc1-0.01-all.marg
libra gibbs -m ../models/mnw/final-1-unique.mn -q sc_ene/1.csv -v -marg -mo sc1-1-unique.marg
libra acquery -m ../models/acs/ac-1-cl.ac -marg -q sc_ene/1.csv -mo sc1-1-cl.marg
libra gibbs -m ../models/mnw/final-0.01-all.mn -q sc_ene/2.csv -v -marg -mo sc2-0.01-all.marg
libra gibbs -m ../models/mnw/final-1-unique.mn -q sc_ene/2.csv -v -marg -mo sc2-1-unique.marg
libra acquery -m ../models/acs/ac-1-cl.ac -marg -q sc_ene/2.csv -mo sc2-1-cl.marg
libra gibbs -m ../models/mnw/final-0.01-all.mn -q sc_ene/3.csv -v -marg -mo sc3-0.01-all.marg
libra gibbs -m ../models/mnw/final-1-unique.mn -q sc_ene/3.csv -v -marg -mo sc3-1-unique.marg
libra acquery -m ../models/acs/ac-1-cl.ac -marg -q sc_ene/3.csv -mo sc3-1-cl.marg

# Housekeeping
mv sc* ../models/sc/