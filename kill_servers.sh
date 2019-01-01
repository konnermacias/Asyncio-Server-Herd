#!/bin/bash

kill $( lsof -i:11605 -t ) & kill $( lsof -i:11606 -t ) & kill $( lsof -i:11607 -t ) & kill $( lsof -i:11608 -t ) & kill $( lsof -i:11609 -t )
