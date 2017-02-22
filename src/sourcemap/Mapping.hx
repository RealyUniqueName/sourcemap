package sourcemap;

/**
 * Represents each group in source map `mappings` field.
 */
abstract Mapping(Array<Int>) {
	static inline var GENERATED_COLUMN = 0;
	static inline var SOURCE = 1;
	static inline var LINE = 2;
	static inline var COLUMN = 3;
	static inline var NAME = 4;

	/** Zero-based starting column of the line in the generated code */
	public var generatedColumn (get,never) : Int;
	/** Zero-based index into the `sources` list of source map */
	public var source (get,never) : Int;
	/** Zero-based starting line in the original source represented */
	public var line (get,never) : Int;
	/** Zero-based starting column of the line in the source represented */
	public var column (get,never) : Int;
	/** Zero-based index into the `names` list of source map */
	public var name (get,never) : Int;

	public inline function new (data:Array<Int>) {
		this = data;
	}

	public inline function getSourcePos (map:SourceMap, generatedLine:Int) : SourcePos {
		var pos : SourcePos = {
			generatedLine : generatedLine,
			generatedColumn : generatedColumn
		}
		if (hasSource()) {
			pos.originalLine = line + 1;
			pos.originalColumn = column;
			pos.source = map.sourceRoot + map.sources[source];
			if (hasName()) {
				pos.name = map.names[name];
			}
		}
		return pos;
	}

	public inline function hasSource () : Bool return this.length > SOURCE;
	public inline function hasLine () : Bool return this.length > LINE;
	public inline function hasColumn () : Bool return this.length > COLUMN;
	public inline function hasName () : Bool return this.length > NAME;

	public inline function offsetGeneratedColumn (offset:Int) this[GENERATED_COLUMN] += offset;
	public inline function offsetSource (offset:Int) this[SOURCE] += offset;
	public inline function offsetLine (offset:Int) this[LINE] += offset;
	public inline function offsetColumn (offset:Int) this[COLUMN] += offset;
	public inline function offsetName (offset:Int) this[NAME] += offset;

	inline function get_generatedColumn () return this[GENERATED_COLUMN];
	inline function get_source () return this[SOURCE];
	inline function get_line () return this[LINE];
	inline function get_column () return this[COLUMN];
	inline function get_name () return this[NAME];
}