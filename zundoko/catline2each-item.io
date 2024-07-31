#!/data/data/com.termux/files/usr/bin/perl
eval 'exec /usr/bin/perl -w -S $0 ${1+"$@"}'
    if 0; # not running under some shell
# GENERATED BY CLC-INTERCAL 1.-94.-2
# TO MODIFY, EDIT SOURCE AND REPACKAGE

use Getopt::Long;
use Language::INTERCAL::GenericIO '1.-94.-2';
use Language::INTERCAL::Interpreter '1.-94.-2';
use Language::INTERCAL::Server '1.-94.-2';
use Language::INTERCAL::Rcfile '1.-94.-2';

my $rc = Language::INTERCAL::Rcfile->new();
if (defined &Getopt::Long::Configure) {
    Getopt::Long::Configure qw(no_ignore_case auto_abbrev permute bundling pass_through);
} else {
    $Getopt::Long::ignorecase = 0;
    $Getopt::Long::autoabbrev = 1;
    $Getopt::Long::order = $Getopt::Long::PERMUTE;
    $Getopt::Long::bundling = 1;
}
my $wimp = 0;
my $trace = 0;
my $stdtrace = undef;
GetOptions(
    'wimp!'      => \$wimp,
    'trace!'     => \$trace,
    'stdtrace=s' => \$stdtrace,
    'nouserrc'   => sub { $rc->setoption('nouserrc', 1) },
    'rcfile=s'   => sub { $rc->setoption(@_) },
);
$rc->load();
my $fh = Language::INTERCAL::GenericIO->new('FILE', 'w', \*DATA);
my $int = Language::INTERCAL::Interpreter->write($rc, $fh, 1);
if (defined $stdtrace) {
    $trace = 1;
    my $mode = $stdtrace =~ s/^([ra]),//i ? lc($1) : 'r';
    my $th = Language::INTERCAL::GenericIO->new('FILE', $mode, $stdtrace);
    $int->setreg('@TRFH', $th);
}
$int->setreg('%WT', $wimp);
$int->setreg('%TM', $trace);
$int->setreg('^AV', \@ARGV);
$int->setreg('^EV', [map { "$_=$ENV{$_}" } keys %ENV]);
$int->start()->run()->stop();

