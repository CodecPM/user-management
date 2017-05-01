function fetchUsers(){

	$('#usersTable').DataTable( {
    ajax: '/users'
} );

	$.ajax({
		method: 'GET',
		url: '/users',
		success: function(data, status, xhr){
			console.log(data, 'data')
		},

		error: function(xhr, status, error){
		}
	})
}