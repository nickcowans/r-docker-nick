FROM rocker/r-ver:4.1.0
RUN mkdir /home/analysis

RUN R -e "options(repos = \
  list(CRAN = 'http://mran.microsoft.com/snapshot/2020-07-16/')); \
  install.packages('MASS', dependencies = T)"

COPY script.R /home/analysis/script.R

CMD ["/usr/local/bin/Rscript", "/home/analysis/script.R"]
