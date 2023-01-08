<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_auth extends CI_Model
{

    public function do_login()
    {
        $group_id = $this->db->escape_str($this->input->post('group_id'));
        $username = $this->db->escape_str($this->input->post('username'));
        $password = $this->db->escape_str($this->input->post('password'));

        $res = $this->db->where([
            'username' => $username,
            'group_id' => $group_id,
        ])->get('m_user');

        if ($res->num_rows() > 0) {
            if ($res->row('status_user_id') == 0) {
                return [
                    'stat' => false,
                    'kode' => 0,
                    'msg' => 'Akun dinonaktifkan. Silahkan hubungi Administrator.'
                ];
            } else if ($res->row('status_user_id') == 2) {
                return [
                    'stat' => false,
                    'kode' => 2,
                    'msg' => 'Akun terkunci. Silahkan hubungi Administrator.'
                ];
            } else {
                if ($password == $this->encrypt->decode($res->row('password'))) {
                    $data_sess = $res->row_array();
                    $data_sess['is_login'] = true;
                    $data_sess['nama_group'] = $this->db->get_where('m_group', ['id' => $data_sess['group_id']])->row('nama');
                    $this->session->set_userdata($data_sess);
                    $this->db->where('id', $data_sess['id'])->update('m_user', ['last_login' => date('Y-m-d H:i:s')]);
                    return [
                        'stat' => true,
                        'kode' => 1,
                        'msg' => 'Login berhasil. Anda akan diarahkan ke Beranda.'
                    ];
                } else {
                    return [
                        'stat' => false,
                        'kode' => 0,
                        'msg' => 'Kata sandi salah.'
                    ];
                }
            }
        } else {
            return [
                'stat' => false,
                'kode' => 0,
                'msg' => 'Nama pengguna tidak terdaftar.'
            ];
        }
    }

    public function do_logout($id)
    {
        $this->db->where('id', $id)->update('m_user', ['last_logout' => date('Y-m-d H:i:s')]);
        $this->session->sess_destroy();
    }
}
