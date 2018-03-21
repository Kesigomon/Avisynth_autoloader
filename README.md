# Avisynth_autoloader
Avisynth用自動ロードスクリプト。

動画や音声、その両方を以下の5つの入力プラグインで読み込みます。  
・Avisource<br>
・Lsmashsource<br>
・Lwlibavsource<br>
・ffms2<br>
・directshowsource<br>

LoadAll(string FilePath, bool "debug")<br>
動画と音声両方を読み込みます。どちらかが存在しないと使えません。<br>
string FilePath = <br>ファイルのパス。<br>
bool debug = false<br>どのプラグインで読み込んだか字幕でわかります。<br>

LoadVideo(string FilePath, bool "debug")<br>
動画のみを読み込みます。パラメーターはLoadAllと同じです。<br>

LoadAudio(string FilePath)<br>
音声のみを読み込みます。パラメーターはLoadAllと同じです。（デバッグのみなし）<br>
