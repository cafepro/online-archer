$(function(){$(".translations textarea").each(function(){$(this).css({height:$(this).parent("td").css("height")})}),$(".translations textarea").bind("focus",function(){$(this).parents("tr").toggleClass("active")}),$(".translations textarea").bind("blur",function(){$(this).parents("tr").toggleClass("active")})}),$(function(){function t(){return"You are leaving this page with non-saved data. Are you sure you want to continue?"}$(".translations .actions .copy").click(function(t){t.preventDefault();var n=$(this).parents("tr"),a=n.find(".original textarea").val();n.find(".translation textarea").val(a.trim()).trigger("change")}),$(".translations textarea").bind("keydown",function(){window.onbeforeunload=t}),$(".translations textarea").bind("change",function(){window.onbeforeunload=t}),$("input.save, input.apply").click(function(){window.onbeforeunload=null})}),$(function(){var t=new RegExp("%{\\w+}","g");$(".translations textarea").bind("change",function(){var n,a=$(this).parents("tr"),i=a.find(".original textarea").val(),e=$(this).val(),o=i.match(t)||[],r=e.match(t)||[];n=e.length>0&&(0!==$(o).not(r).length||0!==$(r).not(o).length),a.find(".actions .warning").toggle(n)})});