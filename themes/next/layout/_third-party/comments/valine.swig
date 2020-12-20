{%- set valine_uri = theme.vendors.valine or '//unpkg.com/valine/dist/Valine.min.js' %}

<script>
NexT.utils.loadComments(document.querySelector('#valine-comments'), () => {
  NexT.utils.getScript('{{ valine_uri }}', () => {
    var GUEST = ['nick', 'mail', 'link'];
    var guest = '{{ theme.valine.guest_info }}';
    guest = guest.split(',').filter(item => {
      return GUEST.includes(item);
    });
    new Valine({
      el         : '#valine-comments',
      verify     : {{ theme.valine.verify }},
      notify     : {{ theme.valine.notify }},
      appId      : '{{ theme.valine.appid }}',
      appKey     : '{{ theme.valine.appkey }}',
      placeholder: {{ theme.valine.placeholder | json }},
      avatar     : '{{ theme.valine.avatar }}',
      meta       : guest,
      pageSize   : '{{ theme.valine.pageSize }}' || 10,
      visitor    : {{ theme.valine.visitor }},
      lang       : '{{ theme.valine.language }}' || 'zh-cn',
      path       : location.pathname,
      recordIP   : {{ theme.valine.recordIP }},
      serverURLs : '{{ theme.valine.serverURLs }}',
      enableQQ   : {{ theme.valine.enableQQ }},
      requiredFields : ['nick','mail'],





      emojiMaps: {
      "😶" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai14%20.png",
"😪" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai15%20.png",
"☺️" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai17%20.png",
"😬" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai16%20.png",
"😓"  : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai3%20.png",
"🥰"  : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai7%20.png",
"😗" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai12%20.png",
"🤨" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai13%20.png",
"🤩" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai6%20.png",
"😄" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai4%20.png",
"😏" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai11%20.png",
"😭" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai10%20.png",
"😆" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai5%20.png",
"😨" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai8%20.png",
"😎" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai21%20.png",
"😀" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai20%20.png",
"😰" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai9%20.png",
"🥺" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai22%20.png",
"👍" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai18%20.png",
"😃" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/BENGHUAI/xiaomai19%20.png",
"❓" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang12%20.jpg",
"😇" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang6%20.jpg",
"😵" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang7%20.jpg",
"😅" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang13%20.jpg",
"😒" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang39%20.jpg",
"😥" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang5%20.jpg",
"😧" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang4%20.jpg",
"🤯" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang10%20.jpg",
"😮" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang38%20.jpg",
"💸" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang14%20.jpg",
"😫" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang28%20.jpg",
"☹️" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang1%20.jpg",
"🙏" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang29%20.jpg",
"🙃" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang15%20.jpg",
"🥳" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang3%20.jpg",
"😤" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang16%20.jpg",
"🤣" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang43%20.jpg",
"😁" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang41%20.jpg",
"😝" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang40%20.jpg",
"😊" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang33%20.jpg",
"☺️" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang27%20.jpg",
"🙂" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang26%20.jpg",
"🤔" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang18%20.jpg",
"😋" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang24%20.jpg",
"👀" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang19%20.jpg",
"🎊" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang21%20.jpg",
"✌️" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang9%20.jpg",
"😴" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang8%20.jpg",
"😳" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang34%20.jpg",
"🤙" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang20%20.jpg",
"😉" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang36%20.jpg",
"💵" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang22%20.jpg",
"🥵" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang23%20.jpg",
"🧐" : "https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/日常/richang37%20.jpg"

    } 



      });
  }, window.Valine);
});
</script>

<script type="text/javascript">
   fetch('https://v1.hitokoto.cn/?c=a')
    .then(response => response.json())
    .then(data => {
      document.getElementById("veditor").setAttribute("placeholder",data.hitokoto+"__"+data.from);
    })
    .catch(console.error)
</script>

<style>
.v[data-class=v] .veditor {
    background-image: url(https://hexoblogpic.oss-cn-beijing.aliyuncs.com/imgs/Umaru-chan.gif);
    background-size: contain;
    background-repeat: no-repeat;
    background-position: right;
}
</style>

