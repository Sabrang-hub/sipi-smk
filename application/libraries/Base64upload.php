<?php defined('BASEPATH') or exit('No direct script access allowed');
class Base64upload
{

    function is_base64($s)
    {
        // Check if there are valid base64 characters
        // if (!preg_match('/^[a-zA-Z0-9\/\r\n+]*={0,2}$/', $s)) return false;
        // Decode the string in strict mode and check the results
        $decoded = base64_decode($s, true);
        if (false === $decoded) return false;
        // Encode the string again
        if (base64_encode($decoded) != $s) return false;
        return true;
    }

    public function do_uploads($path, $base64)
    {
        $base64string = explode(',', $base64);
        if (count($base64string) > 1) {
            $base64string = $base64string[1];
        } else {
            $base64string = $base64string[0];
            $base64 = "data:image/jpeg;base64," . $base64;
        }
        if ($this->is_base64($base64string) == true) {
            $base64string = $base64;
            $this->check_size($base64string);
            $this->check_dir($path);
            $this->check_file_type($base64string);

            /*=================uploads=================*/
            list($type, $base64string) = explode(';', $base64string);
            list(, $extension)          = explode('/', $type);
            list(, $base64string)       = explode(',', $base64string);
            $fileName                  = md5(uniqid() . date('Y_m_d_H_i_s')) . '.' . $extension;
            $base64string              = base64_decode($base64string);
            file_put_contents($path . $fileName, $base64string);
            return array('status' => true, 'message' => 'successfully upload !', 'file_name' => $fileName, 'with_path' => $path . $fileName);
        } else {
            print_r(json_encode(array('status' => false, 'message' => 'This Base64 String not allowed !')));
            exit;
        }
    }

    public function check_size($base64string)
    {
        $file_size = 8000000;
        $size = @getimagesize($base64string);

        if ($size['bits'] >= $file_size) {
            print_r(json_encode(array('status' => false, 'message' => 'file size not allowed !')));
            exit;
        }
        return true;
    }

    public function check_dir($path)
    {
        if (!file_exists($path)) {
            mkdir($path, 0777, true);
            return true;
        }
        return true;
    }

    public function check_file_type($base64string)
    {
        $mime_type = @mime_content_type($base64string);
        $allowed_file_types = ['image/png', 'image/jpeg', 'application/pdf'];
        if (!in_array($mime_type, $allowed_file_types)) {
            // File type is NOT allowed
            // print_r(json_encode(array('status' =>false,'message' => 'File type is NOT allowed !')));exit;
        }
        return true;
    }
}
