package sourcemap;

import haxe.DynamicAccess;

abstract SourcePos(DynamicAccess<Any>) to DynamicAccess<Any> {

	/** Original source file. */
	public var source(get,set) : Null<String>;

	/** "1"-based line in the original file. */
	public var originalLine(get,set) : Null<Int>;

	/** Zero-based starting column of the line in the original file. */
	public var originalColumn(get,set) : Null<Int>;

	/** Zero-based starting column of the line in the generated file. */
	public var generatedColumn(get,set) : Int;

	/** "1"-based line in the generated file. */
	public var generatedLine(get,set) : Int;

	/** Original symbol name. */
	public var name(get,set) : Null<String>;

	public function new() {
		this = {};
	}

	inline function get_source() : Null<String>
		return this.get('source');

	inline function set_source(v:Null<String>) : Null<String>
		return this.set('source', v);

	inline function get_originalLine() : Null<Int>
		return this.get('originalLine');

	inline function set_originalLine(v:Null<Int>) : Null<Int>
		return this.set('originalLine', v);

	inline function get_originalColumn() : Null<Int>
		return this.get('originalColumn');

	inline function set_originalColumn(v:Null<Int>) : Null<Int>
		return this.set('originalColumn', v);

	inline function get_generatedColumn() : Int
		return this.get('generatedColumn');

	inline function set_generatedColumn(v:Int) : Int
		return this.set('generatedColumn', v);

	inline function get_generatedLine() : Int
		return this.get('generatedLine');

	inline function set_generatedLine(v:Int) : Int
		return this.set('generatedLine', v);

	inline function get_name() : Null<String>
		return this.get('name');

	inline function set_name(v:Null<String>) : Null<String>
		return this.set('name', v);
}