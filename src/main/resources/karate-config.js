function fn () {
    var env = karate.env;
    karate.log('karate.env system property was: env');
    if (!env) {
        env = 'dev';
    }
    var config = {
        apiUrl: 'https://conduit-api.bondaracademy.com/api/'
    }
    if (env == 'dev') {
        config.userEmail = 'karate10@test.com'
        config.userPassword = '1234karate'
    }
    if (env == 'QA'){
        config.userEmail = 'karate11@test.com'
        config.userPassword = '12345karate'
    }

    var accessToken = karate.callSingle('classpath:helpers/CreateToken.feature', config).authToken
    karate.configure('headers', {Authorization: 'Token ' + accessToken})

    return config;
}