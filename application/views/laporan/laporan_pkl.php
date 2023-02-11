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
        body,
        div,
        table,
        thead,
        tbody,
        tfoot,
        tr,
        th,
        td,
        p {
            font-family: "Calibri";
            font-size: x-small
        }

        a.comment-indicator:hover+comment {
            background: #ffd;
            position: absolute;
            display: block;
            border: 1px solid black;
            padding: 0.5em;
        }

        a.comment-indicator {
            background: red;
            display: inline-block;
            border: 1px solid black;
            width: 0.5em;
            height: 0.5em;
        }

        comment {
            display: none;
        }
    </style>

</head>

<body>
    <table cellspacing="0" border="0" style="border-collapse: collapse; width:29.7cm">
        <colgroup width="36"></colgroup>
        <colgroup width="119"></colgroup>
        <colgroup span="2" width="224"></colgroup>
        <colgroup width="101"></colgroup>
        <colgroup span="2" width="240"></colgroup>
        <tr>
            <td colspan=7 height="21" align="center" valign=bottom><b>
                    <font face="Times New Roman" size=3 color="#000000">LAPORAN KEGIATAN</font>
                </b></td>
        </tr>
        <tr>
            <td colspan=7 height="21" align="center" valign=bottom><b>
                    <font face="Times New Roman" size=3 color="#000000">PRAKTEK KERJA LAPANGAN (PKL)</font>
                </b></td>
        </tr>
        <tr>
            <td colspan=7 height="21" align="center" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td colspan=2 height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000">NAMA</font>
            </td>
            <td colspan=5 align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000">: <?= strtoupper($data['nama']) ?></font>
            </td>
        </tr>
        <tr>
            <td colspan=2 height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000">NIS</font>
            </td>
            <td colspan=5 align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000">: <?= strtoupper($data['nis']) ?></font>
            </td>
        </tr>
        <tr>
            <td colspan=2 height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000">JURUSAN</font>
            </td>
            <td colspan=5 align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000">: <?= strtoupper($data['nama_jurusan']) ?></font>
            </td>
        </tr>
        <tr>
            <td colspan=2 height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000">INSTANSI</font>
            </td>
            <td colspan=5 align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000">: <?= strtoupper(client('nama_instansi')) ?></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="28" align="center" valign=middle>
                <font face="Times New Roman" size=3 color="#000000">NO</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle>
                <font face="Times New Roman" size=3 color="#000000">TGL KEGIATAN</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle>
                <font face="Times New Roman" size=3 color="#000000">KEGIATAN</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle>
                <font face="Times New Roman" size=3 color="#000000">DOKUMENTASI</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle>
                <font face="Times New Roman" size=3 color="#000000">VERIFIKASI</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle>
                <font face="Times New Roman" size=3 color="#000000">KOMENTAR PEMB. LAPANGAN</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle>
                <font face="Times New Roman" size=3 color="#000000">KOMENTAR PEMB. SEKOLAH</font>
            </td>
        </tr>
        <tr>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="21" align="center" valign=middle sdval="1" sdnum="1033;">
                <font face="Times New Roman" size=3 color="#000000">1</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="21" align="center" valign=middle sdval="2" sdnum="1033;">
                <font face="Times New Roman" size=3 color="#000000">2</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="21" align="center" valign=middle sdval="3" sdnum="1033;">
                <font face="Times New Roman" size=3 color="#000000">3</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="21" align="center" valign=middle sdval="4" sdnum="1033;">
                <font face="Times New Roman" size=3 color="#000000">4</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="21" align="center" valign=middle sdval="5" sdnum="1033;">
                <font face="Times New Roman" size=3 color="#000000">5</font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><?= strtoupper(client('kab_kota')) ?>, 00-00-2023</font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000">PEMBIMBING LAPANGAN</font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
        <tr>
            <td height="21" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
            <td style="border-bottom: 1px solid #000000" align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"></font>
            </td>
            <td align="left" valign=bottom>
                <font face="Times New Roman" size=3 color="#000000"><br></font>
            </td>
        </tr>
    </table>
    <!-- ************************************************************************** -->
</body>

</html>