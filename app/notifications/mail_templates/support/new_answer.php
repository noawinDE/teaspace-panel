<?php
$mailContent = '<div style="padding: 60px 70px; border-top: 1px solid rgba(0,0,0,0.05);">
            <h1 style="margin-top: 0px;">
               Hallo '.$user->getDataById($ticketInfos['user_id'],'username').',
            </h1>
            <div style="color: #636363; font-size: 14px;">
               <p>
                  Soeben wurde dir von Uns auf dein Ticket geantowtret
               </p>
               <br>
            </div>
            <h4 style="margin-bottom: 10px;">
                Hast du eine Frage oder ben&ouml;tigst du Hilfe?
            </h4>
            <div style="color: #A5A5A5; font-size: 12px;">
               <p>
                  Erstelle eine <a href="'.$helper->url().'support" style="text-decoration: underline; color: #4B72FA;">Supportanfrage</a> oder schreiben uns eine Mail <a href="mailto:info@wino-space.de" style="text-decoration: underline; color: #4B72FA;">info@wino-space.de</a>
               </p>
            </div>
         </div>';
$mailSubject = 'Neue Ticket Antwort - '.$siteDomain;