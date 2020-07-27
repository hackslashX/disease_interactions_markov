# Weight Training
libra mnlearnw -m ../models/mns/base-mn-0.01-all.mn -i ../data/export/train.csv -o final-0.01-all.mn -maxiter 500 -l1 0.001 -sd 0.1 -log final-0.01-all.log -v
libra mnlearnw -m ../models/mns/base-mn-1-unique.mn -i ../data/export/train.csv -o final-1-unique.mn -maxiter 500 -l1 0.001 -sd 0.1 -log final-1-unique.log -v

# Scoring
libra mscore -i ../data/export/eval.csv -m final-0.01-all.mn -pll > final-0.01-all.score
libra mscore -i ../data/export/eval.csv -m final-1-unique.mn -pll > final-1-unique.score

# Housekeeping
mv final* ../models/mnw/

