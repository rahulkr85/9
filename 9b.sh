BEGIN { FS=":"
printf("\nEmpNo\tEmpName\tDesignation\tBasic\tDA\tHRA\tGROSS")
printf("\n..................................................")
}
{
if($4<10000)
{
hra=0.15*$4
da=0.45*$4
}
else
{
hra=0.20*$4
da=0.50*$4
}
gross=$4+hra+da
printf("\n%d\t%s\t%s\t%d\t%.2f\t%.2f\t%.2f",$1,$2,$3,$4,da,hra,gross)
}
END {
printf("\n .................................................\n")
}
