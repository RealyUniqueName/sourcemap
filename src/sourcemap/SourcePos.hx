package sourcemap;

typedef SourcePos = {
	/** Original source file. */
	?source : String,
	/** "1"-based line in the original file. */
	?originalLine : Int,
	/** Zero-based starting column of the line in the original file. */
	?originalColumn : Int,
	/** Zero-based starting column of the line in the generated file. */
	generatedColumn : Int,
	/** "1"-based line in the generated file. */
	generatedLine : Int,
	/** Original symbol name. */
	?name : String
}