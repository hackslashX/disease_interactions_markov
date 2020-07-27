# Build Models
libra cl -i ../data/export/train.csv -o base-cl-0.001.bn -prior 0.001 -log base-cl-0.0011.log -v
libra cl -i ../data/export/train.csv -o base-cl-0.01.bn -prior 0.01 -log base-cl-0.01.log -v
libra cl -i ../data/export/train.csv -o base-cl-0.1.bn -prior 0.1 -log base-cl-0.1.log -v
libra cl -i ../data/export/train.csv -o base-cl-1.bn -prior 1 -log base-cl-1.log -v
libra cl -i ../data/export/train.csv -o base-cl-10.bn -prior 10 -log base-cl-10.log -v
libra cl -i ../data/export/train.csv -o base-cl-100.bn -prior 100 -log base-cl-100.log -v
libra cl -i ../data/export/train.csv -o base-cl-1000.bn -prior 1000 -log base-cl-1000.log -v

# Scoring
libra mscore -i ../data/export/eval.csv -m base-cl-0.001.bn -pll > base-cl-0.001.score
libra mscore -i ../data/export/eval.csv -m base-cl-0.01.bn -pll > base-cl-0.01.score
libra mscore -i ../data/export/eval.csv -m base-cl-0.1.bn -pll > base-cl-0.1.score
libra mscore -i ../data/export/eval.csv -m base-cl-1.bn -pll > base-cl-1.score
libra mscore -i ../data/export/eval.csv -m base-cl-10.bn -pll > base-cl-10.score
libra mscore -i ../data/export/eval.csv -m base-cl-100.bn -pll > base-cl-100.score
libra mscore -i ../data/export/eval.csv -m base-cl-1000.bn -pll > base-cl-1000.score

# Features info
libra fstats -i base-cl-0.001.bn > base-cl-0.001.features
libra fstats -i base-cl-0.01.bn > base-cl-0.01.features
libra fstats -i base-cl-0.1.bn > base-cl-0.1.features
libra fstats -i base-cl-1.bn > base-cl-1.features
libra fstats -i base-cl-10.bn > base-cl-10.features
libra fstats -i base-cl-100.bn > base-cl-100.features
libra fstats -i base-cl-1000.bn > base-cl-1000.features

# Housekeeping
mv base* ../models/cls/