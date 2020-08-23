for c in `ls -dv /cifs/*.cif`; do
    cif2cell -p pwscf -f $c --outputfile=$c.in;
done