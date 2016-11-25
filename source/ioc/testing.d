﻿module ioc.testing;

version(unittest){
	import std.conv;
	import std.algorithm.searching;
	
	struct LogEntries {
		static string[] entries = [];
		
		static private string stringize(T...)(T args){
			string result = "";
			foreach (a; args)
				result ~= to!string(a);
			return result;
		}
		
		static void add(T...)(T args){
			entries ~= stringize(args);
		}
		
		static bool contains(T...)(T args){
			return entries.canFind(stringize(args));
		}
		
		static expect(T...)(T args){
			assert(contains(args));
		}
		
		static size_t indexOf(T...)(T args){
			return entries.length - entries.find(stringize(args)).length;
		}
		
		static void reset(){
			entries = [];
		}
	}
}
