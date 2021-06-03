const musicalButton = () => {

  const button = document.querySelector("#music-btn");
  console.log('button');
  button.addEventListener("click", (event) => {
    console.log('the hills are alive with the sound of music!');
    const audio = new Audio('https://www.soundjay.com/misc/magic-chime-01.mp3');
    audio.play();
    // Do something (callback)
  });
};


export { musicalButton };
