<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_laporan', 'laporan');
    }

    public function laporan_pkl()
    {
        if ($this->session->userdata('is_login')) {
            $html =  $this->laporan->laporan_pkl();
            $mpdf = new \Mpdf\Mpdf();
            $mpdf->SetFooter('Printed SIP-PKL on @ {DATE j-m-Y H:i:s} || Page {PAGENO} of {nb}');
            $mpdf->AddPage('L');
            $mpdf->WriteHTML($html);
            $mpdf->Output('Laporan_kegiatan_' . date('YmdHis') . '.pdf', 'I');
        } else {
            redirect(base_url('auth'));
        }
    }

    public function laporan_absensi()
    {
        if ($this->session->userdata('is_login')) {
            $html =  $this->laporan->laporan_absensi();
            $mpdf = new \Mpdf\Mpdf();
            $mpdf->SetFooter('Printed SIP-PKL on @ {DATE j-m-Y H:i:s} || Page {PAGENO} of {nb}');
            $mpdf->AddPage('L');
            $mpdf->WriteHTML($html);
            $mpdf->Output('Rekap_Kehadiran_' . date('YmdHis') . '.pdf', 'I');
        } else {
            redirect(base_url('auth'));
        }
    }

    public function lembar_penilaian()
    {
        if ($this->session->userdata('is_login')) {
            $html =  $this->laporan->lembar_penilaian();
            $mpdf = new \Mpdf\Mpdf();
            $mpdf->SetFooter('Printed SIP-PKL on @ {DATE j-m-Y H:i:s} || Page {PAGENO} of {nb}');
            $mpdf->AddPage('P');
            $mpdf->WriteHTML($html);
            $mpdf->Output('Lembar_Penilaian_' . date('YmdHis') . '.pdf', 'I');
        } else {
            redirect(base_url('auth'));
        }
    }
}
