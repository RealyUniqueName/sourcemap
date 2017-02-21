package sourcemap;

typedef Data = {
	/** Specification version. The only supported version is 3. */
	version : Int,
	/** File with the generated code that this source map is associated with. */
	?file : String,
	/** This value is prepended to the individual entries in the `sources` field. */
	?sourceRoot : String,
	/** A list of original source files. */
	sources : Array<String>,
	/** A list of contents of files mentioned in `sources` if those files cannot be hosted. */
	?sourcesContent : Array<String>,
	/** A list of symbol names used in `mappings` */
	names : Array<String>,
	/** Encoded mappings data. */
	mappings : String
}