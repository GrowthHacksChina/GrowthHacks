$(function() {

  $("#previousPage").click(function() {

    var previousPost = $(this).attr("previousPost")
    if (previousPost=="null") {
      alert("已经是最后一篇了");
    }
  });

  $("#nextPage").click(function() {

    var nextPost = $(this).attr("nextPost")
    if (nextPost=="null") {
      alert("已经是最后一篇了");
    }
  });

  // 收藏
  $("#thumb").click(function() {
    var obj = $(this);
    var postId = $(this).attr("postId");
    if ($(this).hasClass("fa-thumbs-o-up")) {
      like(postId, obj)
      return
    }
    if ($(this).hasClass("fa-thumbs-up")) {
      cancelLike(postId, obj)
      return
    }
  });

  //点赞
  $("#heart").click(function() {
    var obj = $(this);
    var postId = $(this).attr("postId");
    if ($(this).hasClass("fa-heart-o")) {
      favorite(postId, obj)
      return
    }
    if ($(this).hasClass("fa-heart")) {
      console.log("1")
      alert("您已收藏成功，请到个人中心查看已收藏文章！");
    }
  });

})

function cancelLike(postId, obj) {
  $.ajax({
    url: "/posts/" + postId + "/cancel_like/",
    method: "post",
    dataType: "json",
    success: function(data) {
      if (data.status == "Success") {
        obj.removeClass("fa-thumbs-up").addClass("fa-thumbs-o-up");
        $("#supports").text(data.support);
      }
    }
  })
}

function like(postId, obj) {
  $.ajax({
    url: "/posts/" + postId + "/like/",
    method: "post",
    dataType: "json",
    success: function(data) {
      if (data.status == "Success") {
        obj.removeClass("fa-thumbs-o-up").addClass("fa-thumbs-up");

        $("#supports").text(data.support);
      } else if(data.status == "Failed"){
        alert(data.msg)
        window.location = "/users/sign_in"
      }

    }
  })
}

function favorite(postId, obj) {
  $.ajax({
    url: "/account/posts/" + postId + "/add_to_favorite_test/",
    method: "post",
    dataType: "json",
    success: function(data) {
      if (data.status == "Success") {
        obj.removeClass("fa-heart-o").addClass("fa-heart");
      } else if(data.status == "Failed") {
        window.location = "/users/sign_in";
      }
      alert(data.msg)

    }
  })
}
