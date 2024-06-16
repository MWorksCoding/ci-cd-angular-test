git pull
git add .
git commit -m "$*"
git push
ng build --output-path=dist/ci-cd-angular-test
git ftp push