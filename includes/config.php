<?php
/*******************************************************************************
* Cable Network Invoice 
*Invoice Management System                                             *
*                                                                              *
* Version: 1.0	                                                               *
* Author:  Jewel Sarkar                                    				   *
*******************************************************************************/

// Debugging
ini_set('error_reporting', E_ALL);

// DATABASE INFORMATION
define('DATABASE_HOST', 'localhost');
define('DATABASE_NAME', 'cablebuisness');
define('DATABASE_USER', 'root');
define('DATABASE_PASS', '');

// COMPANY INFORMATION
define('COMPANY_LOGO', 'images/logo.png');
define('COMPANY_LOGO_WIDTH', '300');
define('COMPANY_LOGO_HEIGHT', '90');
define('COMPANY_NAME','Cable Network.');
define('COMPANY_ADDRESS_1','1230 Uttara Dhaka');
define('COMPANY_ADDRESS_2','Dhaka, Bangladesh');
define('COMPANY_ADDRESS_3','Uttara');
define('COMPANY_COUNTY','Bangladesh');
define('COMPANY_POSTCODE','1230');

define('COMPANY_NUMBER','Company No: 655454545'); // Company registration number
define('COMPANY_VAT', 'Company VAT: 645515154'); // Company TAX/VAT number

// EMAIL DETAILS
define('EMAIL_FROM', 'my@bichharan.info'); // Email address invoice emails will be sent from
define('EMAIL_NAME', 'cableNet Ltd'); // Email from address
define('EMAIL_SUBJECT', 'Cable Network'); // Invoice email subject
define('EMAIL_BODY_INVOICE', 'Invoice default body'); // Invoice email body
define('EMAIL_BODY_QUOTE', 'Quote default body'); // Invoice email body
define('EMAIL_BODY_RECEIPT', 'Receipt default body'); // Invoice email body

// OTHER SETTINFS
define('INVOICE_PREFIX', 'CbNet'); // Prefix at start of invoice - leave empty '' for no prefix
define('INVOICE_INITIAL_VALUE', '1'); // Initial invoice order number (start of increment)
define('INVOICE_THEME', '#222222'); // Theme colour, this sets a colour theme for the PDF generate invoice
define('TIMEZONE', 'Asia/Dhaka'); // Timezone - See for list of Timezone's http://php.net/manual/en/function.date-default-timezone-set.php
define('DATE_FORMAT', 'DD/MM/YYYY'); // DD/MM/YYYY or MM/DD/YYYY
define('CURRENCY', 'Tk.'); // Currency symbol
define('ENABLE_VAT', true); // Enable TAX/VAT
define('VAT_INCLUDED', false); // Is VAT included or excluded?
//define('VAT_RATE', '10'); // This is the percentage value

define('PAYMENT_DETAILS', 'Cable Network<br>Sort Code: 00-00-00<br>Account Number: 123456987'); // Payment information
define('FOOTER_NOTE', 'http://www.cableNet.info/');

// CONNECT TO THE DATABASE
$mysqli = new mysqli(DATABASE_HOST, DATABASE_USER, DATABASE_PASS, DATABASE_NAME);

?>