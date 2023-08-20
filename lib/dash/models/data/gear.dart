//
//  car_dash_2
//  gear
//
//  Created by Ngonidzashe Mangudya on 20/08/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

enum Gear {
  neutral('N'),
  drive('D'),
  reverse('R'),
  park('P');

  const Gear(this.name);
  final String name;
}
