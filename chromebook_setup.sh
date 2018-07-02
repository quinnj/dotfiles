sudo mount -o remount,rw -o exec /home/chronos/user
sudo mount -o remount,rw -o exec /usr/local
cd ~
curl -Ls git.io/vddgY | bash
echo "export PAGER=/usr/local/bin/less" >> ~/.bashrc && . ~/.bashrc
crew install make gcc libatomic_ops python3 perl m4 patch cmake pkgconfig neovim
git clone https://github.com/JuliaLang/julia
cd julia
echo 'USE_SYSTEM_CURL:=1' >> Make.user
make -j7 OPENBLAS_TARGET_ARCH=NEHALEM
echo 'PATH=$PATH:~/julia/usr/bin' >> ~/.bash_profile
mkdir -p ~/.config/nvim
cd ~/.config/nvim
curl -O https://gist.githubusercontent.com/quinnj/643d8948d5fc7b35c09d64ab440de119/raw/79106f028c30c49f1c012b651d5822ab7a772eb3/init.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
