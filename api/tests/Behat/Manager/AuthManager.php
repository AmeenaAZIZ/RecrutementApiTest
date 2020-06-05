<?php

namespace App\Tests\Behat\Manager;

use App\Tests\Behat\Context\Traits\RequestTrait;

class AuthManager
{
    /**
     * @var RequestTrait
     */
    private RequestTrait $requestTrait;

    public function iCreateAuthPayload($email, $password)
    {
        $this->requestTrait->requestPayload = [
            'email' => $email,
            'password' => $password,
        ];
    }
}
