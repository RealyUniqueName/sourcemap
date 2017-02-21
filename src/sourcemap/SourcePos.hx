package sourcemap;

typedef SourcePos = {
	source : String,
	line : Int,
	column : Int,
	?name : String
}