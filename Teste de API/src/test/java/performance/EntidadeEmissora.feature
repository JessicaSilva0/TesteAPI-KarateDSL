Feature: Mensagem de validação da Entidade Emissora
  Background:
    * url Endpoint
    * def createPayGenericRequest = read('../data/createpaygenericRequest.xml')
    * def createPayGenericRequest2 = read('../data/createpaygenericRequest2.xml')
    * header Content-Type = 'text/xml; charset=utf-8'
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  Scenario: CT01-E01 - Campo Obrigatório
    Given request createPayGenericRequest
    When method post
    And status 200
    Then match /Envelope/Body/createPayGenericResponse/idrsltResponse == 'O campo Instituição Emissora é obrigatório'
    And print 'response: ', response

  Scenario: CT01-E20 - Campo Inválido
    Given request  createPayGenericRequest2
    When method post
    And status 200
    Then match /Envelope/Body/createPayGenericResponse/idrsltResponse == 'O valor do campo Instituição Emissora é inválido'
    Then print 'response: ', response



