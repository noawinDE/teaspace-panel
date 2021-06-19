<?php

$validate = new Validation();
class Validation extends Controller
{

    public function duration($duration)
    {
        if($duration == '30' || $duration == '60' || $duration == '90' || $duration == '180' || $duration == '365'){
            return true;
        } else {
            return false;
        }
    }

}