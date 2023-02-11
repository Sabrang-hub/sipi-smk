<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/userguide3/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'main';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['do-login'] = 'auth/do_login';
$route['auth/(:num)'] = 'auth/do_logout/$1';

$route['pengguna'] = 'master/pengguna';
$route['list-pengguna'] = 'master/get_list_data_pengguna';
$route['simpan-pengguna'] = 'master/simpan_pengguna';
$route['hapus-pengguna'] = 'master/hapus_pengguna';

$route['jurusan'] = 'master/jurusan';
$route['list-jurusan'] = 'master/get_list_data_jurusan';
$route['simpan-jurusan'] = 'master/simpan_jurusan';
$route['hapus-jurusan'] = 'master/hapus_jurusan';

$route['industri'] = 'master/industri';
$route['list-industri'] = 'master/get_list_data_industri';
$route['simpan-industri'] = 'master/simpan_industri';
$route['hapus-industri'] = 'master/hapus_industri';

$route['kelas'] = 'master/kelas';
$route['list-kelas'] = 'master/get_list_data_kelas';
$route['simpan-kelas'] = 'master/simpan_kelas';
$route['hapus-kelas'] = 'master/hapus_kelas';

$route['guru'] = 'master/guru';
$route['list-guru'] = 'master/get_list_data_guru';
$route['simpan-guru'] = 'master/simpan_guru';
$route['hapus-guru'] = 'master/hapus_guru';

$route['siswa'] = 'master/siswa';
$route['list-siswa'] = 'master/get_list_data_siswa';
$route['simpan-siswa'] = 'master/simpan_siswa';
$route['hapus-siswa'] = 'master/hapus_siswa';

$route['kelompok'] = 'main/kelompok';
$route['list-kelompok'] = 'main/get_list_data_kelompok';
$route['list-sub-kelompok'] = 'main/get_list_sub_data_kelompok';
$route['simpan-kelompok'] = 'main/simpan_kelompok';
$route['hapus-kelompok'] = 'main/hapus_kelompok';
$route['siswa-kelompok'] = 'main/get_list_siswa_kelompok';
$route['pembimbing-kelompok'] = 'main/get_list_pembimbing_kelompok';

$route['logbook'] = 'main/logbook';
$route['logbook/detail'] = 'main/logbook';
$route['logbook/detail/(:any)'] = 'main/logbook_detail/$1';
$route['list-logbook'] = 'main/get_list_data_logbook';
$route['simpan-logbook'] = 'main/simpan_logbook';
$route['hapus-logbook'] = 'main/hapus_logbook';
$route['simpan-keterangan-logbook'] = 'main/simpan_keterangan_logbook';
$route['hapus-keterangan-logbook'] = 'main/hapus_keterangan_logbook';
$route['simpan-status-logbook'] = 'main/simpan_status_logbook';
$route['list-siswa-logbook'] = 'main/get_list_data_siswa_logbook';
$route['list-siswa-detail-logbook'] = 'main/get_list_data_siswa_detail_logbook';

$route['profil-instansi'] = 'master/profil_instansi';
$route['simpan-profil-instansi'] = 'master/simpan_profil_instansi';

$route['master-group'] = 'master/get_list_group';
$route['master-jurusan'] = 'master/get_list_jurusan';
$route['master-status-user'] = 'master/get_list_status_user';
$route['master-status-user'] = 'master/get_list_status_user';
$route['master-profil-instansi'] = 'master/get_master_profil_instansi';
$route['master-jenis-usaha'] = 'master/get_list_jenis_usaha';
$route['master-industri'] = 'master/get_list_industri';
$route['master-kelas'] = 'master/get_list_kelas';
$route['master-golongan'] = 'master/get_list_golongan';
$route['master-guru'] = 'master/get_list_guru';
$route['master-kode'] = 'master/get_list_kode';

$route['laporan_pkl'] = 'laporan/laporan_pkl';
