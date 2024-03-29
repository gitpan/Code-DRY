use 5.008000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'              => 'Code::DRY',
    'VERSION_FROM'      => 'lib/Code/DRY.pm', # finds $VERSION
    'PREREQ_PM'         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      ('ABSTRACT_FROM'  => 'lib/Code/DRY.pm', # retrieve abstract from module
       'AUTHOR'         => 'hexcoder <hexcoder@cpan.org>') : ()),
    'DEFINE'            => '-DNDEBUG',
    'INC'               => '-I.', # e.g., '-I. -I/usr/include/other'
    'OBJECT'            => '$(O_FILES)', # link all the C files too
    'INSTALLDIRS'       => 'site',
    'EXE_FILES' => [
                     'bin/CP_reporter'
                   ],
    
    'PL_FILES'          => {},
);
