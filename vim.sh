COMMAND=$1

function download
{
    if [ ! -d vim ]
    then
        hg clone https://vim.googlecode.com/hg/ vim
    fi
}

function update
{
    download
    cd vim
    hg pull
    hg update
    cd ..
}

function install
{
    update
    cd vim
    ./configure
    make
    sudo make install
    cd ..
}

$COMMAND
