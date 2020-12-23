import 'package:flutter/material.dart';

class Trip {
  String id;
  String url;
  String areaTag;
  String mapUrl;
  Color above;
  Color bottom;

  Trip({
    this.id,
    this.url,
    this.areaTag,
    this.mapUrl,
    this.above,
    this.bottom,
  });

  Trip.fromMap(Map map)
      : id = map['id'],
        url = map['url'],
        areaTag = map['areaTag'],
        mapUrl = map['mapUrl'];

  Map toMap() {
    return {
      "id": id,
      "url": url,
      "areaTag": areaTag,
      "mapUrl": mapUrl,
    };
  }
}

List<Trip> trip = [
  Trip(
    id: '0',
    url:
        'https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/122182672_353800295826024_7385133155799009538_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=G7LmQqbcfv4AX9vDimU&se=7&tp=1&oh=69d498029567fc0a00dca28048a81f04&oe=600ECAFC',
    areaTag: 'Lagh da Saoseo',
    mapUrl: 'https://goo.gl/maps/kF7ecbjdiVfnmDZAA',
    above: Color.fromRGBO(181, 167, 158, 1),
    bottom: Color.fromRGBO(181, 190, 170, 1),
  ),
  Trip(
    id: '1',
    url:
        'https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/120319795_659382371680120_5135109428717453177_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=5VDLLcwl21IAX9GzC73&tp=1&oh=85a7b22a54cd6ac184a0e8789926de71&oe=600D5512',
    areaTag: 'Vierwaldstättersee',
    mapUrl: 'https://goo.gl/maps/eMs1VzhnaxvCs44g7',
    above: Color.fromRGBO(217, 201, 201, 1),
    bottom: Color.fromRGBO(217, 169, 120, 1),
  ),
  Trip(
    id: '2',
    above: Color.fromRGBO(220, 200, 189, 1),
    bottom: Color.fromRGBO(220, 240, 240, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/130848062_400334394415057_6073561061797738612_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=Td2HFb1zM7IAX8Qv8Ju&tp=1&oh=fb416588f7268512e808b5faaffaab8a&oe=600BCF25",
    areaTag: "Furkapass",
    mapUrl: "https://goo.gl/maps/4LJ79MpRgBodmEqV8",
  ),
  Trip(
    id: '3',
    above: Color.fromRGBO(217, 169, 120, 1),
    bottom: Color.fromRGBO(217, 190, 190, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/131975533_411517016566423_6429713226596883265_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=v339oijrmCMAX-yTmfQ&tp=1&oh=e6e208ee6b3ac3b074513235a2e58ae0&oe=600E5E22",
    areaTag: "Creux de Van",
    mapUrl: "https://goo.gl/maps/erWwLpTmVJgLx2Wh6",
  ),
  Trip(
    id: '4',
    above: Color.fromRGBO(170, 204, 203, 1),
    bottom: Color.fromRGBO(170, 240, 240, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/124937770_213512660191553_8631661890160691773_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=aXjJEIw9Hn0AX_XDfkv&tp=1&oh=7742f8bfbd95e61fff72074fb4fa909b&oe=600C014F",
    areaTag: "Iseltwald",
    mapUrl: "https://goo.gl/maps/WdNLsxoGnzW8dyRw6",
  ),
  Trip(
    id: '5',
    above: Color.fromRGBO(217, 201, 201, 1),
    bottom: Color.fromRGBO(217, 169, 120, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/131080807_178149427349200_4297888335716601333_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=CGW329G2Rs8AX8-o3h6&tp=1&oh=aeea735e39c9b21144595d03c8085689&oe=600D59F1",
    areaTag: "Lauterbrunnen",
    mapUrl: "https://goo.gl/maps/buqTNGpScskCHqvPA",
  ),
   Trip(
    id: '6',
    above: Color.fromRGBO(181, 167, 158, 1),
    bottom: Color.fromRGBO(181, 190, 170, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/fr/e15/p1080x1080/130299486_211614653765774_4561254667516514786_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=9YC-AZJj6qwAX9dShoz&tp=1&oh=72d997f8aba8f0b939e3161c336b3649&oe=600BA621",
    areaTag: "Tschuggen",
    mapUrl: "https://goo.gl/maps/WBZj4MpbWN3JiRGm6",
  ),
  Trip(
    id: '7',
    above: Color.fromRGBO(217, 201, 201, 1),
    bottom: Color.fromRGBO(217, 169, 120, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/132313421_401347911299331_7346130628109807967_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=LqtyWeZFyxYAX96HunA&tp=1&oh=1d054608762113dc826a691261b364bb&oe=600D9703",
    areaTag: "Laax",
    mapUrl: "https://goo.gl/maps/YyvV8osNP1GxE8K49",
  ),
  Trip(
    id: '8',
    above: Color.fromRGBO(220, 200, 189, 1),
    bottom: Color.fromRGBO(220, 240, 240, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/132094545_223019719274237_8211924168870097974_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=ps9Zar18aF4AX-ybb-s&tp=1&oh=ab1c68aa42ef289ef82bb8cc6ec275ce&oe=600B64D9",
    areaTag: "Davos",
    mapUrl: "https://goo.gl/maps/8ntzgWu262pvv6oTA",
  ),
  Trip(
    id: '9',
    above: Color.fromRGBO(217, 201, 201, 1),
    bottom: Color.fromRGBO(217, 169, 120, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/44923107_294140504642602_5163031442375342049_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=KnDHeGycWHgAX8YChhq&tp=1&oh=244cdadddef5d32edee076202f0f28bd&oe=600E6472",
    areaTag: "Latsch",
    mapUrl: "https://goo.gl/maps/v1aJg8QNQ4AV76kS9",
  ),
  Trip(
    id: '10',
    above: Color.fromRGBO(181, 167, 158, 1),
    bottom: Color.fromRGBO(181, 190, 170, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/121504092_386500655720735_8888049898479748391_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=N5QPBYffXZYAX_6WpKh&tp=1&oh=a002c5dd3808e534ef967ec633e85f53&oe=600EA368",
    areaTag: "Lej da Staz",
    mapUrl: "https://goo.gl/maps/xzXJouJQnvgQ5SaX6",
  ),
  Trip(
    id: '11',
    above: Color.fromRGBO(217, 201, 201, 1),
    bottom: Color.fromRGBO(217, 169, 120, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/132201634_811559932733128_510973772617743462_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=khS96UvuGccAX853KuG&tp=1&oh=5fed8ccc8481cc53e214b5cebb2a9e00&oe=600CE364",
    areaTag: "Samnaun",
    mapUrl: "https://goo.gl/maps/yf3yoYsZmBqi6BD48",
  ),
  Trip(
    id: '12',
    above: Color.fromRGBO(181, 167, 158, 1),
    bottom: Color.fromRGBO(181, 190, 170, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/90146138_2735301883245415_6138821082562550414_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=PRrPDj7MdA8AX_UuAnz&tp=1&oh=dc554b4b2f8f2bc03e9f0beed69784f9&oe=600B8831",
    areaTag: "Grossmünster",
    mapUrl: "https://goo.gl/maps/cM53W2WWQy27nGrv9",
  ),
  Trip(
    id: '13',
    above: Color.fromRGBO(170, 204, 203, 1),
    bottom: Color.fromRGBO(170, 240, 240, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/129336571_392105538718724_3110952864352630132_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=Gv7rK6oo9CoAX-1BMOq&tp=1&oh=a45fb6f87792c8987e434dcd7d1d2911&oe=600BD1D7",
    areaTag: "Lai da Palpuogna",
    mapUrl: "https://goo.gl/maps/BG6N7UaU8bG8xUg16",
  ),
  Trip(
    id: '14',
    above: Color.fromRGBO(217, 201, 201, 1),
    bottom: Color.fromRGBO(217, 169, 120, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/125371587_689796698589216_3892159491032375909_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=smEDkTq0x4gAX_Jh_h9&tp=1&oh=6f63124b9bdf905fbe7f1d4bd2a563f8&oe=600BBDEC",
    areaTag: "Julierpass",
    mapUrl: "https://goo.gl/maps/6tK8q1DsYpci6vLp7",
  ),
  Trip(
    id: '15',
    above: Color.fromRGBO(217, 201, 201, 1),
    bottom: Color.fromRGBO(217, 169, 120, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/129740246_2286813991453507_8085013582379883507_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=RuMVtbKEoC8AX8YwiiD&tp=1&oh=bdbbf65024fcb095c1a376fda0d879c8&oe=600C368B",
    areaTag: "Ascona",
    mapUrl: "https://goo.gl/maps/NndupLFiRm2UGX5SA",
  ),
  Trip(
    id: '16',
    above: Color.fromRGBO(181, 167, 158, 1),
    bottom: Color.fromRGBO(181, 190, 170, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/132197117_324039042034385_2945956839497908520_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=nL9jnPXFeqUAX9XFwZQ&tp=1&oh=79af1fec6b5590700c184cc4a0f78880&oe=600AE2D1",
    areaTag: "Lugano",
    mapUrl: "https://goo.gl/maps/NCMBihFTpW11HKEN9",
  ),
  Trip(
    id: '17',
    above: Color.fromRGBO(170, 204, 203, 1),
    bottom: Color.fromRGBO(170, 240, 240, 1),
    url:
        "https://instagram.fqls2-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/129721576_308566537090046_7460997871436761047_n.jpg?_nc_ht=instagram.fqls2-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=xhV_syTFcLcAX8lQ4DT&tp=1&oh=fb8393372a113cdd9101bf33be22a8f9&oe=600E9A60",
    areaTag: "Chur",
    mapUrl: "https://goo.gl/maps/9oya9efjk3kbxLa39",
  ),
];
