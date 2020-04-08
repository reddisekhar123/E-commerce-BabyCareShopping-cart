
// To display related Tab Content only
var tabButtons=document.querySelectorAll(".tabContainer .buttonContainer button");
var tabPanels=document.querySelectorAll(".tabContainer .tabPanel");

function showPanel(panelIndex,colorCode){
    tabButtons.forEach(function(node){
      node.style.backgroundColor="";
      node.style.color="";
    });
    tabButtons[panelIndex].style.backgroundColor='#ba6b57';
    tabButtons[panelIndex].style.color="black";
    tabPanels.forEach(function(node) {
      node.style.display="none";
    });
    tabPanels[panelIndex].style.backgroundColor='#f5fcc1';
    tabPanels[panelIndex].style.display="block";
}
showPanel(0,'#ffe2ff');

// To make menubar visible when scrolling

window.onscroll=function(){
  var menuBar=document.getElementById('menuItems');
    if(window.pageYOffset>110){
      menuBar.style.position="fixed";
      menuBar.style.top=0;
    }
    else{
      menuBar.style.position="relative";
      menuBar.style.top=110;
    }
}
