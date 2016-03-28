usersReady = ->
  $('#new_user').validate
    rules:
      'user[email]': 'required'
      'user[password]': 'required'
      'user[first_name]': 'required'
      'user[last_name]': 'required'
      'user[retypepassword]': equalTo: 'user[password]'
    messages:
      'user[email]': 'Please Enter valid Email'

$(document).ready(usersReady)