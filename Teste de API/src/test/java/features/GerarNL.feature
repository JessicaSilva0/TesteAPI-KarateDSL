Feature: Criar Nota de Liquidação
  Background:
    * url Endpoint
    * header Content-Type = 'text/xml; charset=utf-8'

  Scenario: Criar Nota de Liquidação a Pagar
    Given request
    And request
    """
      
        """
    When method POST
    And status 200
    Then print 'response: ', response
