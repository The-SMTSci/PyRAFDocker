#############################################################################
# fs600.cl header data to add site and instrument information to fits header
#############################################################################

# Observation time for IRAF internals.
nhedit @l.l JD           '(@"JD-OBS" + 0)'          "JD Keyword [JD-OBS Demetra]"            add+ update+ del- ver- show-
# site
nhedit @l.l OBSGEO-B     -30.47069                  "Site Latitude [deg]"                    add+ update+ del- ver- show-
nhedit @l.l OBSGEO-L     -70.764941                 "Site Longitude [deg]"                   add+ update+ del- ver- show-
nhedit @l.l OBSGEO-H     1565.427                   "Site Altitude [m]"                      add+ update+ del- ver- show-
nhedit @l.l LATITUDE     -30.47069                  "Site Latitude [deg]"                    add+ update+ del- ver- show-
nhedit @l.l LONGITUD     70.764941                  "Site Longitude [W deg]"                 add+ update+ del- ver- show-
nhedit @l.l ALTITUDE     1565.427                   "Site Altitude [deg]"                    add+ update+ del- ver- show-
nhedit @l.l JPLLONG      289.235059                 "Site Longitude JPL [deg]"               add+ update+ del- ver- show-
nhedit @l.l OBSERVAT     watson                     "Name of observatory"                    add+ update+ del- ver- show-

# instrument
nhedit @l.l TELESCOP     'Watson CDK 24 L600 Mount' "Telescope Description"                  add+ update+ del- ver- show-
nhedit @l.l INSTRUME     'FS600/QHY268M'            "Instrument Description"                 add+ update+ del- ver- show-
nhedit @l.l APTDIA       61.0                       "Main Aperture [cm]"                     add+ update+ del- ver- show-
nhedit @l.l APTAREA      3733.21                    "Clear aperture [cm2]"                   add+ update+ del- ver- show-
nhedit @l.l FOCALLEN     3974                       "Effective Focal Length [mm]"            add+ update+ del- ver- show-

# camera
nhedit @l.l XPIXSZ        3.76                      "X Pixel size [microns]"                 add+ update+ del- ver- show-
nhedit @l.l YPIXSZ        3.76                      "Y Pixel size [microns]"                 add+ update+ del- ver- show-
nhedit @l.l XBINNING     1                          "X Binning [cardinal]"                   add+ update+ del- ver- show-
nhedit @l.l YBINNING     1                          "Y Binning [cardinal]"                   add+ update+ del- ver- show-
nhedit @l.l CCDSUM       '(1 1)'                    "KPNO binning KW"                        add+ update+ del- ver- show-
nhedit @l.l CMOSGAIN     '(@"GAIN" + 0)'            "Keep camera special gain setting"       add+ update+ del- ver- show-
nhedit @l.l CMOSOFFS     '(@"OFFSET" + 0)'          "Keep camera special offset setting"     add+ update+ del- ver- show-
nhedit @l.l CMOSMODE     'Mode1_High_Gain'          "QHY Mode 1"                             add+ update+ del- ver- show-

# spectrograph
nhedit @l.l DISPAXIS     1                          "Dispersion along rows"                  add+ update+ del- ver- show-
nhedit @l.l ROTANG       -1                         "Rotator Angle Setting [deg]"            add+ update+ del- ver- show-
nhedit @l.l GRATING      600                        "Grating [lines/mm]"                     add+ update+ del- ver- show-
nhedit @l.l SLITWIDE     30                         "Slit Width [microns]"                   add+ update+ del- ver- show-
nhedit @l.l SLITPROJ     1.55                       "Slit projection on sky [arcsec]"        add+ update+ del- ver- show-
nhedit @l.l CWAVE        5000                       "Central Wavelength setting"             add+ update+ del- ver- show-
nhedit @l.l GRATANG      22.5                       "Angle of Grating"                       add+ update+ del- ver- show-
nhedit @l.l SPECCFG      'FS600'                    "Spectrograph configuration"             add+ update+ del- ver- show-
nhedit @l.l PA_PNT       -1                         "Position Angle observation [deg]"       add+ update+ del- ver- show-
nhedit @l.l BUNIT        'ADU'                      "Pixels are ADU"                         add+ update+ del- ver- show-
#nhedit @l.l OFFSET                                                                           del+ update+ ver- show-
#nhedit @l.l PEDISTAL                                                                         del+ update+ ver- show-
