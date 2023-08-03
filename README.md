# GP GPAD Access Dashboard
## NHS England SW Intelligence and Insights

### About the Project

[![status: experimental](https://github.com/GIScience/badges/raw/master/status/experimental.svg)](https://github.com/GIScience/badges#experimental)

This repository holds code for the GP Access Dashboard

_**Note:** Only public or fake data are shared in this repository._

### Project Stucture

- The main code is found in the root of the repository (see Usage below for more information)

### Built With

[R Studio](RStudio Team (2020). RStudio: Integrated Development for R. RStudio, PBC, Boston, MA URL http://www.rstudio.com/.)  
[R Statistical Software](  R Core Team (2018). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/.)

library(flexdashboard)
library(tidyverse)
library(readr)
library(easycsv)
library(janitor)
library(lubridate)
library(timeDate)
library(bizdays)
library(readxl)
library(rjson)
library(TTR)
library(astsa)
library(forecast)
library(rlang)
library(gridExtra)
library(reactable)
library(english)
library(gridExtra)
library(here)
library(zoo)
library(NHSRplotthedots)

### Getting Started

#### Installation

To get a local copy up and running follow these simple steps.

To clone the repo:

### Usage
Code takes UKHF data from UDAL and creates GPAD dashboard.

Currently data is hard coded to caluclate rates for South West Region and ICBs.  This could be adjusted to work within other gegions.

#### Outputs
Results in markdown flex dashboard

#### Datasets
Uses publically available GPAD data.  This is pulled from UDAL within NHSE.


### Roadmap
Hope to add more analysis around timeliness metrics as these are developed nationally.

### Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

_See [CONTRIBUTING.md](./CONTRIBUTING.md) for detailed guidance._

### License

Unless stated otherwise, the codebase is released under [the MIT Licence][mit].
This covers both the codebase and any sample code in the documentation.

_See [LICENSE](./LICENSE) for more information._

The documentation is [© Crown copyright][copyright] and available under the terms
of the [Open Government 3.0][ogl] licence.

[mit]: LICENCE
[copyright]: http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/crown-copyright/
[ogl]: http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/

### Contact
Simon Wellesley-Miller

To find out more  get in touch at [Simon.Wellesley-Miller](mailto:simon.wellesley-miller@nhs.net).

