/**
 * @license Copyright (c) 2003-2020, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

	config.extraPlugins = 'katex';
	config.katexLibCss = '';
	config.katexLibJs = '';
	 
	// Default class of an element that will be converted into a widget.
	config.katexClass = 'math-tex';
	 
	// List of delimiters to look for math. Each delimiter is array of:
	// left delimiter (String), right delimiter (String), display mode (Boolean).
	// By default `\(` and `\[` are used, but `$` and `$$` are also supported.
	config.katexDelimiters = [];
	 
	// Additional options to pass into `katex.renderToString`.
	config.katexOptions = {};
};
