var postTemplate = document.querySelector('#post-card');
var postContainer = document.querySelector('.row');

axios.get("http://localhost:3000/api/posts").then(function(response) {
  var posts = response.data;
  console.log(posts);

  posts.forEach(function(post) {
    var postClone = postTemplate.content.cloneNode(true);

    postClone.querySelector('.post-title').innerText = post.title;
    postClone.querySelector('.body').innerText = post.body;

    postContainer.appendChild(postClone);
  });
});