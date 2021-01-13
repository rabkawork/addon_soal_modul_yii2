<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\commands;

use yii\console\Controller;
use yii\console\ExitCode;
use app\modules\Soal\models\SoalSubjects;
use app\models\User;

/**
 * This command echoes the first argument that you have entered.
 *
 * This command is provided as an example for you to learn how to create console commands.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class HelloController extends Controller
{
    /**
     * This command echoes what you have entered as the message.
     * @param string $message the message to be echoed.
     * @return int Exit code
     */
    public function actionIndex()
    {
        // echo $message . "\n";
        // return ExitCode::OK;

        $user = new User();
        $user->username =  'admin';
        $user->email = 'admin@test.com';
        $user->setPassword('admin');
        $user->generateAuthKey();

        if ($user->save()) {
            echo 'admin has been created';
        }



        $user = new User();
        $user->username =  'user';
        $user->email = 'user@test.com';
        $user->setPassword('user');
        $user->generateAuthKey();

        if ($user->save()) {
            echo 'user has been created';
        }



        $user = new User();
        $user->username =  'user1';
        $user->email = 'user1@test.com';
        $user->setPassword('user1');
        $user->generateAuthKey();

        if ($user->save()) {
            echo 'user1 has been created';
        }


    }
}
