#!/bin/bash
sudo usermod -l dev@auto.kz -d /home/dev@auto.kz -m leo
sudo groupmod -n dev@auto.kz leo
sudo chfn -f "Dev Auto.kz" dev@auto.kz
