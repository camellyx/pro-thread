pushd /usr0/home/yixinluo/Benchmarks/CPU2006/433.milc
echo /usr0/home/yixinluo/Benchmarks/CPU2006/433.milc
time ./milc_base.i386 < su3imp.in
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/999.specrand
echo /usr0/home/yixinluo/Benchmarks/CPU2006/999.specrand
time ./specrand_base.i386 1255432124 234923
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/447.dealII
echo /usr0/home/yixinluo/Benchmarks/CPU2006/447.dealII
time ./dealII_base.i386 23
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/401.bzip2
echo /usr0/home/yixinluo/Benchmarks/CPU2006/401.bzip2
time ./bzip2_base.i386 input.source 280
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/465.tonto
echo /usr0/home/yixinluo/Benchmarks/CPU2006/465.tonto
time ./tonto_base.i386 
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/482.sphinx3
echo /usr0/home/yixinluo/Benchmarks/CPU2006/482.sphinx3
time ./sphinx3_base.i386 ctlfile . args.an4
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/998.specrand
echo /usr0/home/yixinluo/Benchmarks/CPU2006/998.specrand
time ./specrand_base.i386 1255432124 234923
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/473.astar
echo /usr0/home/yixinluo/Benchmarks/CPU2006/473.astar
time ./astar_base.i386 rivers.cfg
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/435.gromacs
echo /usr0/home/yixinluo/Benchmarks/CPU2006/435.gromacs
time ./gromacs_base.i386 -silent -deffnm gromacs -nice 0
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/445.gobmk
echo /usr0/home/yixinluo/Benchmarks/CPU2006/445.gobmk
time ./gobmk_base.i386 --quiet --mode gtp < 13x13.tst
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/403.gcc
echo /usr0/home/yixinluo/Benchmarks/CPU2006/403.gcc
time ./gcc_base.i386 166.i -o 166.s
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/436.cactusADM
echo /usr0/home/yixinluo/Benchmarks/CPU2006/436.cactusADM
time ./cactusADM_base.i386 benchADM.par
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/454.calculix
echo /usr0/home/yixinluo/Benchmarks/CPU2006/454.calculix
time ./calculix_base.i386 -i hyperviscoplastic
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/437.leslie3d
echo /usr0/home/yixinluo/Benchmarks/CPU2006/437.leslie3d
time ./leslie3d_base.i386 < leslie3d.in
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/470.lbm
echo /usr0/home/yixinluo/Benchmarks/CPU2006/470.lbm
time ./lbm_base.i386 3000 reference.dat 0 0 100_100_130_ldc.of
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/453.povray
echo /usr0/home/yixinluo/Benchmarks/CPU2006/453.povray
time ./povray_base.i386 SPEC-benchmark-ref.ini
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/456.hmmer
echo /usr0/home/yixinluo/Benchmarks/CPU2006/456.hmmer
time ./hmmer_base.i386 --fixed 0 --mean 500 --num 500000 --sd 350 --seed 0 retro.hmm
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/416.gamess
echo /usr0/home/yixinluo/Benchmarks/CPU2006/416.gamess
time ./gamess_base.i386 < triazolium.config
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/400.perlbench
echo /usr0/home/yixinluo/Benchmarks/CPU2006/400.perlbench
time ./perlbench_base.i386 -Itime ./lib checkspam.pl 2500 5 25 11 150 1 1 1 1
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/450.soplex
echo /usr0/home/yixinluo/Benchmarks/CPU2006/450.soplex
time ./soplex_base.i386 -m3500 ref.mps
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/462.libquantum
echo /usr0/home/yixinluo/Benchmarks/CPU2006/462.libquantum
time ./libquantum_base.i386 1397 8
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/410.bwaves
echo /usr0/home/yixinluo/Benchmarks/CPU2006/410.bwaves
time ./bwaves_base.i386 
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/481.wrf
echo /usr0/home/yixinluo/Benchmarks/CPU2006/481.wrf
time ./wrf_base.i386 namelist.input
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/434.zeusmp
echo /usr0/home/yixinluo/Benchmarks/CPU2006/434.zeusmp
time ./zeusmp_base.i386 
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/429.mcf
echo /usr0/home/yixinluo/Benchmarks/CPU2006/429.mcf
time ./mcf_base.i386 inp.in
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/464.h264ref
echo /usr0/home/yixinluo/Benchmarks/CPU2006/464.h264ref
time ./h264ref_base.i386 -d sss_encoder_main.cfg
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/444.namd
echo /usr0/home/yixinluo/Benchmarks/CPU2006/444.namd
time ./namd_base.i386 --input namd.input --iterations 38 --output namd.out
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/458.sjeng
echo /usr0/home/yixinluo/Benchmarks/CPU2006/458.sjeng
time ./sjeng_base.i386 ref.txt
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/459.GemsFDTD
echo /usr0/home/yixinluo/Benchmarks/CPU2006/459.GemsFDTD
time ./GemsFDTD_base.i386 
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/483.xalancbmk
echo /usr0/home/yixinluo/Benchmarks/CPU2006/483.xalancbmk
time ./xalancbmk_base.i386 -v t5.xml xalanc.xsl
popd
pushd /usr0/home/yixinluo/Benchmarks/CPU2006/471.omnetpp
echo /usr0/home/yixinluo/Benchmarks/CPU2006/471.omnetpp
time ./omnetpp_base.i386 omnetpp.ini
popd
