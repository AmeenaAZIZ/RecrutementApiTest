<?php

namespace App\Tests\Behat\Manager;

class ReferenceManager
{
    /**
     * @Then One SQL ident is created
     */
    public function theResponseBodyShouldBeAnInteger() {
        $this->theResponseContentTypeShouldBe('application/json');
        $this->theResponseCodeShouldBe(201);

        $body = $this->response->getBody()->getContents();
        if (!ctype_digit($body)) {
            throw New Exception(sprintf('Expected integer response but got "%s".', $body));
        }

        $this->output = $body;
        echo "Output is '$this->output'\n";
    }

    /**
     * @When I send a :method request to :uri
     *
     * @param $method
     * @param $uri
     */
    public function iSendARequestTo($method, $uri)
    {
        echo "Output is '$this->output'\n";
        $uri = str_replace('{id}', $this->output, $uri);

        try {
            if ($method == 'POST' || $method == 'PATCH') {
                $this->response = $this->client->request($method, $uri, ['json' => $this->requestPayload]);
            } else {
                $this->response = $this->client->request($method, $uri);
            }
        } catch (GuzzleHttp\Exception\ClientException $ex) {
            throw new Exception($uri . "\n" . $ex->getResponse()->getBody()->getContents());
        }
    }
}
