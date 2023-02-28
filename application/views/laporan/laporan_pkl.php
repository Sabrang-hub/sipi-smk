<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<head>

    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
    <title></title>
    <meta name="generator" content="LibreOffice 5.4.7.2 (Linux)" />
    <meta name="author" content="No Name" />
    <meta name="created" content="2023-02-11T07:41:01" />
    <meta name="changedby" content="No Name" />
    <meta name="changed" content="2023-02-11T07:42:39" />
    <meta name="AppVersion" content="16.0300" />
    <meta name="DocSecurity" content="0" />
    <meta name="HyperlinksChanged" content="false" />
    <meta name="LinksUpToDate" content="false" />
    <meta name="ScaleCrop" content="false" />
    <meta name="ShareDoc" content="false" />

    <style type="text/css">
        * {
            font-size: 12pt;
        }
    </style>

</head>

<body>
    <table cellspacing="0" border="0" cellpadding="4" style="border-collapse: collapse; width:29.7cm">
        <colgroup width="36"></colgroup>
        <colgroup width="119"></colgroup>
        <colgroup span="2" width="224"></colgroup>
        <colgroup width="101"></colgroup>
        <colgroup span="2" width="240"></colgroup>
        <tr>
            <td colspan=7 align="center" valign=top>
                <b>
                    LAPORAN KEGIATAN
                </b>
            </td>
        </tr>
        <tr>
            <td colspan=7 align="center" valign=top>
                <b>
                    PRAKTEK KERJA LAPANGAN (PKL)
                </b>
            </td>
        </tr>
        <tr>
            <td colspan=7 align="center" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td colspan=2 align="left" valign=top>
                NAMA
            </td>
            <td colspan=5 align="left" valign=top>
                : <?= strtoupper($data['nama_siswa']) ?>
            </td>
        </tr>
        <tr>
            <td colspan=2 align="left" valign=top>
                NIS
            </td>
            <td colspan=5 align="left" valign=top>
                : <?= strtoupper($data['siswa_id']) ?>
            </td>
        </tr>
        <tr>
            <td colspan=2 align="left" valign=top>
                JURUSAN
            </td>
            <td colspan=5 align="left" valign=top>
                : <?= strtoupper($data['nama_jurusan']) ?>
            </td>
        </tr>
        <tr>
            <td colspan=2 align="left" valign=top>
                INSTANSI
            </td>
            <td colspan=5 align="left" valign=top>
                : <?= strtoupper($data['nama_industri']) ?>
            </td>
        </tr>
        <tr>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td style="border: 1px solid black;" height="28" align="center" valign=middle>
                NO
            </td>
            <td style="border: 1px solid black;" align="center" valign=middle>
                TGL KEGIATAN
            </td>
            <td style="border: 1px solid black;" align="center" valign=middle>
                KEGIATAN
            </td>
            <td style="border: 1px solid black;" align="center" valign=middle>
                DOKUMENTASI
            </td>
            <td style="border: 1px solid black;" align="center" valign=middle>
                VERIFIKASI
            </td>
            <td style="border: 1px solid black;" align="center" valign=middle>
                KOMENTAR PEMB. LAPANGAN
            </td>
            <td style="border: 1px solid black;" align="center" valign=middle>
                KOMENTAR PEMB. SEKOLAH
            </td>
        </tr>
        <?php
        $no = 1;
        foreach ($log as $row) {
        ?>
            <tr>
                <td style="border: 1px solid black;" align="center" valign=top sdval="1" sdnum="1033;">
                    <?= $no ?>
                </td>
                <td style="border: 1px solid black;" align="center" valign=top>
                    <?= $row->tanggal ?>
                </td>
                <td style="border: 1px solid black;" align="justify" valign=top>
                    <?= $row->uraian ?>
                </td>
                <td style="border: 1px solid black;" align="center" valign=top>
                    <?= ($row->file_foto != '' ? "<img src=\"" . base_url($row->file_foto) . "\" width=\"180px\">" : "") ?>
                </td>
                <td style="border: 1px solid black;" align="center" valign=top>
                    <?= ($row->verifikasi_stat == 1 ? 'Verifikasi' : 'Tidak') ?>
                </td>
                <td style="border: 1px solid black;" valign=top>
                    <?php
                    $res = $this->db->where(['logbook_id' => $row->id, 'jenis' => 2])->order_by('id', 'asc')->get('tbl_keterangan');
                    if ($res->num_rows() > 0) {
                        $html = "<ul style=\"padding-left: 12px;\">";
                        foreach ($res->result() as $ket) {
                            $html .= "<li>$ket->keterangan</li>";
                        }
                        $html .= "</ul>";
                        echo $html;
                    }
                    ?>
                </td>
                <td style="border: 1px solid black;" valign=top>
                    <?php
                    $res = $this->db->where(['logbook_id' => $row->id, 'jenis' => 1])->order_by('id', 'asc')->get('tbl_keterangan');
                    if ($res->num_rows() > 0) {
                        $html = "<ul style=\"padding-left: 12px;\">";
                        foreach ($res->result() as $ket) {
                            $html .= "<li>$ket->keterangan</li>";
                        }
                        $html .= "</ul>";
                        echo $html;
                    }
                    ?>
                </td>
            </tr>
        <?php
            $no++;
        }
        ?>

        <tr>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top colspan="2">
                <?= strtoupper(nama('m_industri', 'nama', ['id', $data['industri_id']])) ?>, <?= strtoupper(tanggal(date('Y-m-d'))) ?>
            </td>
        </tr>
        <tr>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                PEMBIMBING LAPANGAN
            </td>
            <td align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top>
                <br>
            </td>
            <td align="left" valign=top colspan="2">
                <u><?= $data['nama_pembimbing'] ?></u>
            </td>
        </tr>
    </table>
    <!-- ************************************************************************** -->
</body>

</html>