import time

def perform(data, LOG):
    append_data = data.replace('!','?',1)
    log = time.ctime() + ' * ' + append_data + ' *\n'
    with open('log.log', 'a') as the_file:
        the_file.write(log)
    LOG.info(log)
