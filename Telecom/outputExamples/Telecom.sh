sortcl /SPECIFICATION=Sort_Trunk.scl
sleep 3
if [ ! -e "REF-TRUNK.set" ]; then
    echo file "REF-TRUNK.set" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "REF-TRUNK.set" found.
fi
    
sortcl /SPECIFICATION=Sort_Prefix.scl
sleep 3
if [ ! -e "REF-PREFIX.set" ]; then
    echo file "REF-PREFIX.set" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "REF-PREFIX.set" found.
fi
    
sortcl /SPECIFICATION=Sort_Tariff.scl
sleep 3
if [ ! -e "REF-TARIFF.set" ]; then
    echo file "REF-TARIFF.set" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "REF-TARIFF.set" found.
fi
    
sortcl /SPECIFICATION=Sort_CDR1.scl
sortcl /SPECIFICATION=Sort_CDR2.scl
sortcl /SPECIFICATION=Sort_CDR3.scl
sortcl /SPECIFICATION=Sort_CDR4.scl
echo Job Ended