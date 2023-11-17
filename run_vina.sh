#! /bin/bash

for f in ligand_*.pdbqt; do
    b=`basename $f .pdbqt`
    echo Processing $b
    mkdir -p $b
    vina --config config.txt --ligand $f --out ${b}/out.pdbqt --log ${b}/log.txt
done