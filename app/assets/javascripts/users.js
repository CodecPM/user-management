	function fetchUsers(){
		$.ajax({
		method: 'GET',
		url: '/users-data',

		success: function(data, status, xhr){
			$('#users').html('');
			console.log(data, 'data');
			console.log(data[i], 'i')
			for(var i=0; i<data.length;i++){
			var row = "<tr>";
			row = row+"<td>"+data[i].first_name+"</td>";
			row = row+"<td>"+data[i].last_name+"</td>";
			row = row+"<td>"+data[i].email+"</td>";
			row = row+"<td>"+data[i].role+"</td>";
			row = row+"<td><img src=\'"+data[i].image.url+"\'/></td>";

			$('#users').append(row);
			}

		},

		error: function(xhr, status, error){
		}
	})
	}

