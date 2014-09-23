# gem.sh

apt-install-if-needed libgdbm-dev libncurses5-dev automake libtool bison libffi-dev curl

if [ ! -e ~/.rvm ]; then
    curl -L https://get.rvm.io | bash -s stable
    source ~/.rvm/scripts/rvm
    echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
    rvm install 2.1.2
    rvm use 2.1.2 --default
fi

source ~/.rvm/scripts/rvm

function gem-install {
    for pkg in $@; do
        echo -e "${cyan}[NPM] Installing package $pkg..."
        gem install $pkg
    done
}

function gem-install-if-needed {
    for pkg in $@; do
        if gem-package-not-installed $pkg; then
            gem-install $pkg
        fi
    done
}

function gem-package-not-installed {
    test -z "$(gem list 2> /dev/null | grep "$1")"
}
