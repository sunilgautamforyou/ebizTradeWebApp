/**
 * 
 */
function limitText(field, maxChar) {
	var ref = $(field),
		val = ref.val();
	if (val.length >= maxChar) {
		ref.val(function() {
			console.log(val.substr(0, maxChar))
			return val.substr(0, maxChar);
		});
	}
}

function numberWithCommas(x) {
	return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
}
		