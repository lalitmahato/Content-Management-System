from io import BytesIO
from PIL import Image
from django.core.files import File

def compress_image(image):
    """
    Compresses image with pillow 
    
    Parameters:
    image: path of the image

    Returns:
    compressed_image
    """
    fill_color = 'black'
    im = Image.open(image)
    # create a BytesIO object
    if im.mode in ('RGBA', 'LA'):
        background = Image.new(im.mode[:-1], im.size, fill_color)
        background.paste(im, im.split()[-1])
        im = background
    io = BytesIO() 
    # save image to BytesIO object
    im.save(io, 'JPEG', quality=70) 
    # create a django-friendly Files object
    compressed_image = File(io, name=image.name)
    return compressed_image