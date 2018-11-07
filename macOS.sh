##
## Descargas
## 
curl -O https://raw.githubusercontent.com/jdvelasq/CDA-01-instalacion/master/requirements.txt
curl -O https://repo.anaconda.com/archive/Anaconda3-5.3.0-MacOSX-x86_64.pkg
##
## Ejecuta los instaladores
##
open -W  Anaconda3-5.3.0-MacOSX-x86_64.pkg
source ~/.bash_profile

##
## Instala los paquetes de Python
##
pip install -r requirements.txt
python -m bash_kernel.install

jupyter contrib nbextension install --user
jupyter dashboards quick-setup --sys-prefix
source ~/.bash_profile

conda install -c conda-forge ipywidgets
conda install seaborn
conda install mpld3
conda install networkx
source ~/.bash_profile

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

curl -O https://raw.githubusercontent.com/jdvelasq/CDA-01-instalacion/master/requirements-R.txt
curl -O https://cran.cnr.berkeley.edu/bin/macosx/R-3.5.1.pkg
curl -O https://download1.rstudio.org/RStudio-1.1.463.dmg

open -W  R-3.5.1.pkg
open -W  RStudio-1.1.463.dmg
defaults write org.R-project.R force.LANG en_US.UTF-8


Rscript -e "install.packages(readLines('requirements-R.txt'), repos='https://cloud.r-project.org')"
Rscript -e "devtools::install_github('IRkernel/IRkernel')"
Rscript -e "IRkernel::installspec(user = FALSE)"
Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite('rhdf5')"
Rscript -e "install_github('ramnathv/rCharts', 'ramnathv')"





