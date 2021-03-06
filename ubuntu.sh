##
## Python
## 
wget https://raw.githubusercontent.com/jdvelasq/CDA-01-instalacion/master/requirements.txt
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
bash  Anaconda3-5.2.0-Linux-x86_64.sh
source ~/.bashrc
pip install --upgrade msgpack
pip install --upgrade pip
pip install --upgrade jupyter
pip install --upgrade jupyterlab
source ~/.bashrc
sudo chmod u=rwx,g=rwx,o=rwx /usr/local/share
sudo apt install git
pip install -r requirements.txt
python -m bash_kernel.install
jupyter qtconsole --generate-config
jupyter notebook  --generate-config
source ~/.bashrc
jupyter contrib nbextension install --user
jupyter dashboards quick-setup --sys-prefix
source ~/.bashrc
sudo ~/anaconda3/bin/ipcluster nbextension enable
conda install -c conda-forge ipywidgets
conda install seaborn
conda install mpld3
conda install networkx

echo '\n\nAnaconda Python was installed!\n\n'

##
## R
##

yn=N
while true; do
    read -p "\n\nDo you wish to install R/RStudio (y/N)?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

wget https://raw.githubusercontent.com/jdvelasq/CDA-01-instalacion/master/requirements-R.txt

sudo apt install r-base

sudo apt-get install libcurl4-openssl-dev
sudo apt-get install build-essential
sudo apt-get install libcurl4-gnutls-dev
sudo apt-get install libxml2-dev
sudo apt-get install libssl-dev

sudo Rscript -e "install.packages(readLines('requirements-R.txt'), repos='https://cloud.r-project.org')"
sudo Rscript -e "devtools::install_github('IRkernel/IRkernel')"
Rscript -e "IRkernel::installspec(user = TRUE)"
sudo Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite('rhdf5')"
sudo Rscript -e "devtools::install_github('ramnathv/rCharts', 'ramnathv')"

##
## RStudio
##
wget https://download1.rstudio.org/rstudio-xenial-1.1.463-amd64.deb
sudo apt install gdebi-core
sudo gdebi rstudio-1.1.463-amd64.deb
source ~/.bashrc

echo '\n\nR/RStudio was installed!'




