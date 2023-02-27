<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<head>

    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
    <title></title>
    <meta name="generator" content="LibreOffice 5.4.7.2 (Linux)" />
    <meta name="author" content="No Name" />
    <meta name="created" content="2023-02-12T17:20:18" />
    <meta name="changedby" content="No Name" />
    <meta name="changed" content="2023-02-12T17:20:59" />
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
    <table cellspacing="0" border="0" cellpadding="4" style="border-collapse: collapse; width:100%">
        <colgroup width="42"></colgroup>
        <colgroup span="2" width="142"></colgroup>
        <colgroup span="3" width="163"></colgroup>
        <colgroup width="209"></colgroup>
        <tr>
            <td colspan=7 height="21" align="center" valign=top><b>
                    REKAP KEHADIRAN
                </b></td>
        </tr>
        <tr>
            <td colspan=7 height="21" align="center" valign=top><b>
                    PRAKTEK KERJA LAPANGAN (PKL)
                </b></td>
        </tr>
        <tr>
            <td colspan=7 height="21" align="center" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td colspan=2 height="21" align="left" valign=top>
                NAMA
            </td>
            <td colspan=5 align="left" valign=top>
                : <?= strtoupper($data['nama_siswa']) ?>
            </td>
        </tr>
        <tr>
            <td colspan=2 height="21" align="left" valign=top>
                NIS
            </td>
            <td colspan=5 align="left" valign=top>
                : <?= strtoupper($data['siswa_id']) ?>
            </td>
        </tr>
        <tr>
            <td colspan=2 height="21" align="left" valign=top>
                JURUSAN
            </td>
            <td colspan=5 align="left" valign=top>
                : <?= strtoupper($data['nama_jurusan']) ?>
            </td>
        </tr>
        <tr>
            <td colspan=2 height="21" align="left" valign=top>
                INSTANSI
            </td>
            <td colspan=5 align="left" valign=top>
                : <?= strtoupper($data['nama_industri']) ?>
            </td>
        </tr>
        <tr>
            <td colspan=7 height="21" align="center" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td style="border: 1px solid #000000; width:5%;" height="26" align="center" valign=middle>
                NO
            </td>
            <td style="border: 1px solid #000000; width:15%;" align="center" valign=middle>
                TANGGAL
            </td>
            <td style="border: 1px solid #000000; width:15%;" align="center" valign=middle>
                WAKTU MASUK
            </td>
            <td style="border: 1px solid #000000; width:15%;" align="center" valign=middle>
                WAKTU PULANG
            </td>
            <td style="border: 1px solid #000000; width:15%;" align="center" valign=middle>
                STATUS KEHADIRAN
            </td>
            <td style="border: 1px solid #000000; width:32%;" align="center" valign=middle>
                KETERANGAN
            </td>
            <td style="border: 1px solid #000000; width:11%;" align="center" valign=middle>
                VERIFIKASI
            </td>
        </tr>
        <?php
        $no = 1;
        foreach ($absensi as $row) {
            if ($row['status'] != 0) {
        ?>
                <tr>
                    <td style="border: 1px solid #000000;" height="21" align="center" valign=top sdval="1" sdnum="1033;">
                        <?= $no ?>
                    </td>
                    <td style="border: 1px solid #000000;" align="center" valign=top>
                        <?= date('d-m-Y', strtotime($row['tanggal'])) ?>
                    </td>
                    <td style="border: 1px solid #000000;" align="center" valign=top>
                        <?= $row['waktu_masuk'] ?>
                    </td>
                    <td style="border: 1px solid #000000;" align="center" valign=top>
                        <?= $row['waktu_pulang'] ?>
                    </td>
                    <td style="border: 1px solid #000000;" align="center" valign=top>
                        <?= $row['nama_status'] ?>
                    </td>
                    <td style="border: 1px solid #000000;" align="justify" valign=top>
                        <?= $row['keterangan_siswa'] ?>
                    </td>
                    <td style="border: 1px solid #000000;" align="center" valign=top>
                        <?= ($row['verifikasi_stat'] == 1 ? 'Diverifikasi' : 'Belum') ?>
                    </td>
                </tr>
        <?php
                $no++;
            }
        }
        ?>
        <tr>
            <td colspan=7 height="21" align="center" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td colspan=7 height="21" align="center" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td colspan=5 height="21" align="center" valign=top>
                <br>
            </td>
            <td colspan=2 align="left" valign=top>
                <?= strtoupper(client('kab_kota')) ?>, <?= strtoupper(tanggal(date('Y-m-d'))) ?>
            </td>
        </tr>
        <tr>
            <td colspan=5 height="21" align="center" valign=top>
                <br>
            </td>
            <td colspan=2 align="left" valign=top>
                PEMBIMBING LAPANGAN
            </td>
        </tr>
        <tr>
            <td colspan=5 height="21" align="center" valign=top>
                <br>
            </td>
            <td colspan=2 align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td colspan=5 height="21" align="center" valign=top>
                <br>
            </td>
            <td colspan=2 align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td colspan=5 height="21" align="center" valign=top>
                <br>
            </td>
            <td colspan=2 align="left" valign=top>
                <br>
            </td>
        </tr>
        <tr>
            <td colspan=5 height="21" align="center" valign=top>
                <br>
            </td>
            <td colspan=2 align="left" valign=top>
                <u><?= $data['nama_pembimbing'] ?></u>
            </td>
        </tr>
    </table>
    <!-- ************************************************************************** -->
</body>

</html>