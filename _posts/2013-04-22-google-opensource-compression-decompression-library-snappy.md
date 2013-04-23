---
layout: post
title: "google开源了内部压缩/解压缩类库-snappy，性能相当惊人"
description: "snappy在google内部如BigTable和MapReduce中广泛应用，单核i7CPU压缩速度可以达到250MB/sec，解压缩速度达到500MB/sec"
category: industry
tags: [google, snappy, 开源, 压缩, 解压缩]
---
{% include JB/setup %}

项目主页： [http://code.google.com/p/snappy/](http://code.google.com/p/snappy/)

<p>Snappy is a compression/decompression library.</p>
<p>It does not aim for maximum compression, or compatibility with any other compression library; instead, it aims for very high speeds and reasonable compression.</p>
<p>For instance, compared to the fastest mode of zlib, Snappy is an order of magnitude faster for most inputs, but the resulting compressed files are anywhere from 20% to 100% bigger.</p>
<p>On a single core of a Core i7 processor in 64-bit mode, Snappy compresses at about 250 MB/sec or more and decompresses at about 500 MB/sec or more.</p>
<p>Snappy is widely used inside Google, in everything from BigTable and MapReduce to our internal RPC systems.</p>
<p>(Snappy has previously been referred to as “Zippy” in some presentations and the likes.)</p>

    $ svn checkout http://snappy.googlecode.com/svn/trunk/ snappy && cd snappy 
    $ ./configure && make
    $ ./snappy_unittest

Running microbenchmarks.
WARNING: Compiled with assertions enabled, will be slow.

Benchmark      |      Time(ns) |   CPU(ns)     |      Iterations | Type|
---------------|--------------:|--------------:|----------------:|------:|
BM_UFlat/0     |        223919 |    223930     |   893 436.1MB/s | html|
BM_UFlat/1     |       2161619 |   2162717     |    92 309.6MB/s | urls|
BM_UFlat/2     |         54322 |     54137     |    3269 2.2GB/s | jpg|
BM_UFlat/3     |        102384 |    102334     |  1915 879.1MB/s | pdf|
BM_UFlat/4     |        904663 |    899863     |   220 434.1MB/s | html4|
BM_UFlat/5     |         86095 |     86380     |  2315 271.6MB/s | cp|
BM_UFlat/6     |         40602 |     40607     |  5023 261.9MB/s | c|
BM_UFlat/7     |         13244 |     13198     | 15151 268.9MB/s | lsp|
BM_UFlat/8     |       3956500 |   3939400     |    50 249.3MB/s | xls|
BM_UFlat/9     |        762839 |    762337     |   261 190.3MB/s | txt1|
BM_UFlat/10    |        653573 |    655639     |   305 182.1MB/s | txt2|
BM_UFlat/11    |       1997280 |   1999700     |   100 203.5MB/s | txt3|
BM_UFlat/12    |       2717739 |   2711917     |    73 169.5MB/s | txt4|
BM_UFlat/13    |       1051349 |   1047460     |   189 467.3MB/s | bin|
BM_UFlat/14    |        147776 |    147252     |  1358 247.7MB/s | sum|
BM_UFlat/15    |         16914 |     16913     | 11173 238.3MB/s | man|
BM_UFlat/16    |        239393 |    238573     |   834 399.7MB/s | pb|
BM_UFlat/17    |        791722 |    793527     |   252 221.5MB/s | gaviota|
BM_UValidate/0 |        108440 |    108560     |  1842 899.6MB/s | html|
BM_UValidate/1 |       1187755 |   1190291     |   168 562.5MB/s | urls|
BM_UValidate/2 |           657 |       658     |289855 179.5GB/s | jpg|
BM_UValidate/3 |         37172 |     37224     |    5372 2.4GB/s | pdf|
BM_UValidate/4 |        438133 |    438530     |   456 890.8MB/s | html4|
BM_ZFlat/0     |        918760 |    916912     |   217 106.5MB/s | html (23.57 %)|
BM_ZFlat/1     |       9691700 |   9698550     |     20 69.0MB/s | urls (50.89 %)|
BM_ZFlat/2     |        169311 |    168772     |  1173 717.4MB/s | jpg (99.88 %)|
BM_ZFlat/3     |        417202 |    416255     |   478 216.1MB/s | pdf (82.13 %)|
BM_ZFlat/4     |       3691074 |   3703129     |    54 105.5MB/s | html4 (23.55 %)|
BM_ZFlat/5     |        356185 |    357089     |    560 65.7MB/s | cp (48.12 %)|
BM_ZFlat/6     |        155500 |    155339     |   1268 68.5MB/s | c (42.40 %)|
BM_ZFlat/7     |         52200 |     52129     |   3836 68.1MB/s | lsp (48.37 %)|
BM_ZFlat/8     |      12006875 |  11998187     |     16 81.8MB/s | xls (41.34 %)|
BM_ZFlat/9     |       2785472 |   2777361     |     72 52.2MB/s | txt1 (59.81 %)|
BM_ZFlat/10    |       2381506 |   2385180     |     83 50.1MB/s | txt2 (64.07 %)|
BM_ZFlat/11    |       7528884 |   7498846     |     26 54.3MB/s | txt3 (57.11 %)|
BM_ZFlat/12    |       9649700 |   9598500     |     20 47.9MB/s | txt4 (68.35 %)|
BM_ZFlat/13    |       3784346 |   3787884     |    52 129.2MB/s | bin (18.21 %)|
BM_ZFlat/14    |        564691 |    566487     |    353 64.4MB/s | sum (51.88 %)|
BM_ZFlat/15    |         67413 |     67366     |   2909 59.8MB/s | man (59.36 %)|
BM_ZFlat/16    |        903805 |    904841     |   221 105.4MB/s | pb (23.49 %)|
BM_ZFlat/17    |       2509924 |   2493291     |     79 70.5MB/s | gaviota (38.27 %)|

Running correctness tests.
All tests passed.
    
