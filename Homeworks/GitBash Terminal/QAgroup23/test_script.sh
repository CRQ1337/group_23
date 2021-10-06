#!/bin/bash
mkdir test_scr
cd test_scr
mkdir testdir{1..3}
cd testdir1
touch first.txt second.txt third.txt first.json second.json
mkdir newdir{1..3}
ls -la
mv ./first.json second.txt ../testdir2/

