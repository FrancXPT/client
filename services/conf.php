<?php

class CONF {

    /* Flag for demo version */
    public $DEMO_VERSION = false;

    /* Data configuration for database */
    public $DB_SERVER   = "localhost";
    public $DB_USER     = "rene_panel";
    public $DB_PASSWORD = "B8ghCeJz71qnubzP";
    public $DB_NAME     = "rene_renews";

    /* FCM key for notification Firebase*/
    public $FCM_KEY     = "AAAAljxCLZg:APA91bExrJLIGf5CDd-YZUiSj0jxjmSLVl1icMFYV9r0LmYXoehLAeM-73zocBLTcJk728UvynaNm0He2mp5f01ldOgsHhLdpUKGQDKcPc9K0lkYoJ0jRtqnVtG_cqvmq3ygwI-aihHl	
    ";

    public $FCM_TOPIC   = "/topics/ALL-DEVICE";


    /* [ IMPORTANT ] be careful when edit this security code, use AlphaNumeric only*/
    /* This string must be same with security code at Android, if its different android unable to submit data */
    public $SECURITY_CODE = "ljqxrcHxgldmQsTxr4YiZAm2O5wWO8H77yxdizYHnJtmtCN5sA";

    /* Mailer config ---------------------------------------------------- */

    // change with yours
    public $SMTP_EMAIL      = "sample@your-domain.com";
    public $SMTP_PASSWORD   = "password";
    public $SMTP_HOST       = "mail.your-domain.com";
    public $SMTP_PORT       = 562;

    // for email subject
    public $APP_NAME        = "ReNews";
    public $SUBJECT_EMAIL_FORGOT_PASS = "ReNews App Forgot Password";

}

?>