__DATA__
CLC-INTERCAL 1.-94.-2 Object File
æ&  __object_format=1 __interpreter_format=1 BBBSBSBSBSBSBSBSBSBSBSBSBSBSBSBSBSBSBSBSBSBSBSB                `  !                      ¦                   !                      B
    Ò                N  !                      ¦                   !                      B
    ä                T  !                      ¦                   !                      B
                     !                      ¦                   !                      B
    À                H  !                      ¦                   !                      B
    b               ~  !                      ¦                   !                      B
    	                  !                      B
    j                *  !                      ¦                   !                      B
    ®                B  !                      ¦                   !                      B
    P               x  !                      ¦                   !                      B
    {                0  !                      ¦                   !                      B
                    6  !                      ¦                   !                      B
                      !                      ¦                   !                      B
                   f  !                      ¦                   !                      B
    &                  !                      ¦                   !                      B
         	               "   	                  B
    >               r  !                      ¦                   !                      B
    Y                $  !                      ¦                   !                      B
                    <  !                      ¦                   !                      B
    H                  !                      ¦                   !                      B
    t                 !                      ¦                   !                      B
    ,               l  !                      ¦                   !                      B
    ö                Z  !                      ¦                   !                      B
    7                  !                      ¦                   !                      B
    DO,1<-#22DOWRITEIN,1
DOREADOUT,1SUB#1
DOREADOUT,1SUB#2
DOREADOUT,1SUB#3
DOREADOUT,1SUB#4
DOREADOUT,1SUB#5
DOREADOUT,1SUB#6
DOREADOUT,1SUB#7
DOREADOUT,1SUB#8
DOREADOUT,1SUB#9
DOREADOUT,1SUB#10
DOREADOUT,1SUB#11
DOREADOUT,1SUB#12
DOREADOUT,1SUB#13
DOREADOUT,1SUB#14
DOREADOUT,1SUB#15
DOREADOUT,1SUB#16
DOREADOUT,1SUB#17
DOREADOUT,1SUB#18
DOREADOUT,1SUB#19
DOREADOUT,1SUB#20
DOREADOUT,1SUB#21
DOREADOUT,1SUB#22
f  CONSTANT SYMBOL JUNK SPACE
 BLACKSPACE ANYTHING	 CALC_EXPR	 CALC_FULL END_JUNK PROGRAM	 STATEMENT
 EXPRESSION CALCULATION
 STMT_LABEL	 DO_PLEASE MAYBE_STMT_LABEL
 QUALIFIERS WVERB DOUBLE_OH_SEVEN NOT VERB MAYBE_WHILE TEMPLATE GERUND EXPR_OR_DIM Q_CALCULATE REG_EXPR
 MAYBE_LIST NAMES Q_STASH IT
 Q_RETRIEVE Q_IGNORE
 Q_REMEMBER ABSTAIN	 Q_ABSTAIN LABEL GERUNDS	 REINSTATE Q_REINSTATE	 Q_GIVE_UP E_LIST
 Q_WRITE_IN MAYBE_IN	 COME_FROM Q_COME_FROM RNAME	 Q_ENSLAVE Q_FREE Q_STUDY EXPR_OR_SUBJECT Q_ENROL Q_LEARNS Q_FINISH Q_GRADUATES	 NEXT_FROM Q_NEXT_FROM	 MEXT_FROM	 Q_CONVERT Q_SWAP GSYMBOL LEFT RIGHT Q_CREATE	 Q_DESTROY Q_RESUME Q_FORGET RTYPE REGISTER RNUMBER OWNER UNARIES MASTER ELEMENT
 SUBSCRIPTS LELEMENT MORE_SUBSCRIPTS
 NONUNARIES BANG BANG_U MAYBE_BINARY RABBIT_U RABBIT OVERLOADABLE UNARY BINARY	 DIMENSION MORE_DIMENSION THEM LP MAYBE_COUNT RIGHT_NONEMPTY RP
 MORE_RIGHT BYTECODE SPECIAL_REGISTER BC_LIST OTHER_BC REG69 REG68 REG70 §f               s    b  *b b s          Ü|ÿ @  @       s    b  *s          Ü|ÿ @  @        s    b  *b b s          Ü|ÿ @  @       s    s                   s    b             s    b                    s    s                   s   s   s   s    b  *s  s s                  sN   sQ    s s     í     Ü|ÿ @  @       sT   c /  s    b Ps s     î     Xþ    sN   c \  s    b ks s     ï     Ü|ÿ @  @        s   c <  c -  s   s    s b s s     '     Ü|ÿ @  @        c (  s   c )   s     	        c DO   b                   c PLEASE   b                     c PLEASE  c DO   b                        b      
  s    b s                b        s   s    s  s            s   s    s  s              @   @          s   s    b b b b s              @   @         s   s    s s          Ü|ÿûBÌúBÌ       s   c WHILE  s    b )s  s         Ü|ÿ @  @        c %  s    b s            c %  s    b s             c NOT   b               @   @ c N  c '  c T   b               @   @ c ¬   b                             s    s     (     Ü|ÿ @  @       c STASH  s   s    s b 
n s     -               c RETRIEVE  s   s     s b n s     2               c IGNORE  s   s!    s b n s     7              c REMEMBER  s   s"    s b n s     <               c ABSTAIN  c FROM  s#   s$    s s     A             c	 REINSTATE  s'   s(    s s     J               c GIVE  c UP  s)    s b     U             c WRITE  c IN  s*   s+    s b n s     [               c READ  c OUT  s*    b n s     c               c COME  c FROM  s-   s.    s s     g             c ENSLAVE  s/   c TO  s/   s0    s b s s     p               c FREE  s/   c FROM  s/   s1    s b s s     u         @   @ c STUDY  s   c AT  s%   c IN  c CLASS  s/   s2    s b s s s     z               c ENROL  s/   c TO  c LEARN  s*   s4    s b n s s                    s/   c LEARNS  s   s5    s b s s          Xþ    c FINISH  c LECTURE  s6    s b               @   @ s/   c	 GRADUATES  s7    s b !s          Xþ    c NEXT  c FROM  s8   s9    s s               @   @ c CONVERT  s   c TO  s   s;    s b $s s                  c SWAP  s   c AND  s   s<    s b %s s     £               c CREATE  s=   s>   c AS  s?   s@    s b b s n s n s     ¨             c DESTROY  s=   s>   sA    s b b s n s     ­             c RESUME  s   sB    s b s     ²               c FORGET  s   sC    s b 	s     ·         @   @    b        c WHILE  s    b s                    c WHILE  s    b (s                   !  c	 CONDITION  c WHILE  c BODY   b                  c BODY  c WHILE  c	 CONDITION   b                  c
 EXPRESSION  c WHILE  c	 STATEMENT   b )                   c	 STATEMENT  c WHILE  c
 EXPRESSION   b (                    s   c <  c -  c
 EXPRESSION  s    b    *                c STASH  c REGISTER  s    b 
    /               c RETRIEVE  c REGISTER  s    b     4               c IGNORE  c REGISTER  s    b     9              c REMEMBER  c REGISTER  s    b     >               c ABSTAIN  c FROM  c LABEL   b     F             c ABSTAIN  c FROM  c GERUND  s    b     G             c	 REINSTATE  c LABEL   b     N               c	 REINSTATE  c GERUND  s    b     O               c GIVE  c UP   b     X             c WRITE  c IN  s   s    b     ^               c READ  c OUT  s   s    b     f               c COME  c FROM  c LABEL   b     l             c COME  c FROM  c GERUND  s    b     m             c ENSLAVE  c REGISTER  c TO  c REGISTER   b     r               c FREE  c REGISTER  c FROM  c REGISTER   b     w         @   @ c STUDY  s3   c AT  c LABEL  c IN  c CLASS  c REGISTER   b     |               c ENROL  c REGISTER  c TO  c LEARN  s3   s    b                    c REGISTER  c LEARNS  s3    b                    c FINISH  c LECTURE   b               @   @ c REGISTER  c	 GRADUATES   b !                   c NEXT  c FROM  c LABEL   b "              @   @ c NEXT  c FROM  c GERUND  s    b #              @   @ c CONVERT  c	 STATEMENT  c TO  c	 STATEMENT   b $                  c SWAP  c	 STATEMENT  c AND  c	 STATEMENT   b %    ¥               c CREATE  c SYMBOL  c LEFT  c AS  c RIGHT   b     ª             c DESTROY  c SYMBOL  c
 EXPRESSION  c LEFT   b     ¯             c RESUME  c
 EXPRESSION   b     ´               c FORGET  c
 EXPRESSION   b 	    ¹         @   @&  c LOOPING  b b b )b (    !              c WHILING  b b b )b (    "               c
 COMMENTING  b     #             c COMMENTS  b     $             c COMPILER  c BUG  b &    %             c QUANTUM  c	 COMPUTING  b     &               c CALCULATING  b     )             c STASHING  b 
    .               c
 RETRIEVING  b     3               c IGNORING  b     8              c REMEMBERING  b     =               c
 ABSTAINING c FROM   b b     D             c
 ABSTAINING  b b     E             c REINSTATING  b b     M               s   s     P         þB þB  c GIVING  c UP  b     V             c GIVING  b     W             c WRITING  c IN  b     \               c WRITING  b     ]               c READING  c OUT  b     d               c READING  b     e               c COMING  c FROM  b b     j             c COMING  b b     k             c	 ENSLAVING  b     q               c FREEING  b     v         @   @ c STUDYING  b     {               c	 ENROLLING  b                    c LEARNING  b                   c	 FINISHING  c LECTURE  b               @   @ c	 FINISHING  b               @   @ c
 GRADUATING  b !                 c NEXTING  c FROM  b "b #              @   @ c
 CONVERTING  b $                 c SWAPPING  b %    ¤               c CREATING  b     ©             c
 DESTROYING  b     ®             c RESUMING  b     ³               c
 FORGETTING  b 	    ¸         @   @  s    s         Ü|ÿ @  @       sW    b `n  s     	    Ü|ÿ @  @          b      +  c WHILE  c NOT  c	 ASSIGNING  c TO  c IT   b     ,                c REGISTER   b      /              c
 EXPRESSION   b      0                 b      1 c LIST   b      2              s/   s     ½     Xþ    s/  c +  s ÿÿ s  s    ¾     Xþ       b      0  c WHILE  c NOT  c STASHING  s    b     1                c IT   b                   c THEM   b                       b      5  c WHILE  c NOT  c
 RETRIEVING  s    b     6                  b      :  c WHILE  c REMEMBERING  s    b     ;                  b      ?  c WHILE  c IGNORING  s    b     @                s%    b s     B     Ü}ÿ @  @       s&    b n  s     C         þR þR     b      H  c WHILE  c REINSTATING  s    b     I                c (  s   c )   s           c (  s   c )   s           s    s         Ü|ÿ @  @        s ÿÿ s     Q         þR þR  s ÿÿc +  s& ÿÿ s  s    R         þR þR   s%    b s     K     Ü}ÿ @  @       s&    b n  s     L         þR þR     b      S  c WHILE  c
 ABSTAINING  c FROM  s    b     T                  b      Y  c WHILE  c
 CONTINUING  c TO  c RUN   b     Z                s   s     ð     Ü|ÿ @  @       s  c +  s* ÿÿ s  s    ñ     Ü|ÿ @  @          b      _  c WHILE  c NOT  c WRITING  s   s,    b     `                  b      a  c IN   b      b               s%    b s     h     Ü}ÿ @  @       s&    b n  s     i         þR þR     b      n  c WHILE  c NOT  c COMING  c FROM  c THERE   b     o                sG   sD   sF    s  s s    È     Xþ       b      s  c WHILE  c LEAVING  c IT  c FREE   b     t                  b      x  c WHILE  c LEAVING  c IT  c IN  c SLAVERY   b     y                  b        c WHILE  c NOT  c STUDYING  c IT   b                     c
 EXPRESSION   b      }               c SUBJECT   b      ~                  b        c WHILE  c NOT  c	 ENROLLING   b                       b        c WHILE  c NOT  c LEARNING  c IT   b                       b        c WHILE  c
 CONTINUING  c IT   b                       b        c WHILE  c	 REMAINING  c A  c STUDENT   b                     s%    b "s          Ü}ÿ @  @          b        c WHILE  c NOT  c NEXTING  c FROM  c THERE   b                     s&    b #n  s              þR þR     b      ¡  c WHILE  c LEAVING  c IT  c	 UNCHANGED   b     ¢                  b      ¦  c WHILE  c LEAVING  c THEM  c	 UNCHANGED   b     §                c ?  s    s     3           b       sZ  s[   s> ÿÿ s s  s               b       s\ ÿÿ s         þ|ÿÿóþÀþóþ          b      «  c WHILE  c NOT  c CREATING  c IT   b     ¬                  b      °  c WHILE  c NOT  c
 DESTROYING  c IT   b     ±                  b      µ  c WHILE  c NOT  c RESUMING   b     ¶                  b      º  c WHILE  c NOT  c
 FORGETTING   b     »               c WHILE  c REMEMBERING   b     ¼                c .   b @    ¿      @ c :   b A    À         c ,   b B    Á       c ;   b C    Â         c @   b D	    Ã          c _   b G    Ä             c +  sE    b Os     Å        sG   sD   sH   sF    s s  s s    É     Xþ    sG   c +  sH   sE   sF    s s  b Os s    Ê     þ   s    s     Æ       ÿ c -  sE    b js     Ç           b      Ë  sI   sG    s s     Ì      þ     b      ò  sU   sH    s  s    ó     @ >  @   @      
  c $   b Rb     Í      c 1   b Rb     Î        c 2   b Rb     Ï        c 3   b Rb     Ð        c 4   b Rb     Ñ        c 5   b Rb     Ò         c 6   b Rb     Ó       @ c 7   b Rb     Ô        c 8   b Rb     Õ         c 9   b Rb     Ö          sG   sD   sH   s   sK    s s s  s s    ×     Xþ     c SUB  s   sM    s b Ss     Ù                sG   sD   s   sK    s s  s s    Ø     Xþ       b      Ú  c SUB  s   sM    s b Ss     Û                sE    s     Ü     Xþ    sJ    s     Ý     Xþ    c -  sE    b js     Þ        c #  sH   s    s s     ß      c '  sH   s   c '   s s     à      c "  sH   s   c "   s s     á      c *   b m    â       sP   sQ   c '   s s     å     @ ÿ  @   @       sO   c /  s   c '   b Ps s     æ       ÿ  sP   c \  s   c '   b ks s     ç     @ ÿ  @   @       sR   sQ   c "   s s     ê       sS   c /  s   c "   b Ps s     ë       sR   c \  s   c "   b ks s     ì        sF    b @s     ã       ÿ   sH   sF    s  b @s    ä     @ ÿ  @   @          b        sV   s    s  s                 @       c ".  sH   s    s b @s     è       c ".  s    b @s     é       sE    s         Xþ    sL    s         Xþ     c V   b bb     ô           @   @ c &   b bb     õ     @ c V-   b d    ö           @   @ c ¥   b d    ÷                       c ?   b bb     ø         c 1  c ?   b bb     ù        c 2  c ?   b bb     ú        c 3  c ?   b bb     û        c 4  c ?   b bb     ü        c 5  c ?   b bb     ý         c |   b f    þ                 c -   b n    ÿ         c ~   b o                   @ c C/   b p                c C|   b p                c ¢   b p                          s  c BY  s  sX ÿÿ s  s s    
    Ü|ÿ @  @          b       c BY  sW ÿÿ s                  c THEM   b                    c IT   b                    s=    b s              c ,  s*   c ,   b b `n s           c ,  c ,   b b ab           c ,  s   c ,   b s              b      c =  s    s              c =  s    s              c =  c *   b ÿÿ              s]  s^ ÿÿ s  s         þ|ÿÿóþÀþóþ        s=   s    b s s     #         c ,  s*   c ,  s    b s b `n s     $      c ,  c ,   b b     %      c ,  s   c ,  s    b s s     &      s_    b n  s     '    ü|ÿÿóþÀþóþ       c !  s=   s    b s s     (     c *   b     )         b      ! c +  s\ ÿÿ s     "     V  s` ÿÿ s     *          @  s   s     +    Ü|ÿ @  @       c ABG  b     T            c ABL  b     U            c AWC  b f    V            c BAW  b g    W            c BBT  b c    X            c BSW  b e    Y            c BUG  b &    Z            c BUT  b b    [            c BWC  b     \            c CFG  b     ]            c CFL  b     ^            c CHO  b G    _            c CON  b $    `            c CRE  b     a            c CSE  b /    b            c CWB  b     c            c DES  b     d            c DOS  b E    e            c DSX  b     f            c EBC  b (    g              c ECB  b )    h              c ENR  b     i              c ENS  b     j              c FIN  b      k        @   @ c FLA  b ?    l        @   @ c FOR  b 	    m        @   @ c FRE  b     n        @   @ c FRZ  b *    o        @   @ c GRA  b !    p            c GUP  b     q            c HSN  b ~    r             c HYB  b C    s             c IGN  b     t             c INT  b i    u             c LAB  b     v             c LEA  b     w             c MKG  b =    x               c MSP  b     y               c MUL  b `    z               c NOT  b     {         @   @ c NUM  b j    |         @   @ c NXG  b #    }         @   @ c NXL  b "    ~         @   @ c NXT  b              @   @ c OPT  b '                 c OSN  b                  c OVM  b k                 c OVR  b P                 c OWN  b R                 c QUA  b                   c REG  b                   c REL  b                   c REM  b                   c RES  b                   c RET  b                   c RIN  b p                  c ROM  b l                  c ROR  b Q                  c ROU  b                   c RSE  b o                  c SEL  b h                  c SHF  b F                  c SMU  b .                  c SPL  b m                  c SPO  b @                  c STA  b 
                  c STE  b -                  c STO  b                   c STR  b a                  c STS  b                    c STU  b                   c SUB  b S                  c SWA  b %                  c SWB  b d                  c SYS  b +                  c TAI  b B                  c TSP  b A                   c TYP  b O    ¡              c UDV  b n    ¢                c UNE  b q    £                c UNS  b ,    ¤                c USG  b >    ¥                c WHP  b D    ¦              c WIN  b     §               c %  sc ÿÿ s     4      c @  sd ÿÿ s 	    J         c ^  se ÿÿ s     Q           @  s_ ÿÿsb ÿÿ s  s    ,    ü|ÿÿóþÀþóþ          b      - c +  sa ÿÿ s     .       c WT  b E    5              c AR  b E    6            c AW  b E    7            c JS  b E    8             c SS  b E    9              c PS  b E    :              c FS  b E    ;        @   @ c ES  b E    <              c IS  b E    =             c DM  b E    >            c SP  b E    ?              c RT  b E    @              c TH  b E    A              c RM  b E    B              c IO  b E    C             c BA  b E    D            c CF  b E    E            c CR  b E    F            c CW  b E    G            c OS  b E    H             c TM  b E    I               c OR  b D    K             c OWFH  b D    L             c ORFH  b D    M             c OSFH  b D    N             c SNFH  b D    O              c TRFH  b D    P               c AV  b F    R            c EV  b F    S                     	     ¨ zeroone base comefrom iotype charset roman%   %  %    %    %   %  %  %  %       