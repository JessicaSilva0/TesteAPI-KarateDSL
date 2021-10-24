function fn() {

  var config = {
    Endpoint: 'http://10.129.105.122:7021/external-liquidation-api/ws/soap/settlementPayGeneric.wsdl'
  };

  var env = karate.env
            karate.log('Ambiente de teste é: ', env);
            if(env === 'preprod'){
            config.Endpoint = 'http://10.129.105.122:7021/external-liquidation-api/ws/soap/settlementPayGeneric.wsdl'
            }
            karate.configure('connectTimeout', 5000);
            karate.configure('readTimeout', 5000);
  return config;
  }