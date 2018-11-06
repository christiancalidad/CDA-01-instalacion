##
## Descargas
## 
curl -O https://repo.anaconda.com/archive/Anaconda3-5.3.0-MacOSX-x86_64.pkg
curl -O https://cran.cnr.berkeley.edu/bin/macosx/R-3.5.1.pkg
curl -O https://download1.rstudio.org/RStudio-1.1.463.dmg
##
## Ejecuta los instaladores
##
open -W  Anaconda3-5.3.0-MacOSX-x86_64.pkg
open -W  R-3.5.1.pkg
open -W  RStudio-1.1.463.dmg
defaults write org.R-project.R force.LANG en_US.UTF-8

source ~/.bash_profile

##
## Instala los paquetes de Python
##
pip install -r requirements.txt

python -m bash_kernel.install

jupyter contrib nbextension install --user
jupyter dashboards quick-setup --sys-prefix

conda install -c conda-forge ipywidgets
conda install seaborn
conda install mpld3
conda install networkx

##
## Instala los paquetes de R
##
Rscript -e "install.packages(readLines('requirements-R.txt'), repos='https://cloud.r-project.org')"
Rscript -e "devtools::install_github('IRkernel/IRkernel')"
Rscript -e "IRkernel::installspec(user = FALSE)"
Rscript -e "source('http://bioconductor.org/biocLite.R'); biocLite('rhdf5')"
Rscript -e "install_github('ramnathv/rCharts', 'ramnathv')"





