function ViewMode(view){
  fetch('/',{
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({view: view})
  }
).then(response=>{
  if(response.ok){
    console.log('View mode changed to '+view);
    window.location.href = '/login';
  }
  else{
    console.error('Failed to change view mode');
  }
}
)
.catch(error=>{
  console.error('Error:', error);
});
}