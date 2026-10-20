/// Bound to applicationId / bundle id below. Request a new key if you change the id.
library;


import 'dart:io' show Platform;


const androidApplicationId = 'com.identixia.facerecognition';


const iosBundleId = 'com.identixia.facerecognition.app';


const androidLicense =
    
    
    'pyyR2AECfHUAcIC7ikl4HeHo6XE3ecLmyufzISHkMYhERXsAAADIHWrYmyNwJZJc1MkBLvpmCHbt11h1OkrzszOEDvi1pvoLhK4JNoO+jzKqha9JQL49RlOZPKn53y1rFHO/5PxHKVhoeX8gTvTgxX6KJifYMskJoxk5NWZQX/CiWJdfflctM6SlpPUYN1mYYGSX+C9YIRqBsLz/OkNvk9BmADBkAjBZCJCVBJR/9L4uZGsomgdZLIOgPBxFurelQJRh8S3PtOCfWYbwlcI7GTm/dXOsylsCMCU27ZcuUzof4S0CGpcGLHxICNZk1Mq66OZepmU5bJhceGB9yeqjK2ziTg0fFHVIrg==';


const iosLicense =
    
    
    'pyyR2AECUSO5MYr0jQVX+dHjjqKbRmyI3kSkNcUujcuxqnsAAAAHNFvP6wgKd5Er9duNTFLooHQPlSk8fF9Cas1IjukTYW/MWM1UIW4p+flbnFEQXOm8L7BbHsMm+U6z8uTIOkHxJvVu4EmSHWfRVe3I1S/8vPFdUxMkiKw8ahc7pK4Y4A7IqSo4XRcDnvkGy3vg0YRiNfAAZ7bViF5SNPlnADBlAjEA0kONZglbqW/+mI3kLrz/hpNaw0dq5j8uTw7YVqDaZVuy1SXqg+7dKl0gKnO31omaAjA0lgwt5jReQNPu6AXrxVoVl7golmxVrhblB4YP5cNaOdNdOrYfYz3KeQP/pgp7zHQ=';


String demoLicense() => Platform.isIOS ? iosLicense : androidLicense;
