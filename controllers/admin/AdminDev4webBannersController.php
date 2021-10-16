<?php
/**
* @author      Dev4Web
* 
* @license     http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*/

class AdminDev4webBannersController extends ModuleAdminController
{
    public function ajaxProcessUpdatePosition()
    {
        $items = Tools::getValue('item');
        $total = count($items);
        $success = true;
        for ($i = 1; $i <= $total; $i++) {
            $success &= Db::getInstance()->update('dev4webbanners', array('item_order' => $i), '`id_item` = '.preg_replace('/(item-)([0-9]+)/', '${2}', $items[$i - 1]));
        }
        if (!$success) {
            die(Tools::jsonEncode(array('error' => 'Update Fail')));
        }
        die(Tools::jsonEncode(array('success' => 'Update Success !', 'error' => false)));
    }
}
