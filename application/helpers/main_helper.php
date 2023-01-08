<?php

if (!function_exists('client')) {
    function client($field = '')
    {
        if ($field <> '') {
            $_ci = &get_instance();
            $res = $_ci->db->where('host', $_SERVER['HTTP_HOST'])->limit('1')->get('m_client_setting');
            return $res->row($field);
        } else {
            return '';
        }
    }
}

if (!function_exists('nama')) {
    function nama($table = '', $field = '', $where = '')
    {
        if ($table <> '' && $field <> '') {
            $_ci = &get_instance();
            if ($where <> '') {
                $_ci->db->where($where);
            }
            $res = $_ci->db->get($table);
            if ($res->num_rows() > 0) {
                return $res->row($field);
            } else {
                return '';
            }
        } else {
            return '';
        }
    }
}
