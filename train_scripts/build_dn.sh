# Create Models
libra dnlearn -i ../data/export/train.csv -kappa 0.0001 -o base-dn-0.0001.dn -log base-dn-0.0001.log -v
libra dnlearn -i ../data/export/train.csv -kappa 0.001 -o base-dn-0.001.dn -log base-dn-0.001.log -v
libra dnlearn -i ../data/export/train.csv -kappa 0.01 -o base-dn-0.01.dn -log base-dn-0.01.log -v
libra dnlearn -i ../data/export/train.csv -kappa 0.1 -o base-dn-0.1.dn -log base-dn-0.1.log -v
libra dnlearn -i ../data/export/train.csv -kappa 1 -o base-dn-1.dn -log base-dn-1.log -v

# Scoring
libra mscore -i ../data/export/eval.csv -m base-dn-0.0001.dn -pll > base-dn-0.0001.score
libra mscore -i ../data/export/eval.csv -m base-dn-0.001.dn -pll > base-dn-0.001.score
libra mscore -i ../data/export/eval.csv -m base-dn-0.01.dn -pll > base-dn-0.01.score
libra mscore -i ../data/export/eval.csv -m base-dn-0.1.dn -pll > base-dn-0.1.score
libra mscore -i ../data/export/eval.csv -m base-dn-1.dn -pll> base-dn-1.score

# Features info
libra fstats -i base-dn-0.0001.dn > base-dn-0.0001.features
libra fstats -i base-dn-0.001.dn base-dn-0.001.features
libra fstats -i base-dn-0.01.dn base-dn-0.01.features
libra fstats -i base-dn-0.1.dn base-dn-0.1.features
libra fstats -i base-dn-1.dn base-dn-1.features

# Housekeeping
mv base* ../models/dns/