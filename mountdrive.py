def MountGDrive():
    from os import environ as env
    from google.colab import drive

    config = env['CLOUDSDK_CONFIG']
    addr = env['TBE_CREDS_ADDR']

    ! runuser -l $user -c "yes | python3 -m pip install --user google-colab"  > /dev/null 2>&1

    mount = """from os import environ as env
from google.colab import drive

env['CLOUDSDK_CONFIG']  = '{config}'
env['TBE_CREDS_ADDR'] = '{addr}'

drive.mount('{mountpoint}')""".format(config=config, addr=addr, mountpoint=mountpoint)

    with open('/content/mount.py', 'w') as script:
        script.write(mount)

    ! runuser -l $user -c "python3 /content/mount.py"

try:
    mountpoint = f"/home/{username}/drive"
    user = username
except NameError:
    print("username variable not found, mounting at `/content/drive' using `root'")
    mountpoint = '/content/drive'
    user = 'akuhnet'

MountGDrive()
