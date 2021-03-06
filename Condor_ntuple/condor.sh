#!/bin/bash

echo "Starting job on " `date` #Date/time of start of job
echo "Running on: `uname -a`" #Condor job is running on this node
source /cvmfs/cms.cern.ch/cmsset_default.sh  ## if a tcsh script, use .csh instead of .sh
export SCRAM_ARCH=slc7_amd64_gcc700
echo $SCRAM_ARCH
eval `scramv1 project CMSSW CMSSW_10_2_18`
cd CMSSW_10_2_18/src
eval `scramv1 runtime -sh`
git cms-init --upstream-only
git cms-addpkg RecoLocalCalo/HcalRecProducers
git clone https://github.com/wang-hui/HCAL.git
mv HCAL/BuildFile.xml RecoLocalCalo/HcalRecProducers
mv HCAL/HBHEPhase1Reconstructor.cc RecoLocalCalo/HcalRecProducers/src
mv ${_CONDOR_SCRATCH_DIR}/HBHEPhase1Reconstructor_cfi.py RecoLocalCalo/HcalRecProducers/python
scram b -j 4
cd HCAL
#mv ${_CONDOR_SCRATCH_DIR}/miniAOD_data_RAW2DIGI_L1Reco_RECO_EI_PAT.py .
#mv ${_CONDOR_SCRATCH_DIR}/nanoAOD_data_NANO.py .
#mv ${_CONDOR_SCRATCH_DIR}/reco_data_RAW2DIGI_RECO.py .
mv ${_CONDOR_SCRATCH_DIR}/reco_test_RAW2DIGI_RECO.py .
mv ${_CONDOR_SCRATCH_DIR}/FileList.tar .
tar -xvf FileList.tar
pwd

mkdir results_temp
#cmsRun miniAOD_data_RAW2DIGI_L1Reco_RECO_EI_PAT.py $1
#cmsRun nanoAOD_data_NANO.py
#cmsRun reco_data_RAW2DIGI_RECO.py $1
cmsRun reco_test_RAW2DIGI_RECO.py $1

#xrdcp data_AOD_RAW2DIGI_L1Reco_RECO_EI_PAT.root root://cmseos.fnal.gov//${2}/data_AOD_${3}.root
#xrdcp data_NANO.root root://cmseos.fnal.gov//${2}/data_nanoAOD_${3}.root
#xrdcp reco_data_RAW2DIGI_RECO.root root://cmseos.fnal.gov//${2}/data_RECO_${3}.root
xrdcp reco_test.root root://cmseos.fnal.gov//${2}/reco_test_${3}.root
