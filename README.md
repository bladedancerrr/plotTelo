# plotTelo


This package allows you to visualize the telomeric regions 
in the human chromosomes with user-defined .bed data.


### Quickstart

Have the packages ```dplyr```, ```tidyr```, and ```karyoploteR``` installed before.
(using the ```install.packages('packageName')``` command)

Install the plotTelo R package this Github repository.

Use the plotTelo function with a URL to your raw **bed** file OR a file path to your local bed file.

You must use the bed file format for your input data, meaning the data should look something like this:

`chr10_f	10001	10428`
`chr10_r	133787067	133787422`
`chr11_r	135076565	135076622
chr12_f	10001	10584`
`chr12_r	133264873	133265309
chr13_r	114353946	114354328
chr15_r	101980767	101981189
chr16_f	10001	10052
chr17_r	83247137	83247441
chr18_f	10004	10630
chr18_r	80262893	80263285
chr19_r	58607456	58607616
chr1_f	10001	10467
chr1_r	248945537	248946422
chr21_r	46699846	46699983
chr22_r	50807810	50808468
chr2_f	10179	10589
chr2_r	242183308	242183529
chr3_f	10002	10977
chr4_f	10005	10196
chr4_r	190204510	190204555`



```plotTelo(/home/User/data/myData.bed)```
OR
```plotTelo(raw.github.com/myrepo/mydata.bed)``` *(please be careful to link to your RAW data, and not a HTML page!)* 



Done!


