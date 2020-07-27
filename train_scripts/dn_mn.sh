# Convert
libra dn2mn -m ../models/dns/base-dn-0.01.dn -o base-mn-0.01-all.mn -i ../data/export/train.csv -log base-mn-0.01-all.log -v
libra dn2mn -uniq -m ../models/dns/base-dn-0.01.dn -o base-mn-0.01-unique.mn -i ../data/export/train.csv -log base-mn-0.01-unique.log -v
libra dn2mn -m ../models/dns/base-dn-1.dn -o base-mn-1-all.mn -i ../data/export/train.csv -log base-mn-1-all.log -v
libra dn2mn -uniq -m ../models/dns/base-dn-1.dn -o base-mn-1-unique.mn -i ../data/export/train.csv -log base-mn-1-unique.log -v

# Features
libra fstats -i base-mn-0.01-all.mn > base-mn-0.01-all.features
libra fstats -i base-mn-1-all.mn > base-mn-1-all.features
libra fstats -i base-mn-0.01-unique.mn > base-mn-0.01-unique.features
libra fstats -i base-mn-1-unique.mn > base-mn-1-unique.features

# Score
libra mscore -i ../data/export/eval.csv -m base-mn-0.01-all.mn -pll > base-mn-0.01-all.score
libra mscore -i ../data/export/eval.csv -m base-mn-0.01-unique.mn -pll > base-mn-0.01-unique.score
libra mscore -i ../data/export/eval.csv -m base-mn-1-all.mn -pll > base-mn-1-all.score
libra mscore -i ../data/export/eval.csv -m base-mn-1-unique.mn -pll > base-mn-1-unique.score

# Housekeeping
mv base* ../models/mns/