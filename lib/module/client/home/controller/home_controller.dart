import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_noise_streaming_konten_audio/riverpod_util.dart';
import '../view/home_view.dart';

class HomeController extends ChangeNotifier implements HyperController {
  HomeView? view;

  List tabs = [
    {"title": "Buat Kamu", "isActive": true},
    {"title": "Podcast", "isActive": false},
    {"title": "Audioseries", "isActive": false},
    {"title": "Radio", "isActive": false},
    {"title": "Audiobook", "isActive": false},
  ];

  List banner = [
    {
      "title": "Eps 159: Kejutan Tak Terduga Sebelum Jeda Internasional",
      "image": "assets/image/banner/bola_banget.png",
      "deskripsi":
          "Belum mulai jeda internasional udah banyak kejutan-kejutan! Dari pertandingan di 3 liga top Eropa sampai kejutan yang membanggakan, Timnas U20 berhasil lolos Asian Cup!! Wooow kasih tau dibawah yaa kira-kira pertandingan yang mengejutkan menurut paranoice sebelum dimulainya jeda apa aja? Kebanyakan kalo ngomongin bola, pasti yang dibahas taktik & performa pemainnya. Tapi bagi Jerry dan Afif bahas bola ga harus serius - serius banget apalagi sampe adu otot! Follow IG @podcastbolabanget @jerryarvino @afifxavi untuk dapat update terbaru seputar sepak bola",
      "date_upload": "20 September 2022",
      "chanel": "BaBa",
      "subcriber": "17.3 rb",
      "host": "Alif Safi",
      "kreator": [
        {
          "img-profile": "",
          "username": "@randika_djamil",
          "name": "randhika djamil"
        }
      ]
    },
    {
      "title": "Surabaya & Misterinya",
      "image": "assets/image/banner/surabaya_and_misterinya.png",
      "deskripsi":
          "PART I: Kampus Gunung Anyar PART II: Mall Bekas Rumah Sakit PART III: Kantin Sementara 1 malam 3 cerita yang akan membuat malammu lebih panjang bersama Fadil Camui, Shahabi Sakri, dan Nadilla hanya di Scary Things Jangan lupa follow instagram @scarythings.indo untuk update episode terbaru",
      "date_upload": "20 September 2022",
      "chanel": "Scary Thing",
      "subcriber": "27.51 rb",
      "host": "Shahabi Sakri",
      "kreator": [
        {
          "img-profile": "",
          "username": "@randika_djamil",
          "name": "randhika djamil"
        }
      ]
    },
    {
      "title": "Eps 24: Rekaman Podcast di Studio Papalova",
      "image": "assets/image/banner/trio_kurnia.png",
      "deskripsi":
          "Kata Desta tiap rabu sore di Papalova ada penampilan Reog Ponorogo Trio Kurnia dipandu oleh Vincent Kurnia, Andre Kurnia, & Desta Kurnia, di sini mereka akan berbagi cerita tentang orang-orang yang menghiasi hidup mereka dan berterima kasih akan jasanya Suka sama Trio Kurnia? Jangan lupa follow @trio.kurnia di Instagram!",
      "chanel": "TRIO KURNIA(Vincent Desta & Andre)",
      "subcriber": "208.89 rb",
      "host": "Andre Taulany",
      "kreator": [
        {
          "img-profile": "",
          "username": "@randika_djamil",
          "name": "randhika djamil"
        }
      ]
    },
    {
      "title": "Eps 346: #BERIZIKBERIZIK - Fashion Gothic Avril Lavigne",
      "image": "assets/image/banner/berizik.png",
      "deskripsi":
          "Jeremy Teti mah lewat ini!!! SONGLIST: 17:02 Girlfriend - Avril Lavigne 30:23 Tippa My Tongue - Red Hot Chilli Peppers 39:52 Yen - Slipknot 48:41 Kemesraan & Aitakatta - Iwan Fals & JKT48 01:02:15 Pink Venom - Blackpink Awwe dan Randhika Djamil ngomongin musik tapi gak serius-serius amat. Bercanda Isinya Musik Pake Z yaa.. Jangan lupa follow Instagram @berizik.noice biar gak ketinggalan info Berizik terupdate ya!",
      "date_upload": "21 September 2022",
      "chanel": "BERIZIK",
      "subcriber": "40.02 rb",
      "host": "Randhika djamil",
      "kreator": [
        {
          "img-profile": "",
          "username": "@randika_djamil",
          "name": "randhika djamil"
        }
      ]
    },
    {
      "title": "Eps 14: Sekolah Gak Penting (Version 2.0)",
      "image": "assets/image/banner/dedyissu.png",
      "deskripsi":
          "Sekolah itu gak penting! Sekolah itu ngajarin kalian untuk jadi karyawam, bukan leader! 4:06 Sekolah untuk jadi karyawan 15:27 Azka bolos, gurunya yang dimarahin 20:10 Kenapa anak gak perlu les 28:03 Sekarang anak cowok gak diajarin caranya menjadi laki-laki 31:39 DC inget mantan di SMP 37:26 Laki-laki harus bisa berantem 45:49 Tell your kids, you’ll not always be there 51:26 Rekomendasi buku DEDDY ISSUES akan mengajak kamu membahas setiap isu yang terjadi dan penyebabnya. Deddy Corbuzier punya penjelasannya. Follow instagram @deddyissues.podcast untuk updates episode terbaru!",
      "date_upload": "16 September 2022",
      "chanel": "DEDDY ISSUES",
      "subcriber": "32.92 rb",
      "host": "Deddy Corbuzier",
      "kreator": [
        {
          "img-profile": "",
          "username": "@randika_djamil",
          "name": "randhika djamil"
        }
      ]
    },
    {
      "title": "Eps 68: Deni Kebo, Dicubit, Main Bola",
      "image": "assets/image/banner/lambemu.png",
      "deskripsi":
          "cerito sekolah dono deni, hukuman ekstrim jaman sekolah, kenangan elek firza ambek guru olahraga. Ngerasani kelakuan tonggo seng koyok taek gawe mumet karo Dono ambek Firza. Follow instagram kene supaya ora keri info2 nang @podcastlambemu ojo lali folow Dono @donopradana ambek Firza @firza_valaza yo",
      "date_upload": "20 September 2022",
      "chanel": "Lambemu",
      "subcriber": "45.91 rb",
      "host": "Dono Pradana",
      "kreator": [
        {
          "img-profile": "",
          "username": "@randika_djamil",
          "name": "randhika djamil"
        }
      ]
    },
  ];
}

final homeController = ChangeNotifierProvider<HomeController>((ref) {
  return HomeController();
});
