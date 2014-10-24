#!/bin/bash
set -v
echo xxxx
time ./raceDriver--O3 1
echo xxxx
time ./raceDriver--O3 1
echo xxxx
time ./raceDriver--O3 1
echo xxxx
time ./raceDriver--O3 2
echo xxxx
time ./raceDriver--O3 2
echo xxxx
time ./raceDriver--O3 2
echo xxxx
time ./raceDriver--O3 10
echo xxxx
time ./raceDriver--O3 10
echo xxxx
time ./raceDriver--O3 10
echo xxxx
cat /proc/cpuinfo

