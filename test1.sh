#!/bin/bash

mkdir test

touch file{1..20}.txt

mv file{1..20}.txt test

cd test

ls
