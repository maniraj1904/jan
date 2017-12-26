/**
 * 
 */

function grammar(){
	this.version=$('#gramVersion').val();
	this.xmlLang=$('#xmlLang').val();
};

$(document).ready(function(){
	$('#download').click(function(){
		console.log('-----------');
		console.log(grammar());
		grammar();
	});
});
