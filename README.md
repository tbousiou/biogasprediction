# Biogas prediction
Biogas prediction with deep learning
This is a basic example and at the moment does not include all the work (i.e. hyperparameter tuning, testing with all data etc)
## Problem description
The goal is to model the anaerobic digestion process for biogas production
## Data
At the moment all data are generated from ADM1 model

The features are the Vs of cow, pig, poultry and the measurements are methname production (CH4) and amonia (NH4)

Data extraction and a basic exploration using python notebook

## NARX model
For modeling we use the **Non linear AutoRegressive with eXogenous** inputs neural network model 
using matlab deep learning toolbox. For more info about NARX see matlab docs

## Future work
Explore other network architectures (LSTM, transformers etc)
Train and test with real data from biogas plants
API for use in other systems
... many more
