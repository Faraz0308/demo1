#!/bin/bash
echo "===============-CLI BASED GIT-=============="
echo 
echo
echo "1.Configure Git"
echo "2.Git Status"
echo "3.Git Add"
echo "4.Git Commit"
echo "5.Git push"
echo "6.Git fetch"
echo "7.Git Pull"
echo "8.Git Branch"
echo "9.Git Create Branch"
echo "10.Git Checkout"
echo "11.Git Merge"
echo "12.Git Clone"
echo "13.Git Remote Add"
echo "14.Git Log"
echo "15.Git Remove"
read op
case $op in
	1)
		echo "Enter user Name"
		read un
		git config --global user.name "${un}"
		echo "Enter email"
		read em
		git config --global user.email "${em}"
	;;
	2)
		git status
	;;
        3)
		echo 
                echo "1. To Add All File"
                echo "2. To Add File specific"
		echo
		read opt
		case $opt in
			1)
			git add .
			;;
			2)
			echo "Enter The File Name"
			read f
			git add "${f}"
			;;
			*)
		esac
	;;
	4)
		echo "Enter thr commit Message"
		red msg
		git commit -m "${msg}"
	;;
	5)
		echo
		echo "1. To push in same branch"
		echo "2. To Checkout the branch"
		echo
		read br
		case $br in
			1)
				echo "Enter the branch name"
				read bn
				git push origin "${bn}"
			;;
			2)
				echo "Enter the Branch to Checkout"
				read bbc
				git checkout "${bbc}"
				git push back origin "${bbc}"
			;;
			*)
		esac
	;;
	6)
		git fetch
	;;
	7)
		git  pull 
	;;
	8)
		echo "Currently Followed (*) by branch name is current branch"
		git branch
	;;
	9)
		echo "Enter the branch name that you want to Create"
		read  gb
		git  branch "${gb}"
	;;
	10)
		echo "Enter the branch to checkout"
		read chgf
		git checkout "${chgf}"
	;;
	11)
		echo "Enter the branch to merge"
		read brname
		git merge "${brname}"
	;;
	12)
		echo "Enter the link of repo to clone"
		read link
 		git clone "${link}"
	;;
	13)
		echo "Enter the Alias and URL"
		read als
		read url
		git remote add "${als}" "${url}"
	;;
	14)
		git log
	;;
	15)
		echo "Enter the File name to remove"
		read fname
		git rem -f "${fname}"
	;;
	*)
esac

