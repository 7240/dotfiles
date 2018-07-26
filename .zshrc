# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/David/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ----------------- Custom things -------------------------------------------

alias coin='rlwrap coin'
alias clac='rlwrap clac'
alias vim='nvim'
alias sml='rlwrap sml'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

fortune | cowsay -f tux

echo '
                                 #include<time.h>
                            #include<stdio.h>/*8/2000*/
                        #include<stdlib.h>/*SY!*//*E!*//*:)*/
                     int/***/i,j,k,e,s,u=183,v=4,m,n,x[512],t,c;
                  char/******/z[99999]="Zenum{x=Y127,y,z};Zch"/*****/
                "ar\40t[z"/***************/"];Yint\40i,j,"/**********/
              "k;Zmai"/**/"n("/************************************/"Y"
             "int\40c,Zchar"/**/"*"/****************************/"*a){Yf"
            "or(i"/**/"=j=t[x]=t[y]=0;i<"/*******************/"y"/**/";jX"
          "++)Yfor(k=0;i<yX&&a[j%c][k];t[i"/**/"X++]"/***/"=a[j%c][kX++])"
         ";Yfor(;c<x;cX++){t[(@)&x]=t[(@)&x];iX+=@;jX-=@;kX++;}Zputs(t);}",
        *p[]={"~@","@+@","@-@","@&@","@|@","@^@","(@)","@?@:@"},*q="ijkxyzc"
     "123456789Lain";void/**/main(       void){srand(time(NULL));c=x[t=0]=0;
   for  (j=10;j>0;j=getchar()){e=(       j-10)?j>32?x[t]>0?++x[t]|c++:(x[++t]
  =1)   |c++:x[t]<0?x[t]--: (x[++t        ]=- 1):(x[++t]=0);}for(x[++t]=99999
       +99;u<c;){k=rand /*  @_@ ;;         */   ()%v;for(i=j=0;j<=k;i++){if(z
       [i]==64)j++;}i--      ;m                 =u--;n=v--;do{e=rand()&7;m=u;
      n=v;for(j=0;p[e]  [j];j++){             if(p[e][j]==64)n++;m++;}}while(
      m>c+1);u=m;v=n;for(s=  k=0;z           [s];s  ++);for(;s>=i;z[(s  --)+j
      -1 ]=z[s]);for(;p[e][k];z[i+            k++]=p[e][k]);}for(i=0     ;z[
     i]   ;i++){if(z[i  ]==64)z[i                ]=q[rand()& 15] ;}     for
          (t=t=i=k=0;z       [i]                  ;t++){if  ( x [t]    !=0)
           {if(x[t]>0){    for(j                =(z[i]>87   && z[i  ]<91)?
           z[i ++]-86:1                                    ;  j --  >00;x
            [t  ]--)e=k?                                    k--: putchar
             (0   *0+z[i++                                  ]);;e=x[t]>
             0?    t--:(k=-x                               [t]);}else{
              /*      */for(;x                         [   t];++x /*
               */      [t    ])e=k                 ?k--:  putchar  (
               32       );      }}else          {;k=!     putchar  (
                                     10);}}putchar       /*  **/   (
                                                        /*  ****
                                                       **  */10
                                                          )/*
                                                          ***
                                                         ***
                                                        ***
                                                       */
                                                      ;}
'

