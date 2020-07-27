# Disease Charecteristic Predictions using Markov Networks

This file contains basic information about the environment used and build instructions to install the required dependencies.

## Installing Libra 
The following installation steps are documented on clean Microsoft Azure D16s instance running Ubuntu 18.04 [AMD Epyc 7462 16C/32T and 64GB RAM] and further tested on Microsoft Windows Subsystem for Linux (WSL2) [Intel 7400 4C/4T and 16GB RAM].

- Install some build dependencies ```sudo apt install build-essential bubblewrap unzip```.
- Run this script to automatically fetch the compatible OPAM version ```sh <(curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)```.
- Now run ```opam init``` to initialize the environment. Don't modify the bash profile when prompted during the setup.
- Finally install Libra library ```opam install libra-tk --unlock-base```. The ```unlock-base``` switch is required since Libra hasn't been updated since 2015 and is thus incompatible with newer OPAM packages. Installing Libra will also install all other required dependencies.


## Directory Structure

- ``data`` directory contains the COVID patients dataset from https://www.kaggle.com/lalish99/covid19-mx. Please feel free to obtain an updated version of the dataset and replace the contents inside ``data/mexico_ds`` folder. 
- Additionally Jupyter Notebooks are also provided to trim and clean the data and make it much more representable by introducing classes and dropping duplicate, missing or not recorded values. Split notebook randomly splits the dataset into training and validation for the modelling scripts.
- ``models`` directory contains the trained models from the script file.
- ``train-scripts`` directory contains various scripts to create, validate, train and access models and its performance/score.

## Scripts
In the order of execution, the following scripts do the job as mentioned below:

- ``build_cl.sh`` creates a BN network using Chow Leu's algorithm. Results saved to ``models/cls``.
- ``build_dn.sh`` creates Dependency Networks (probablistic decision trees). Results saved to ``models/dns``.
- ``dn_mn.sh`` constructs Markov Networks from the created dependency networks. Results saved to ``models/mns``.
- ``mn_w.sh`` trains the generated Markov Networks over its weights to maximum feature objective function. Results saved to ``models/mnw`` for both ALL and UNIQUE variants.
- ``gen_ac.sh`` constructs circuits for exact inferrence. Results saved to ``models/acs``.
- ``query.sh`` generates probabilities for each variable for all models. Results saved to ``models/qrs``.
- ``sc_ene.sh`` performs query on each trained network. Returns PLLs and output predicted variables. Results saved to ``models/sc``.
- ``sc_ene`` folder contains the three scenarios/queries used to predict the network output given some evidence/fact.

 
