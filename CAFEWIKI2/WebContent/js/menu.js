const target = document.querySelector('.target');
const links = document.querySelectorAll('.footer a');
const colors = ['skyblue','orange','green','magenta', 'black', 'grey'];

for(let i = 0; i<links.length; i++){
links[i].addEventListener('click', function(e){e.preventDefault();});
links[i].addEventListener('mouseenter', mouseenterFunc);
}

function mouseenterFunc(){
    if(!this.parentNode.classList.contains('active')){
        for(let i = 0; i<links.length; i++){
            if(links[i].parentNode.classList.contains('active')){
                links[i].parentNode.classList.remove('active');
            }
            links[i].style.opacity = '0.25';
        }
        this.parentNode.classList.add('active');
        this.style.opacity = '1';

        const width = this.getBoundingClientRect().width;
        const height = this.getBoundingClientRect().height;
        const left = this.getBoundingClientRect().left + window.pageXOffset;
        const top = this.getBoundingClientRect().top + window.pageXOffset;
        const color = colors[Math.floor(Math.random()* links.length)];

        
        target.style.width = '$(width)px';
        target.style.height = '$(height)px';
        target.style.left = '$(left)px';
        target.style.top = '$(top)px';
        target.style.borderColor = color;

    }
}

function resizeFunc(){
    const active = document.querySelector('footer li.active');

    if(active){
        const left = this.getBoundingClientRect().left + window.pageXOffset;
        const top = this.getBoundingClientRect().top + window.pageXOffset;

        target.style.left = '$(left)px';
        target.style.top = '$(top)px';
    }
}
