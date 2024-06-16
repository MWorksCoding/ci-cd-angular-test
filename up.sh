# git pull
# git add .
# git commit -m "$*"
# git push
# ng build --output-path=dist/ci-cd-angular-test
# git ftp push



REMOTE_PATH="/ci-cd-angular-test"
FTP_USER="f014daf1"
FTP_PASS="ejJsw2YM"
FTP_SERVER="marius-katzer.developerakademie.net"

# Ensure the path is set correctly in the configuration
git config git-ftp.remote-root $REMOTE_PATH
git config git-ftp.syncroot "dist/ci-cd-angular-test"

# Pull the latest changes
git pull

# Add and commit changes
git add .
git commit -m "$*"

# Push changes to the Git repository
git push

# Build the Angular project
ng build --output-path=dist/ci-cd-angular-test

# Push built files to the FTP server
git ftp push --user $FTP_USER --passwd $FTP_PASS $FTP_SERVER