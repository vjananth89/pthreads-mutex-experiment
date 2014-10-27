#!/bin/bash
set -v
echo xxxx
time ./raceDriver-volatile 1
echo xxxx
time ./raceDriver-volatile 1
echo xxxx
time ./raceDriver-volatile 1
echo xxxx
time ./raceDriver-volatile 2
echo xxxx
time ./raceDriver-volatile 2
echo xxxx
time ./raceDriver-volatile 2
echo xxxx
time ./raceDriver-volatile 10
echo xxxx
time ./raceDriver-volatile 10
echo xxxx
time ./raceDriver-volatile 10
echo xxxx
cat /proc/cpuinfo

