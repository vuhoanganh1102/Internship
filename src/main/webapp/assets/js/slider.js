let count=0;
function nextSlides(n,id,max){
    count+=n;
    if(count <= max && count >=0){
        let sum=-1;
        sum=count* 240 * sum;
        let i=document.getElementById(id);
        i.style.marginLeft=sum+"px";}
}