# BIOL300_Field
This file contains data on percent canopy cover of several plant taxonomic groups growing in an unmowed field on the Curtis property
just north of Queen's University Biological Station (Ontario, Canada) in September. Each group of students recorded cover of various plant
taxa using two survey techniques:

point-intercept transects: 10 m linear transect with point samples taken at 50 cm increments (20 points per transect). At each point,
a straight metal rod was inserted vertically in the ground and any plant touching the rod was examined to determine if it was a member
of any of the target plant taxa. Presence (at least one individual of a taxa touching the rod at least once) and absence (no individuals
of the taxa touching the rod) was recorded for each of the target taxa.

quadrats: 1 m by 1 m square areas were surveyed and the total percent canopy cover of each target taxa was estimated. Canopy cover
is defined as the area of ground covered by the vertical projection of the outermost perimeter of natural spread of foliage for each plant.
Area includes small openings between leaves and can overlap with area from other taxa. Area for all individuals from a single plant taxa
are combined. Estimates for each taxa were completed individually by multiple surveyors and a consensus value was recorded for each quadrat.
Since canopy cover may overlap among taxa, total percent canopy cover of all taxa within a quadrat can exceed 100 percent.

Samples were collected from the same field over 3 days, with the location of quadrats, and location/direction of transects established
using random number selection. Given the size of the field, the number of collection units (i.e. point samples or quadrats), and the random
determination of locations, we can consider each quadrat and each transect as an independent data point.

Each row in the file contains data from a single collection unit (i.e. point sample or quadrat).

Column names - Column Contents (data type)

date = date when measurements were taken (day/month/year)
time = time of day when measurements were taken (categories: early am = 9:00 - 10:30, late am = 10:30 - 12:00, early pm = 13:00 - 14:30, late pm = 14:30 - 16:00) (text)
location = description of geographic location of study site near QUBS Point (text)
method = survey method used (categories: PIT = point-intercept transect, Q = quadrat) (text)
rep = code for unique replicate//independent sampling units (text)
point = code for unique point collection within a transect (numeric)
grasses = indicates cover of grasses within collection unit. For point-intercept transects this is presence(1)/absence(0); for quadrats it is the estimated percent canopy cover (numeric)
goldenrod = indicates cover of goldenrod (any Solidago species) within collection unit. For point-intercept transects this is presence(1)/absence(0); for quadrats it is the estimated percent canopy cover (numeric)
milkweed = indicates cover of Common milkweed (Asclepias syriaca) within collection unit. For point-intercept transects this is presence(1)/absence(0); for quadrats it is the estimated percent canopy cover (numeric)
ragweed = indicates cover of Common ragweed (Ambrosia artemisiifolia) within collection unit. For point-intercept transects this is presence(1)/absence(0); for quadrats it is the estimated percent canopy cover (numeric)
BFtrefoil = indicates cover of Bird's-Foot trefoil (Lotus corniculatus) within collection unit. For point-intercept transects this is presence(1)/absence(0); for quadrats it is the estimated percent canopy cover (numeric)
woodsorrel = indicates cover of Upright yellow woodsorrel (Oxalis stricta) within collection unit. For point-intercept transects this is presence(1)/absence(0); for quadrats it is the estimated percent canopy cover (numeric)
