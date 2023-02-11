<?php

if (!function_exists('bulan')) {
    function bulan($bulan)
    {
        switch ($bulan) {
            case 1:
                $bulan = "Januari";
                break;
            case 2:
                $bulan = "Februari";
                break;
            case 3:
                $bulan = "Maret";
                break;
            case 4:
                $bulan = "April";
                break;
            case 5:
                $bulan = "Mei";
                break;
            case 6:
                $bulan = "Juni";
                break;
            case 7:
                $bulan = "Juli";
                break;
            case 8:
                $bulan = "Agustus";
                break;
            case 9:
                $bulan = "September";
                break;
            case 10:
                $bulan = "Oktober";
                break;
            case 11:
                $bulan = "November";
                break;
            case 12:
                $bulan = "Desember";
                break;
            default:
                $bulan = Date('F');
                break;
        }
        return $bulan;
    }
}

if (!function_exists('tanggal')) {
    function tanggal($tanggal)
    {
        $a = explode('-', $tanggal);
        $tanggal = $a['2'] . " " . bulan($a['1']) . " " . $a['0'];
        return $tanggal;
    }
}

if (!function_exists('tahun')) {
    function tahun($tahun)
    {
        if ($tahun <> '') {
            $tahun = date('Y', strtotime($tahun));
        }
        return $tahun;
    }
}

if (!function_exists('romawi')) {
    function romawi($value = 0)
    {
        $data = array(
            0  => '',
            1  => 'I',
            2  => 'II',
            3  => 'III',
            4  => 'IV',
            5  => 'V',
            6  => 'VI',
            7  => 'VII',
            8  => 'VIII',
            9  => 'IX',
            10 => 'X',
            11 => 'XI',
            12 => 'XII',
        );
        return $data[$value];
    }
}


if (!function_exists('date_id')) {
    function date_id($value = '')
    {
        if ($value == '' || $value == null) {
            return null;
        } else {
            $value = str_replace('/', '-', $value);
            $value = date('d-m-Y', strtotime($value));
            return $value;
        }
    }
}

if (!function_exists('date_en')) {
    function date_en($value = '')
    {
        if ($value == '' || $value == null) {
            return null;
        } else {
            $value = str_replace('/', '-', $value);
            $value = date('Y-m-d', strtotime($value));
            return $value;
        }
    }
}

if (!function_exists('date_f')) {
    function date_f($value = '', $f = 'Y-m-d')
    {
        if ($value == '' || $value == null) {
            return null;
        } else {
            $value = str_replace('/', '-', $value);
            $value = date($f, strtotime($value));
            return $value;
        }
    }
}

if (!function_exists('timestamp_ago')) {
    function timestamp_ago($timestamp)
    {
        $time_ago        = strtotime($timestamp);
        $current_time    = time();
        $time_difference = $current_time - $time_ago;
        $seconds         = $time_difference;
        $minutes         = round($seconds / 60);        // value 60 is seconds  
        $hours           = round($seconds / 3600);       //value 3600 is 60 minutes * 60 sec  
        $days            = round($seconds / 86400);      //86400 = 24 * 60 * 60;  
        $weeks           = round($seconds / 604800);     // 7*24*60*60;  
        $months          = round($seconds / 2629440);    //((365+365+365+365+366)/5/12)*24*60*60  
        $years           = round($seconds / 31553280);   //(365+365+365+365+366)/5 * 24 * 60 * 60  
        if ($seconds <= 60) {
            return "Baru saja";
        } else if ($minutes <= 60) {
            if ($minutes == 1) {
                return "1 menit yang lalu";
            } else {
                return "$minutes menit yang lalu";
            }
        } else if ($hours <= 24) {
            if ($hours == 1) {
                return "1 jam yang lalu";
            } else {
                return "$hours jam yang lalu";
            }
        } else if ($days <= 7) {
            if ($days == 1) {
                return "Kemarin";
            } else {
                return "$days hari yang lalu";
            }
        } else if ($weeks <= 4.3) {  //4.3 == 52/12
            if ($weeks == 1) {
                return "Seminggu yang lalu";
            } else {
                return "$weeks minggu yang lalu";
            }
        } else if ($months <= 12) {
            if ($months == 1) {
                return "Sebulan yang lalu";
            } else {
                return "$months bulan yang lalu";
            }
        } else {
            if ($years == 1) {
                return "Setahun yang lalu";
            } else {
                return "$years tahun yang lalu";
            }
        }
    }
}

if (!function_exists('get_client_ip')) {
    function get_client_ip()
    {
        $ipaddress = '';
        if (isset($_SERVER['HTTP_CLIENT_IP']))
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        else if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_X_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        else if (isset($_SERVER['HTTP_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        else if (isset($_SERVER['REMOTE_ADDR']))
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        else
            $ipaddress = 'UNKNOWN';
        return $ipaddress;
    }
}


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

if (!function_exists('base64_url_encode')) {
    function base64_url_encode($value = '')
    {
        return strtr(base64_encode($value), '+/=', '-_ ');
    }
}

if (!function_exists('base64_url_decode')) {
    function base64_url_decode($value = '')
    {
        return base64_decode(strtr($value, '-_ ', '+/='));
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

if (!function_exists('encrypt_url')) {
    function encrypt_url($string)
    {

        $output = false;
        /*
    * read security.ini file & get encryption_key | iv | encryption_mechanism value for generating encryption code
    */
        $security       = security_ini();
        $secret_key     = $security["encryption_key"];
        $secret_iv      = $security["iv"];
        $encrypt_method = $security["encryption_mechanism"];

        // hash
        $key    = hash("sha256", $secret_key);

        // iv – encrypt method AES-256-CBC expects 16 bytes – else you will get a warning
        $iv     = substr(hash("sha256", $secret_iv), 0, 16);

        //do the encryption given text/string/number
        $result = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
        $output = base64_encode($result);
        return $output;
    }
}


if (!function_exists('decrypt_url')) {
    function decrypt_url($string)
    {

        $output = false;
        /*
    * read security.ini file & get encryption_key | iv | encryption_mechanism value for generating encryption code
    */

        $security       = security_ini();
        $secret_key     = $security["encryption_key"];
        $secret_iv      = $security["iv"];
        $encrypt_method = $security["encryption_mechanism"];

        // hash
        $key    = hash("sha256", $secret_key);

        // iv – encrypt method AES-256-CBC expects 16 bytes – else you will get a warning
        $iv = substr(hash("sha256", $secret_iv), 0, 16);

        //do the decryption given text/string/number

        $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
        return $output;
    }
}

if (!function_exists('security_ini')) {
    function security_ini()
    {
        return array(
            'encryption_key' => 'bygbsdg%46f7gbv@',
            'iv' => 2456378494765431,
            'encryption_mechanism' => 'aes-256-cbc'
        );
    }
}
