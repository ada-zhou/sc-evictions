SC cities
================
Ada
2020-01-30

``` r
# Libraries
library(tidyverse)

# Parameters
file_data <- 
  here::here("data/cities.rds")
#===============================================================================

# Code

df <- read_rds(file_data)

df %>% 
  count(
    geoid, 
    name, 
    name = "eviction_count", 
    wt = evictions, 
    sort = TRUE
  ) %>% 
  knitr::kable()
```

| geoid   | name                    | eviction\_count |
| :------ | :---------------------- | --------------: |
| 4550875 | North Charleston        |         3660.10 |
| 4516000 | Columbia                |         2224.63 |
| 4513330 | Charleston              |         1546.21 |
| 4562395 | St. Andrews             |         1382.72 |
| 4525810 | Florence                |         1096.81 |
| 4519285 | Dentsville              |          768.76 |
| 4549075 | Myrtle Beach            |          728.84 |
| 4501360 | Anderson                |          641.77 |
| 4532065 | Hanahan                 |          529.27 |
| 4529815 | Goose Creek             |          480.36 |
| 4500550 | Aiken                   |          465.05 |
| 4528060 | Gaffney                 |          390.25 |
| 4567390 | Socastee                |          384.65 |
| 4539220 | Ladson                  |          334.80 |
| 4548535 | Mount Pleasant          |          333.49 |
| 4565207 | Seven Oaks              |          296.52 |
| 4570270 | Summerville             |          279.55 |
| 4540615 | Laurens                 |          267.96 |
| 4575850 | West Columbia           |          254.58 |
| 4578820 | Woodfield               |          254.28 |
| 4528870 | Georgetown              |          251.81 |
| 4516405 | Conway                  |          224.63 |
| 4539895 | Lancaster               |          222.18 |
| 4544575 | Marion                  |          214.15 |
| 4521985 | Easley                  |          207.54 |
| 4573105 | Union                   |          202.93 |
| 4515295 | Clinton                 |          194.59 |
| 4550695 | North Augusta           |          182.50 |
| 4518565 | Darlington              |          174.91 |
| 4539310 | Lake City               |          171.52 |
| 4534720 | Homeland Park           |          169.61 |
| 4512655 | Cayce                   |          165.83 |
| 4547275 | Moncks Corner           |          165.34 |
| 4514095 | Chester                 |          165.33 |
| 4559190 | Red Hill                |          164.05 |
| 4532560 | Hartsville              |          161.31 |
| 4522075 | East Gaffney            |          158.05 |
| 4541335 | Lexington               |          146.93 |
| 4505680 | Bennettsville           |          144.09 |
| 4563665 | Sangaree                |          143.14 |
| 4558165 | Powdersville            |          133.17 |
| 4512965 | Centerville             |          123.74 |
| 4526305 | Forest Acres            |          106.32 |
| 4551280 | North Myrtle Beach      |          104.42 |
| 4551720 | Oak Grove               |          101.88 |
| 4574275 | Walterboro              |           98.36 |
| 4559110 | Red Bank                |           95.84 |
| 4513600 | Cheraw                  |           90.44 |
| 4530895 | Greenwood               |           89.43 |
| 4568380 | Springdale              |           88.90 |
| 4504060 | Barnwell                |           88.16 |
| 4535890 | Irmo                    |           82.30 |
| 4544350 | Manning                 |           81.59 |
| 4548805 | Mullins                 |           75.52 |
| 4542010 | Little River            |           73.79 |
| 4565095 | Seneca                  |           71.95 |
| 4501450 | Andrews                 |           66.57 |
| 4578460 | Winnsboro               |           65.55 |
| 4504690 | Beaufort                |           63.86 |
| 4529410 | Gloverville             |           63.62 |
| 4567705 | South Congaree          |           61.87 |
| 4532245 | Hardeeville             |           60.38 |
| 4534810 | Honea Path              |           59.49 |
| 4530265 | Graniteville            |           59.15 |
| 4538590 | Kingstree               |           58.71 |
| 4500100 | Abbeville               |           57.53 |
| 4514860 | Clearwater              |           56.90 |
| 4534045 | Hilton Head Island      |           55.51 |
| 4578505 | Winnsboro Mills         |           55.47 |
| 4528455 | Garden City             |           52.94 |
| 4551180 | Northlake               |           51.79 |
| 4556365 | Piedmont                |           51.30 |
| 4527070 | Fountain Inn            |           50.79 |
| 4513015 | Central                 |           50.75 |
| 4514950 | Clemson                 |           48.90 |
| 4510360 | Burton                  |           48.74 |
| 4555645 | Pendleton               |           47.05 |
| 4577875 | Williamston             |           44.60 |
| 4575220 | Watts Mills             |           43.38 |
| 4505410 | Belvedere               |           42.17 |
| 4559020 | Ravenel                 |           40.84 |
| 4526372 | Forestbrook             |           40.79 |
| 4571980 | Timmonsville            |           40.55 |
| 4560280 | Ridgeland               |           40.45 |
| 4563250 | Saluda                  |           40.30 |
| 4548985 | Murrells Inlet          |           40.04 |
| 4523290 | Elgin                   |           39.48 |
| 4570585 | Surfside Beach          |           36.15 |
| 4506310 | Bishopville             |           35.48 |
| 4558030 | Port Royal              |           35.11 |
| 4542730 | Loris                   |           34.10 |
| 4568425 | Springdale              |           33.46 |
| 4505365 | Belton                  |           33.12 |
| 4506400 | Blacksburg              |           33.09 |
| 4507210 | Bluffton                |           32.86 |
| 4534990 | Hopkins                 |           32.38 |
| 4556140 | Pickens                 |           31.64 |
| 4534495 | Hollywood               |           31.38 |
| 4554025 | Pageland                |           30.82 |
| 4528825 | Gayle Mill              |           30.46 |
| 4528780 | Gaston                  |           29.98 |
| 4574095 | Walhalla                |           29.22 |
| 4577965 | Williston               |           28.42 |
| 4524020 | Eureka Mill             |           28.16 |
| 4551145 | North Hartsville        |           28.12 |
| 4541380 | Liberty                 |           27.52 |
| 4576345 | West Pelzer             |           27.23 |
| 4519105 | Denmark                 |           26.65 |
| 4543720 | McCormick               |           26.02 |
| 4558795 | Quinby                  |           25.60 |
| 4510855 | Camden                  |           24.77 |
| 4549705 | New Ellenton            |           24.38 |
| 4556950 | Pine Ridge              |           24.28 |
| 4500955 | Allendale               |           24.17 |
| 4540390 | Langley                 |           23.87 |
| 4538095 | Kershaw                 |           23.49 |
| 4522795 | Edgefield               |           23.41 |
| 4504300 | Batesburg-Leesville     |           23.17 |
| 4537150 | Johnston                |           23.10 |
| 4510270 | Burnettown              |           22.88 |
| 4573330 | Utica                   |           21.52 |
| 4537105 | Johnsonville            |           21.33 |
| 4530490 | Great Falls             |           21.05 |
| 4562530 | St. George              |           20.93 |
| 4510720 | Calhoun Falls           |           20.34 |
| 4574725 | Warrenville             |           19.69 |
| 4503790 | Bamberg                 |           19.59 |
| 4510090 | Buffalo                 |           19.31 |
| 4547200 | Monarch Mill            |           19.25 |
| 4536205 | Jackson                 |           18.07 |
| 4524370 | Fairfax                 |           18.04 |
| 4502440 | Arial                   |           17.55 |
| 4536790 | Joanna                  |           17.47 |
| 4543630 | McColl                  |           16.50 |
| 4535980 | Irwin                   |           16.00 |
| 4526035 | Folly Beach             |           15.68 |
| 4539475 | Lake Murray of Richland |           15.19 |
| 4502125 | Arcadia Lakes           |           15.04 |
| 4565680 | Shell Point             |           14.94 |
| 4570675 | Swansea                 |           14.10 |
| 4541740 | Lincolnville            |           13.57 |
| 4554340 | Pamplico                |           13.40 |
| 4532335 | Harleyville             |           13.36 |
| 4550290 | Ninety Six              |           13.02 |
| 4536115 | Isle of Palms           |           13.00 |
| 4543000 | Lugoff                  |           12.73 |
| 4537330 | Jonesville              |           11.74 |
| 4527970 | Gadsden                 |           11.40 |
| 4576165 | Westminster             |           10.89 |
| 4526845 | Fort Lawn               |           10.45 |
| 4574680 | Ware Shoals             |            9.84 |
| 4557175 | Pinopolis               |            9.65 |
| 4530355 | Gray Court              |            9.07 |
| 4514140 | Chesterfield            |            8.90 |
| 4574050 | Wagener                 |            8.82 |
| 4562755 | St. Stephen             |            8.73 |
| 4522390 | Eastover                |            8.56 |
| 4564600 | Scranton                |            8.48 |
| 4540525 | Laurel Bay              |            8.24 |
| 4516990 | Cottageville            |            7.82 |
| 4545790 | Meggett                 |            7.31 |
| 4510000 | Bucksport               |            7.13 |
| 4558615 | Promised Land           |            6.84 |
| 4506490 | Blackville              |            6.82 |
| 4570225 | Summerton               |            6.56 |
| 4542190 | Lockhart                |            6.40 |
| 4555420 | Pelion                  |            5.97 |
| 4564712 | Seabrook Island         |            5.88 |
| 4503430 | Aynor                   |            5.72 |
| 4574140 | Wallace                 |            5.65 |
| 4532965 | Heath Springs           |            5.57 |
| 4503385 | Awendaw                 |            5.28 |
| 4517215 | Coward                  |            5.09 |
| 4523245 | Elgin                   |            5.06 |
| 4548900 | Murphys Estates         |            5.06 |
| 4555015 | Pawleys Island          |            4.96 |
| 4572745 | Turbeville              |            4.86 |
| 4539805 | Lamar                   |            4.67 |
| 4515310 | Clio                    |            4.50 |
| 4533145 | Hemingway               |            4.45 |
| 4563115 | Salley                  |            4.30 |
| 4500775 | Alcolu                  |            4.28 |
| 4507535 | Bonneau Beach           |            4.11 |
| 4536160 | Iva                     |            4.10 |
| 4539512 | Lake Secession          |            4.04 |
| 4538950 | Kline                   |            3.56 |
| 4536250 | Jacksonboro             |            3.49 |
| 4543135 | Lydia                   |            3.45 |
| 4507255 | Blythewood              |            3.41 |
| 4536610 | Jefferson               |            3.35 |
| 4567435 | Society Hill            |            3.06 |
| 4540210 | Lane                    |            2.86 |
| 4567255 | Snelling                |            2.73 |
| 4560325 | Ridge Spring            |            2.65 |
| 4521040 | Due West                |            2.54 |
| 4543360 | Lynchburg               |            2.45 |
| 4562305 | Russellville            |            2.41 |
| 4524730 | Fair Play               |            2.40 |
| 4503205 | Atlantic Beach          |            2.39 |
| 4565005 | Sellers                 |            2.35 |
| 4555060 | Paxville                |            2.27 |
| 4519870 | Donalds                 |            2.25 |
| 4530535 | Greeleyville            |            2.18 |
| 4562080 | Ruby                    |            2.16 |
| 4566760 | Six Mile                |            2.15 |
| 4550110 | Nichols                 |            2.13 |
| 4560415 | Ridgeway                |            2.12 |
| 4529050 | Gilbert                 |            2.09 |
| 4552540 | Olanta                  |            2.01 |
| 4555960 | Perry                   |            1.98 |
| 4560370 | Ridgeville              |            1.94 |
| 4570045 | Stuckey                 |            1.88 |
| 4507525 | Bonneau                 |            1.82 |
| 4523335 | Elko                    |            1.76 |
| 4570315 | Summit                  |            1.69 |
| 4517890 | Cross Hill              |            1.67 |
| 4543585 | McClellanville          |            1.51 |
| 4506040 | Bethune                 |            1.40 |
| 4572520 | Trenton                 |            1.36 |
| 4543495 | McBee                   |            1.24 |
| 4514050 | Chesnee                 |            1.18 |
| 4547320 | Monetta                 |            1.18 |
| 4506850 | Blenheim                |            1.16 |
| 4523200 | Ehrhardt                |            1.12 |
| 4534225 | Hodges                  |            1.06 |
| 4511755 | Carlisle                |            1.05 |
| 4513150 | Chapin                  |            1.04 |
| 4559920 | Richburg                |            1.02 |
| 4538162 | Kiawah Island           |            1.00 |
| 4574995 | Waterloo                |            0.96 |
| 4542280 | Lodge                   |            0.94 |
| 4523020 | Edisto Beach            |            0.93 |
| 4554925 | Patrick                 |            0.92 |
| 4555465 | Pelzer                  |            0.83 |
| 4576435 | West Union              |            0.81 |
| 4548355 | Mount Croghan           |            0.77 |
| 4550515 | Norris                  |            0.72 |
| 4578190 | Windsor                 |            0.72 |
| 4579450 | Yemassee                |            0.71 |
| 4516945 | Coronaca                |            0.69 |
| 4547050 | Modoc                   |            0.67 |
| 4559380 | Reevesville             |            0.65 |
| 4574590 | Ward                    |            0.60 |
| 4548670 | Mountville              |            0.59 |
| 4562980 | Salem                   |            0.55 |
| 4515625 | Cokesbury               |            0.54 |
| 4567165 | Smoaks                  |            0.45 |
| 4549975 | Newry                   |            0.43 |
| 4536655 | Jenkinsville            |            0.42 |
| 4561495 | Rockville               |            0.40 |
| 4508155 | Bradley                 |            0.39 |
| 4557670 | Plum Branch             |            0.39 |
| 4514590 | Clarks Hill             |            0.38 |
| 4542820 | Lowndesville            |            0.37 |
| 4568875 | Starr                   |            0.32 |
| 4571305 | Tatum                   |            0.26 |
| 4508830 | Briarcliffe Acres       |            0.24 |
| 4572655 | Troy                    |            0.23 |
| 4536070 | Islandton               |            0.17 |
| 4542865 | Lowrys                  |            0.17 |
| 4554700 | Parksville              |            0.17 |
| 4548310 | Mount Carmel            |            0.16 |
| 4570900 | Sycamore                |            0.16 |
| 4501810 | Antreville              |            0.14 |
| 4577920 | Willington              |            0.11 |
| 4572880 | Ulmer                   |            0.10 |
| 4558435 | Princeton               |            0.09 |
| 4536475 | Jamestown               |            0.06 |
| 4502080 | Arcadia                 |            0.00 |
| 4505770 | Berea                   |            0.00 |
| 4507345 | Boiling Springs         |            0.00 |
| 4507840 | Bowman                  |            0.00 |
| 4508110 | Boykin                  |            0.00 |
| 4508245 | Branchville             |            0.00 |
| 4509527 | Brookdale               |            0.00 |
| 4509865 | Brunson                 |            0.00 |
| 4510900 | Cameron                 |            0.00 |
| 4511125 | Campobello              |            0.00 |
| 4511350 | Cane Savannah           |            0.00 |
| 4512430 | Catawba                 |            0.00 |
| 4513060 | Central Pacolet         |            0.00 |
| 4514018 | Cherryvale              |            0.00 |
| 4514455 | City View               |            0.00 |
| 4515220 | Clifton                 |            0.00 |
| 4515355 | Clover                  |            0.00 |
| 4516360 | Converse                |            0.00 |
| 4516720 | Cope                    |            0.00 |
| 4516855 | Cordova                 |            0.00 |
| 4517260 | Cowpens                 |            0.00 |
| 4517845 | Cross Anchor            |            0.00 |
| 4518430 | Dalzell                 |            0.00 |
| 4519420 | Dillon                  |            0.00 |
| 4521265 | Duncan                  |            0.00 |
| 4521310 | Dunean                  |            0.00 |
| 4522547 | East Sumter             |            0.00 |
| 4522997 | Edisto                  |            0.00 |
| 4523470 | Elloree                 |            0.00 |
| 4523605 | Enoree                  |            0.00 |
| 4523830 | Estill                  |            0.00 |
| 4524100 | Eutawville              |            0.00 |
| 4524505 | Fairforest              |            0.00 |
| 4525360 | Fingerville             |            0.00 |
| 4525540 | Five Forks              |            0.00 |
| 4526890 | Fort Mill               |            0.00 |
| 4527835 | Furman                  |            0.00 |
| 4528375 | Gantt                   |            0.00 |
| 4529005 | Gifford                 |            0.00 |
| 4529275 | Glendale                |            0.00 |
| 4529635 | Golden Grove            |            0.00 |
| 4529950 | Govan                   |            0.00 |
| 4530220 | Gramling                |            0.00 |
| 4530850 | Greenville              |            0.00 |
| 4530985 | Greer                   |            0.00 |
| 4531885 | Hampton                 |            0.00 |
| 4533640 | Hickory Grove           |            0.00 |
| 4533820 | Hilda                   |            0.00 |
| 4534360 | Holly Hill              |            0.00 |
| 4535635 | India Hook              |            0.00 |
| 4535755 | Inman                   |            0.00 |
| 4535800 | Inman Mills             |            0.00 |
| 4536430 | James Island            |            0.00 |
| 4537465 | Judson                  |            0.00 |
| 4539715 | Lake View               |            0.00 |
| 4539772 | Lakewood                |            0.00 |
| 4539785 | Lake Wylie              |            0.00 |
| 4540075 | Landrum                 |            0.00 |
| 4540480 | Latta                   |            0.00 |
| 4541065 | Lesslie                 |            0.00 |
| 4541965 | Little Mountain         |            0.00 |
| 4542100 | Livingston              |            0.00 |
| 4543090 | Luray                   |            0.00 |
| 4543315 | Lyman                   |            0.00 |
| 4543675 | McConnells              |            0.00 |
| 4545115 | Mauldin                 |            0.00 |
| 4545295 | Mayesville              |            0.00 |
| 4545430 | Mayo                    |            0.00 |
| 4548737 | Mulberry                |            0.00 |
| 4549390 | Neeses                  |            0.00 |
| 4549570 | Newberry                |            0.00 |
| 4549885 | Newport                 |            0.00 |
| 4550560 | North                   |            0.00 |
| 4551550 | Norway                  |            0.00 |
| 4551887 | Oakland                 |            0.00 |
| 4552585 | Olar                    |            0.00 |
| 4553080 | Orangeburg              |            0.00 |
| 4553485 | Oswego                  |            0.00 |
| 4553845 | Pacolet                 |            0.00 |
| 4554535 | Parker                  |            0.00 |
| 4555150 | Peak                    |            0.00 |
| 4557085 | Pinewood                |            0.00 |
| 4557850 | Pomaria                 |            0.00 |
| 4558170 | Powdersville            |            0.00 |
| 4558570 | Privateer               |            0.00 |
| 4558705 | Prosperity              |            0.00 |
| 4559425 | Reidville               |            0.00 |
| 4559470 | Rembert                 |            0.00 |
| 4561112 | Riverview               |            0.00 |
| 4561405 | Rock Hill               |            0.00 |
| 4561720 | Roebuck                 |            0.00 |
| 4562035 | Rowesville              |            0.00 |
| 4562620 | St. Matthews            |            0.00 |
| 4563700 | Sans Souci              |            0.00 |
| 4563790 | Santee                  |            0.00 |
| 4564240 | Saxon                   |            0.00 |
| 4564465 | Scotia                  |            0.00 |
| 4565410 | Sharon                  |            0.00 |
| 4565950 | Shiloh                  |            0.00 |
| 4566400 | Silverstreet            |            0.00 |
| 4566580 | Simpsonville            |            0.00 |
| 4566917 | Slater-Marietta         |            0.00 |
| 4567210 | Smyrna                  |            0.00 |
| 4567750 | Southern Shops          |            0.00 |
| 4568177 | South Sumter            |            0.00 |
| 4568290 | Spartanburg             |            0.00 |
| 4568470 | Springfield             |            0.00 |
| 4568920 | Startex                 |            0.00 |
| 4569010 | Stateburg               |            0.00 |
| 4570090 | Sullivan’s Island       |            0.00 |
| 4570405 | Sumter                  |            0.00 |
| 4571395 | Taylors                 |            0.00 |
| 4571417 | Tega Cay                |            0.00 |
| 4571890 | Tigerville              |            0.00 |
| 4572430 | Travelers Rest          |            0.00 |
| 4573465 | Valley Falls            |            0.00 |
| 4573510 | Vance                   |            0.00 |
| 4573600 | Varnville               |            0.00 |
| 4573870 | Wade Hampton            |            0.00 |
| 4574635 | Ware Place              |            0.00 |
| 4575445 | Wedgefield              |            0.00 |
| 4575535 | Welcome                 |            0.00 |
| 4575580 | Wellford                |            0.00 |
| 4577380 | Whitmire                |            0.00 |
| 4577672 | Wilkinson Heights       |            0.00 |
| 4577785 | Williams                |            0.00 |
| 4578910 | Woodford                |            0.00 |
| 4579090 | Woodruff                |            0.00 |
| 4579630 | York                    |            0.00 |
