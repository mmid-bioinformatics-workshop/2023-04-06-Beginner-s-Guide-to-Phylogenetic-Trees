#!/bin/usr/env bash


# April 6, 2023 - Beginner's Guide to Phylogenetic Trees code


## Getting started

# 1. Open up the terminal and navigate to your workshop directory
# change USERNAME to your own
# change INSERT_DIR_NAME to your own path

cd /mnt/c/Users/USERNAME/INSERT_DIR_NAME


# 2. Make a directory called Phylo

mkdir Phylo


# 3. List the contents to confirm the new directory has been created

ls


# 4. Download the multiple sequence alignment fasta file to the Phylo directory

https://drive.google.com/file/d/1AR9iopL--g3sf9Uvu83BLNRJhAKxBMz3/view


# 5. Unzip the msa.fasta.zip file

unzip msa.fasta.gz


# 6. List the contents of the directory to confirm the file is ready

ls


#-----------------------------------------------------------------------------------
## Install packages

# 1. Install iqtree in your workshop environment

conda activate conda_workshop

conda install -y -c bioconda iqtree


# 2. Check if the package was installed

conda list


#-----------------------------------------------------------------------------------
## Multiple Sequence Alignment

# 1. Make a directory in Phylo called msa

mkdir msa


# 2. Move msa file into msa directory

mv msa.fasta ./msa


# 3. Verify if the file was moved

cd msa
ls


# 4. Activate conda environment that contains the iqtree package (conda_workshop) if not activated already

source activate conda_workshop


# 5. Return to Phylo directory

cd ..


# 6. Make a new directory called iqtree

mkdir iqtree


# 7. Run IQ-TREE

cd iqtree
iqtree -s ../msa/msa.fasta 

## NOTE: If you are at the NML using high performance computer, use the following code
sbatch -c 1 --mem=48G -p NMLResearch -J iqtree --wrap="iqtree -s ../msa/msa.fasta"


#-----------------------------------------------------------------------------------
## IQ-TREE OUTPUT

# 1. Check if output for iqtree was generated

ls 


# 2. Move to msa directory

cd ../msa
ls


# 3. Move tree file to iqtree directory and move into that directory

mv *.treefile ../iqtree
cd ../iqtree
ls



#-----------------------------------------------------------------------------------
## Interactive Tree viewer

# 1. In the iqtree directory, make a copy of the tree file while changing the extension to specify the file input requirements of phandango

# (use .tree or .tre extension)

cp msa.fasta.treefile msa.fasta.tree 
ls


# 2. Drag and drop the new tree file (.nwk) into phandango.





