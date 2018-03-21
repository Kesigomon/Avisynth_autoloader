# Avisynth_autoloader
Avisynth用自動ロードプラグイン。

動画や音声、その両方を以下の5つの入力プラグインで読み込みます。  
・Avisource<br>
・Lsmashsource<br>
・Lwlibavsource<br>
・ffms2<br>
・directshowsource<br>

LoadAll(string FilePath, bool "debug")<br>
動画と音声両方が入っているファイルを読み込みます。<br>
string FilePath = <br>ファイルのパス。<br>
bool debug = どのプラグインで読み込んだか字幕でわかります。<br>

