
default['redis']['daemonize'] = 'yes'
default['redis']['pidfile'] = '/var/run/redis/redis.pid'
default['redis']['port'] = 6379
default['redis']['bind'] = '0.0.0.0'
default['redis']['timeout'] = 0
default['redis']['loglevel'] = 'notice'
default['redis']['logfile'] = '/var/log/redis/redis.log'
default['redis']['databases'] = 16
# SNAPSHOTTING
default['redis']['save'] = [
    [900, 1],
    [300, 10],
    [60, 10000],
]
default['redis']['rdbcompression'] = 'yes'
default['redis']['dbfilename'] = 'dump.rdb'
default['redis']['dir'] = '/var/lib/redis/'

# TODO: REPLICATION
# TODO: SECURITY
# TODO: LIMITS
# TODO: APPEND ONLY
# TODO: SLOW LOG
# TODO: VIRTUAL MEMORY
# TODO: ADVANCED CONFIG
