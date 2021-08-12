'use strict';

const boton_foto = document.querySelector('#btn_subir_fotos');
const imagen = document.querySelector('#perfirImg');

let widget_cloudinary = cloudinary.createUploadWidget({
    cloudName: 'durxpegdm',
    uploadPreset: 'awmfkdi9'

}, (err, result) => {
    if (!err && result && result.event === 'success') {
        console.log('Imagen subida con éxito', result.info);
        imagen.src = result.info.secure_url;
        document.getElementById("urlImg").value=result.info.secure_url;
    }
});


boton_foto.addEventListener('click', () => {
    widget_cloudinary.open();
}, false);