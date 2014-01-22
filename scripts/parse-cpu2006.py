#!/usr/bin/python

import os
import ConfigParser

HOME = "/usr0/home/yixinluo"
CPU2006PATH = HOME + "/Benchmarks/CPU2006"
CONFIGSPATH = "./configs"
exclude = ["482.sphinx3", "400.perlbench", "418.wrf"]

if not os.path.exists(CONFIGSPATH):
  os.mkdir(CONFIGSPATH)

lBenchmarks = []
for benchmark in os.listdir(CPU2006PATH):
  if benchmark in exclude:
    continue
  if os.path.isdir(CPU2006PATH + "/" + benchmark):
    benchmarkPath = CPU2006PATH + "/" + benchmark
    lBenchmarks += [benchmark]
    dataRefPath = benchmarkPath + "/data/ref/input"
    """
    if os.path.isdir(dataRefPath):
      for filename in os.listdir(dataRefPath):
        if not os.path.exists(benchmarkPath + "/" + filename):
          os.symlink(dataRefPath + "/" + filename, benchmarkPath + "/" + filename)
    dataRefPath = benchmarkPath + "/data/all/input"
    if os.path.isdir(dataRefPath):
      for filename in os.listdir(dataRefPath):
        if not os.path.exists(benchmarkPath + "/" + filename):
          os.symlink(dataRefPath + "/" + filename, benchmarkPath + "/" + filename)
    """

"""
# this is for generating run.sh 
for iniFileName in lBenchmarks:
  iniFile = ConfigParser.ConfigParser()
  iniFile.read(CPU2006PATH + "/" + iniFileName + "/benchmark.ini")
  print "pushd",iniFileName
  print "echo",iniFileName
  cmd = "./" + iniFile.get(" Default ", "exe")
  if (iniFile.has_option(" Default ", "args")):
    cmd += " " + iniFile.get(" Default ", "args")
  if (iniFile.has_option(" Default ", "stdin")):
    cmd += " < " + iniFile.get(" Default ", "stdin")
  print cmd
  print "popd"
"""

x86Cfg = ConfigParser.ConfigParser()
x86Cfg.add_section(" General ")
x86Cfg.set(" General ", "Cores", 1)
x86Cfg.set(" General ", "Threads", 1)
x86Cfg.set(" General ", "FastForward", 10000000)
x86Cfg.add_section(" Pipeline ")
x86Cfg.set(" Pipeline ", "FetchKind", "SwitchOnEvent")

for benchmark in lBenchmarks:
  inIniFile = ConfigParser.ConfigParser()
  inIniFile.read(CPU2006PATH + "/" + benchmark + "/benchmark.ini")
  ctxCfg = ConfigParser.ConfigParser()
  exe = inIniFile.get(" Default ", "exe")
  ctxCfg.add_section(" Context 0 ")
  ctxCfg.set(" Context 0 ", "Exe", exe)
  ctxCfg.set(" Context 0 ", "Cwd", CPU2006PATH + "/" + benchmark)
  cmd = "./" + exe
  if (inIniFile.has_option(" Default ", "args")):
    args = inIniFile.get(" Default ", "args")
    cmd += " " + args
    ctxCfg.set(" Context 0 ", "Args", args)
  if (inIniFile.has_option(" Default ", "stdin")):
    stdin = inIniFile.get(" Default ", "stdin")
    cmd += " < " + stdin
    ctxCfg.set(" Context 0 ", "Stdin", stdin)
  ctxFolder = CONFIGSPATH + "/" + benchmark
  if not os.path.exists(ctxFolder):
    os.mkdir(ctxFolder)
  ctxFile = open(ctxFolder + "/ctx-config", "w")
  ctxCfg.write(ctxFile)
  ctxFile.close()
  x86File = open(ctxFolder + "/x86-config", "w")
  x86Cfg.write(x86File)
  x86File.close()

