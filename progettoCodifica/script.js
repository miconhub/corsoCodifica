//funzione per visualizzare ulteriori informazioni sulla cartolina 118
function show118(){
    if(document.getElementById("otherinfo118").style.display=="none"){
        document.getElementById("otherinfo118").style.display="block"

    }else{
        document.getElementById("otherinfo118").style.display="none";
    }
}

//funzione per visualizzare ulteriori informazioni sulla cartolina 125
function show125(){
    if(document.getElementById("otherinfo125").style.display=="none"){
        document.getElementById("otherinfo125").style.display="block"

    }else{
        document.getElementById("otherinfo125").style.display="none";
    }
};

//funzione per nascondere/mostrare il fronte della cartolina 118 quando viene premuto l'apposito pulsante
function wrapF118(){
    if(document.getElementById("front118").style.display=="none"){
        document.getElementById("front118").style.display="block"
    }else{
        document.getElementById("front118").style.display="none";
    }
};

////funzione per nascondere/mostrare il retro della cartolina 118 quando viene premuto l'apposito pulsante
function wrapR118(){
    if(document.getElementById("back118").style.display=="none"){
        document.getElementById("back118").style.display="block"
    }else{
        document.getElementById("back118").style.display="none";
    }
};

//funzione per nascondere/mostrare il fronte della cartolina 125 quando viene premuto l'apposito pulsante
function wrapF125(){
    if(document.getElementById("front125").style.display=="none"){
        document.getElementById("front125").style.display="block"
    }else{
        document.getElementById("front125").style.display="none";
    }
};

//funzione per nascondere/mostrare il retro della cartolina 125 quando viene premuto l'apposito pulsante
function wrapR125(){
    if(document.getElementById("back125").style.display=="none"){
        document.getElementById("back125").style.display="block"
    }else{
        document.getElementById("back125").style.display="none";
    }
};