window.addEventListener('message', (event) => {
	let data = event.data
	if(data.action == 'showMessage') {
		console.log(`Hello ${data.hello}!`) // will print Hello world! in the console (F8)
	}
})
function deleteCar() {
	// Send a message to the server
	window.postMessage({action: 'deleteCar'}, '*')
}