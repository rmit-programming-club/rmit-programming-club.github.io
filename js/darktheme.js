document.body.style.backgroundColor = sessionStorage.getItem('bg');
document.body.style.color = sessionStorage.getItem('cc');

function theme() {	
	if (sessionStorage.getItem('bg') === 'rgb(244, 244, 244)') {
		sessionStorage.setItem('bg', 'rgb(31, 31, 31)');
		sessionStorage.setItem('cc', 'white');
		
	} else if (sessionStorage.getItem('bg') == null || undefined) {
		sessionStorage.setItem('bg', 'rgb(31, 31, 31)');
		sessionStorage.setItem('cc', 'white ');
		
	} else if (sessionStorage.getItem('bg') === 'rgb(31, 31, 31)') {
		sessionStorage.setItem('bg', 'rgb(244, 244, 244)');
		sessionStorage.setItem('cc', '#333');
	}
	document.body.style.backgroundColor = sessionStorage.getItem('bg');
	document.body.style.color = sessionStorage.getItem('cc');
}