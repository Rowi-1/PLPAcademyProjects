const profilePhoto = document.getElementById('profile-photo');
const aboutMe = document.getElementById('about-me');
const profileBorder = document.createElement('div');
profileBorder.classList.add('profile-border');
profilePhoto.appendChild(profileBorder);

profilePhoto.addEventListener('click', () => {
    // Toggle visible class on about me section
    aboutMe.classList.toggle('visible');

    // Toggle border visibility by changing its color
    const borderColor = aboutMe.classList.contains('visible') ? 'rgba(0, 0, 0, 0.2)' : 'transparent';
    profileBorder.style.borderColor = borderColor;
});
