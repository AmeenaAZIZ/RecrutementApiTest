<?php

namespace App\Tests\Behat\Context\Traits;

use App\Tests\Behat\Manager\AuthManager;
use App\Tests\Behat\Context\Traits\RequestTrait;
use App\Entity\User;

trait AuthTrait
{
    /**
     * @var AuthManager
     */
    private AuthManager $authManager;

    /**
     * @var RequestTrait
     */
    private RequestTrait $requestTrait;

    /**
     * The user to use with HTTP basic authentication
     *
     * @var string
     */
    protected $authUser;

    /**
     * The password to use with HTTP basic authentication
     *
     * @var string
     */
    protected $authPassword;

    /**
     * The user to use with HTTP basic authentication
     *
     * @var User
     */
    protected $currentUser;

    /**
     * @Given /^I authenticate with user "([^"]*)" and password "([^"]*)"$/
     */
    public function iAuthenticateWithEmailAndPassword($email, $password)
    {
        $this->requestTrait->requestPayload = $this->authManager->iCreateAuthPayload($email, $password);
        $this->requestTrait->iRequest("post", "/authentication_token");

        $this->authUser = $email;
        $this->authPassword = $password;
        // $this->currentUser = $this->requestTrait->getLastResponse()->getUser();

        printf($this->requestTrait->getLastResponse());
    }
}
