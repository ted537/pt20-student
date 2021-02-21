from subprocess import check_output, DEVNULL
from pathlib import Path

class SslTracer:
    """ Configured ssltrace wrapper which saves and returns output """
    def __init__(self, extension, def_filename, o, t):
        self.extension = extension
        self.def_filename = def_filename
        self.o=o
        self.t=t

    def save(self,path,trace):
        with open(Path(path).with_suffix(self.extension),'w') as file:
            file.write(trace)

    def __call__(self,path):
        ptc_command = (
            f'./bin/ptc -o{self.o} -t{self.t} -L lib/pt {path}.pt'
        )
        raw_trace = check_output([
            'ssltrace',ptc_command,self.def_filename,'-e',
        ], stderr=DEVNULL)

        filtered_trace = raw_trace.decode('ascii')
        self.save(path,filtered_trace)
        return filtered_trace

scanner_ssltrace = SslTracer('.scanned','lib/pt/scan.def',o=1,t=1)
parser_ssltrace = SslTracer('.parsed','lib/pt/parser.def',o=2,t=2)

