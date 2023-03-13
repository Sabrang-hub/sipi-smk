<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<head>

    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
    <title>LEMBAR PENILAIAN - <?= date('YmdHis') ?></title>
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
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>

</head>

<body>
    <div style="padding-left: 8%;padding-right: 8%">
        <table cellspacing="0" border="0" cellpadding="4" style="border-collapse: collapse; width:100%">
            <tr>
                <td align="center" colspan="4"><b>LEMBAR PENILAIAN</b></td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td width="6%" bgcolor="#79c0cc" style="border:1px solid black;" align="center" rowspan="2"><b>No.</b></td>
                <td width="44%" bgcolor="#79c0cc" style="border:1px solid black;" align="center" rowspan="2"><b>Kompetensi yang Dinilai</b></td>
                <td bgcolor="#79c0cc" style="border:1px solid black;" align="center" colspan="2"><b>Nilai</b></td>
            </tr>
            <tr>
                <td width="30%" bgcolor="#79c0cc" style="border:1px solid black;" align="center"><b>Pembimbing Instansi</b></td>
                <td width="30%" bgcolor="#79c0cc" style="border:1px solid black;" align="center"><b>Guru Pembimbing</b></td>
            </tr>
            <tr>
                <td style="border:1px solid black;" colspan="4"><b>Kompetensi Umum</b></td>
            </tr>
            <?php
            $text = ['1' => 'Disiplin Kerja', 'Motivasi Kerja', 'Inisiatif', 'Etika', 'Komunikasi', 'Tanggung Jawab', 'Komunikasi Kerja'];
            ?>
            <?php for ($i = 1; $i <= 7; $i++) : ?>
                <tr>
                    <td style="border:1px solid black;" align="center"><?= $i ?>.</td>
                    <td style="border:1px solid black;"><?= $text[$i] ?></td>
                    <td style="border:1px solid black;"></td>
                    <td style="border:1px solid black;"></td>
                </tr>
            <?php endfor ?>
            <tr>
                <td style="border:1px solid black;" colspan="4"><b>Kompetensi Tambahan dari Dudi</b></td>
            </tr>
            <?php for ($i = 1; $i <= 7; $i++) : ?>
                <tr>
                    <td style="border:1px solid black;" align="center"><?= $i ?>.</td>
                    <td style="border:1px solid black;"></td>
                    <td style="border:1px solid black;"></td>
                    <td style="border:1px solid black;"></td>
                </tr>
            <?php endfor ?>
        </table>
    </div>
    <br>
    <br>
    <table cellspacing="0" border="0" cellpadding="4" style="border-collapse: collapse; width:100%; font-style: italic;">
        <tr>
            <td colspan="3">Keterangan Nilai:</td>
        </tr>
        <tr>
            <td style="padding-left: 20px;width:15%">9,1 - 10</td>
            <td width="2px">:</td>
            <td>Sangat Memuaskan</td>
        </tr>
        <tr>
            <td style="padding-left: 20px;width:15%">8,1 - 9,0</td>
            <td width="2px">:</td>
            <td>Memuaskan</td>
        </tr>
        <tr>
            <td style="padding-left: 20px;width:15%">7,1 - 8,0</td>
            <td width="2px">:</td>
            <td>Cukup Memuaskan</td>
        </tr>
        <tr>
            <td style="padding-left: 20px;width:15%">
                < 7,1</td>
            <td width="2px">:</td>
            <td>Kurang</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <div align="center" width="100%"><b>Disahkan Oleh:</b></div>
    <br />
    <div style="padding-left: 8%;">
        <table cellspacing="0" border="0" cellpadding="4" style="border-collapse: collapse; width:100%">
            <tr>
                <td width="43%">Guru Pembimbing</td>
                <td width="14%"></td>
                <td width="43%">Pembimbing Industri</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td style="white-space:nowrap;" valign="top" colspan="2"><u><?= $data['nama_guru'] ?></u><br />NIP <?= $data['guru_id'] ?></td>
                <td style="white-space:nowrap;" valign="top"><u><?= $data['nama_pembimbing'] ?></u></td>
            </tr>
        </table>
    </div>
</body>

</html>