<?php
$mailContent = '<div style="padding: 60px 70px; border-top: 1px solid rgba(0,0,0,0.05);">
            <h1 style="margin-top: 0px;">
               Hallo ' . $user_name . ',
            </h1>
            <div style="color: #636363; font-size: 14px;">
               <p>
                  Dein '.$product_name.' läuft in '.$diffInDays.' Tagen aus.<br>
                  Denke daran deinen '.$product_name.' zu verlängern ansonsten wird dieser gesperrt und nach 3 Tage gelöscht.
               </p>
               <br>
            </div>
            <h4 style="margin-bottom: 10px;">
                Hast du eine Frage oder ben&ouml;tigst du Hilfe?
            </h4>
            <div style="color: #A5A5A5; font-size: 12px;">
               <p>
                  Erstelle eine <a href="' . $helper->url() . 'support" style="text-decoration: underline; color: #4B72FA;">Supportanfrage</a> oder schreiben uns eine Mail <a href="mailto:info@wino-space.de" style="text-decoration: underline; color: #4B72FA;">info@wino-space.de</a>
               </p>
            </div>
         </div>';
$mailSubject = $product_name.'gesperrt - ' . $siteDomain;