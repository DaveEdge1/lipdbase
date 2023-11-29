# Base image davidedge/lipdwebapps:lipdBase
FROM davidedge/lipd_webapps:lipdBase

## copy files
## COPY updateLipd.R updateLipd.R

## run Recon
RUN R -e 'remotes::install_github("nickmckay/lipdR", upgrade="never")'



#run from query-container directory (must include an 'output' folder)
#docker run -it --rm -v ~/queryByParams/output:/output davidedge/lipd_webapps:queryContainer
