function LoadAudio(string FilePath)
{
try {avisource(FilePath).KillVideo()
debugsub="avisource"}
	catch(err_msg){
		try{lsmashaudiosource(FilePath)
		debugsub="lsmash"}
		catch(err_msg){
			try{lwlibavaudiosource(FilePath,cache=false)
			debugsub="lwlibav"}
			catch(err_msg){
				try{ffaudiosource(FilePath,cache=false,atrack=-1)
				debugsub="ffmpeg"}
				catch(err_msg){directshowsource(FilePath,video=false)
				debugsub="directshow"}
			}
		}
	}
last
}
function LoadVideo(string FilePath, bool "debug")
{
debug = default(debug,false)
try {avisource(FilePath ,audio = false )
debugsub="avisource"} 
catch(err_msg){
		try{lsmashvideosource(FilePath)
		debugsub="lsmash"}
		catch(err_msg){
			try{lwlibavvideosource(FilePath,cache=false)
			debugsub="lwlibav"}
			catch(err_msg){
				try{ffvideosource(FilePath,cache=false)
				debugsub="ffmpeg"}
				catch(err_msg){directshowsource(FilePath,audio=false)
				debugsub="directshow"}
			}
		}

}
debug ? last.subtitle(debugsub) : last
}
function LoadAll(string FilePath, bool "debug")
{
debug = default(debug,false)
try {avisource(FilePath)
debugsub="avisource"} 
catch(err_msg){
		try{
		V=lsmashvideosource(FilePath)
		A=lsmashaudiosource(FilePath)
		Audiodub(V,A)
		debugsub="lsmash"}
		catch(err_msg){
			try{
			V=lwlibavvideosource(FilePath)
			A=lwlibavaudiosource(FilePath)
			Audiodub(V,A)
			debugsub="lwlibav"}
			catch(err_msg){
				try{ffms2(FilePath,cache=false,atrack=-1)
				debugsub="ffmpeg"}
				catch(err_msg){directshowsource(FilePath)
				debugsub="directshow"}
			}
		}

}
debug ? last.subtitle(debugsub) : last
}
