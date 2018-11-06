##
## Python
## 
wget https://raw.githubusercontent.com/jdvelasq/CDA-01-instalacion/master/requirements.txt
wget https://raw.githubusercontent.com/jdvelasq/CDA-01-instalacion/master/requirements-R.txt
wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh
bash  Anaconda3-5.3.0-Linux-x86_64.sh
sudo chmod u=rwx,g=rwx,o=rwx /usr/local/share
sudo apt install python3-pip
sudo apt install ipython3

pip install jupyter
pip install -r requirements.txt

source ~/.profile

python -m bash_kernel.install

jupyter contrib nbextension install --user
jupyter dashboards quick-setup --sys-prefix

conda install -c conda-forge ipywidgets
conda install seaborn
conda install mpld3
conda install networkx

##
## R
##
sudo apt install r-base

sudo apt-get install libcurl4-openssl-dev
sudo apt-get install build-essential
sudo apt-get install libcurl4-gnutls-dev
sudo apt-get install libxml2-dev
sudo apt-get install libssl-dev

sudo Rscript -e "install.packages(readLines('requirements-R.txt'), repos='https://cloud.r-project.org')"
sudo Rscript -e "devtools::install_github('IRkernel/IRkernel')"
sudo Rscript -e "IRkernel::installspec(user = FALSE)"
sudo Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite('rhdf5')"
sudo Rscript -e "install_github('ramnathv/rCharts', 'ramnathv')"

##
## RStudio
##
wget https://download1.rstudio.org/rstudio-1.1.463-amd64.deb
deb rstudio-1.1.463-amd64.deb
source ~/.bash_profile



