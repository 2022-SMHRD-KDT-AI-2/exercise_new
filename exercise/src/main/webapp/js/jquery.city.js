function categoryChange(e) {
  var good_a = [ "강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구" ];
  var good_b = ["광산구","남구","동구","서구","북구"];
  var target = document.getElementById("good");
 
  if(e.value == "a") var d = good_a;
  else if(e.value == "b") var d = good_b;
 
  target.options.length = 0;
 
  for (x in d) {
    var opt = document.createElement("option");
    opt.value = d[x];
    opt.innerHTML = d[x];
    target.appendChild(opt);
  } 
}

