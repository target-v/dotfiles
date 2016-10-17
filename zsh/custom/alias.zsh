alias gitftp="/home/jason/stuff/git-ftp/git-ftp.py"
alias drush="~/stuff/drush/drush"

get_ch() {
	if [ "$#" -ne 1 ]; then
		echo "Usage: get_ch 'word'"
		return 1
	else
		ag $1 /etc/hosts | cut -d ':' -f 2 | sed 's,127\.0\.0\.1,192.168.0.29,'
	fi
}

ch() {
	if [ "$#" -ne 1 ]; then
		echo "Usage: ch 'word'"
	else
		ret=$(get_ch $1) && echo ${ret} && echo ${ret}| clip
	fi
}

run_ctags() {
	ctags -R --fields=+aimS --languages=php --exclude=fichiersUpload/ --exclude=lib/tcpdf --exclude=vendor
}

tp() {
	ln -s ~/stuff/tern-project .tern-project
}

pw() {
	cat ~/stuff/pw | clip
}
