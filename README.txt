This software is released under the MIT License, see LICENSE.txt.
このソフトウェアはMITライセンスのもとで公開しています。LICENSE.txtをご覧ください

OpenStreetMapで使用されているOSMファイルをSIMAデータに変換する風スクリプトです。


*注意点*
この状態では9系決め打ちなので別の系にあるデータは気をつけないと誤差が広がります。
別途cblxy.rb( https://github.com/KMR-zoar/cblxy )とdms2d3.rb( https://github.com/KMR-zoar/dms2d3 )を使用しているのでダウンロードして同じディレクトリに配置してください。

単一ポリゴンのOSMファイルしか試していません、いろいろなデータが入っているOSMファイルを入力するとちゃんと動くかわからないので注意してください。


*todo*
スクリプト内でSIMAファイルを作成できるようにする。
ポリゴンを画地として出力できるようにする。
ラインを路線として出力できるようにする。

*使用方法*
# ruby osm2sim.rb %OSMファイル% > %SIMAファイル%

標準出力をSIMAファイルに送ってるだけです。


*更新*
2013-12ｰ20 - Zoar
作成

K'z Minor Release - Zoar
