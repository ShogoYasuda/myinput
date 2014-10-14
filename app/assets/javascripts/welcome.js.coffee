$ ->
  $(window).scroll ->
    if $('.box').length > 50
      scrollHeight = $(document).height();
      scrollPosition = $(window).height() + $(window).scrollTop();
      if (scrollHeight - scrollPosition) / scrollHeight is 0
        $.get 'news', last: $('.box').length,(data) ->
          for i in [0..17]
            if data[i]['thumbnail']
              thumbnail = "<img class='thumbnail' src='"+data[i]['thumbnail']+"'>"
            else
              thumbnail = "<img class='thumbnail' src='/assets/noimage.png'>"
            $('.container').append("
              <div class='box'><span><img class='favicon' src='"+data[i]['favicon']+"'></span>
              <a href='http://"+data[i]['domain']+"' target='_blank'><span class='domain'>"+data[i]['domain']+"</span></a>
              <a href='"+data[i]['url']+"'  target='_blank'>
                <div class='thumbnail'>"+thumbnail+"</div>
                </a>
              <div class='date'>"+data[i]['date']+"</div>
              <a href='"+data[i]['url']+"'  target='_blank'>
                <div class='title'>"+data[i]['title']+"</div>
              </a></div>
            ")
  $('.tag').click ->
    $.get 'news', tag: $(this).attr('id'),(data) ->
      $('.container').text('')
      console.log data
      for i in [0..data.length-1]
        if data[i]['thumbnail']
          thumbnail = "<img class='thumbnail' src='"+data[i]['thumbnail']+"'>"
        else
          thumbnail = "<img class='thumbnail' src='/assets/noimage.png'>"
        $('.container').append("
          <div class='box'><span><img class='favicon' src='"+data[i]['favicon']+"'></span>
          <a href='http://"+data[i]['domain']+"' target='_blank'><span class='domain'>"+data[i]['domain']+"</span></a>
          <a href='"+data[i]['url']+"'  target='_blank'>
            <div class='thumbnail'>"+thumbnail+"</div>
          </a>
          <div class='date'>"+data[i]['date']+"</div>
          <a href='"+data[i]['url']+"'  target='_blank'>
            <div class='title'>"+data[i]['title']+"</div>
          </a></div>
        ")