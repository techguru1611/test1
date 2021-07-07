# Project Setup
-> php artisan key:generate
-> php artisan config:cache
-> php artisan cache:clear
 
# How to run application.
-> step1: user request login link.
    -> http://127.0.0.1:8000/user/request
    -> fill your existing email (as per database users table) which will be send request to admin.
-> step2: admin panel link.
    -> http://127.0.0.1:8000/users
    -> Display userlist which will be send request by user.
    -> Now admin can send user login link by clicking on "Send Link" button.
    -> Admin can also logout the login user manually by clicking on "Logout" button.
-> step3: When admin click on the send link button then one link send to user's email.
-> step4: If you click on that link then it will redirect to home page.
Note: If you click on that link again then it will expired and redirect to user request login page.

# Mail Configuration
-> Set your email configuration.
    MAIL_MAILER=smtp
    MAIL_HOST=smtp.mailtrap.io
    MAIL_PORT=2525
    MAIL_USERNAME= Your username
    MAIL_PASSWORD= Your password
    MAIL_ENCRYPTION=tls
    MAIL_FROM_ADDRESS= Your testing email
    MAIL_FROM_NAME="${APP_NAME}"

# Database Configuration
-> set your database configuration
    DB_CONNECTION=mysql
    DB_HOST= Your host
    DB_PORT= Your Database port
    DB_DATABASE= Your database name
    DB_USERNAME= Your database username
    DB_PASSWORD= Your database password
-> Run Command php artisan migrate
