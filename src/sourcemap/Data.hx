package sourcemap;

import haxe.DynamicAccess;

/**
 * Structure of a raw source map data.
 */
abstract Data(DynamicAccess<Any>) to DynamicAccess<Any> {

	/** Specification version. The only supported version is 3. */
	public var version(get,never) : Int;

	/** File with the generated code that this source map is associated with. */
	public var file(get,never) : Null<String>;

	/** This value is prepended to the individual entries in the `sources` field. */
	public var sourceRoot(get,never) : Null<String>;

	/** A list of original source files. */
	public var sources(get,never) : Array<String>;

	/** A list of contents of files mentioned in `sources` if those files cannot be hosted. */
	public var sourcesContent(get,never) : Null<Array<String>>;

	/** A list of symbol names used in `mappings` */
	public var names(get,never) : Array<String>;

	/** Encoded mappings data. */
	public var mappings(get,never) : String;


	inline function get_version() : Int
		return this.get('version');

	inline function get_file() : Null<String>
		return this.get('file');

	inline function get_sourceRoot() : Null<String>
		return this.get('sourceRoot');

	inline function get_sources() : Array<String>
		return this.get('sources');

	inline function get_sourcesContent() : Null<Array<String>>
		return this.get('sourcesContent');

	inline function get_names() : Array<String>
		return this.get('names');

	inline function get_mappings() : String
		return this.get('mappings');
}