# Gets the least recently used packages
# on a pacman based system
from subprocess import check_output , CalledProcessError

def timestampOfLastAccess(filename):
    return check_output(['stat', '-c', '%X', filename])

def filesInPackage(pName):
    return check_output("pacman -Q -l %s | awk '{print $2}'" % pName, shell=True).splitlines()

def average(l):
    soFar = 0
    cnt = 0
    for i in l:
        soFar = soFar + i
        cnt = cnt + 1
    if( cnt > 0 ):
        return soFar / cnt
    else:
        return 0

def averageTimestampOfPackage(pName):
    files = filesInPackage(pName)
    timestamps = []
    for f in files:
        try:
            timestamp = int(timestampOfLastAccess(f))
            timestamps.append(timestamp)
        except CalledProcessError, e:
            print("Couldn't execute stat process to find timestamp of file <%s>, skipping...", f)
            print("Full exc: %s", str(e))

    return average(timestamps)

def packagesOnSystem():
    return check_output("pacman -Q | awk '{print $1}'", shell=True).splitlines()

def orderPackagesByTimestamps(packageTimestampTuples):
    '''
    arg0: [(pName, pTimestamp)]
    '''
    packageTimestampTuples.sort( lambda x,y: cmp(x[1], y[1]) )
    return packageTimestampTuples

if __name__=="__main__":
    #print "files : %s" % str(files)
    packages = packagesOnSystem()
    print str(packages)
    packageTimestamps = []
    for package in packages:
        print("Getting average for timestamp for package %s" % package)
        timestamp = averageTimestampOfPackage(package)
        print("timestamp for package %s is : %d " % (package, timestamp))
        packageTimestamps.append( (package, timestamp ) )
    print(str(orderPackagesByTimestamps(packageTimestamps)))
