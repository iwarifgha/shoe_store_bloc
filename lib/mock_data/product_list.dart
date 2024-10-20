

import '../helpers/enums.dart';
import '../model/shoe_model.dart';

final listOfShoes = [
  SmartBoot(
      name: 'Shrek',
      type: ShoeCategory.alien,
      description: 'Feel like the green man with this awesome footwear',
      imageAddress: 'assets/images/pic (4).jpg',
      price: '199',
      intelligence: '56%',
      dangerLevel: DangerLevel.low,
      size: '45'
  ),
  SmartBoot(
      name: 'The Terminator',
      type: ShoeCategory.alien,
      description: 'Feel like the green man with this awesome footwear',
      imageAddress: 'assets/images/pic (2).jpg',
      price: '399',
      intelligence: '56%',
      dangerLevel: DangerLevel.low,
      size: '45'
  ),
  SmartBoot(
      name: 'Toy Story',
      type: ShoeCategory.alien,
      description: 'Feel like the green man with this awesome footwear',
      imageAddress: 'assets/images/pic (8).jpg',
      price: '1000',
      intelligence: '56%',
      dangerLevel: DangerLevel.low,
      size: '45'
  ),
  SmartBoot(
      name: 'Space Odyssey',
      type: ShoeCategory.alien,
      description: 'Feel like the green man with this awesome footwear',
      imageAddress: 'assets/images/pic (6).jpg',
      price: '130',
      intelligence: '56%',
      dangerLevel: DangerLevel.low,
      size: '45'
  ),
  SmartBoot(
      name: 'The Matrix',
      type: ShoeCategory.ai,
      description: 'Feel like the green man with this awesome footwear',
      imageAddress: 'assets/images/pic (1).jpg',
      price: '80',
      intelligence: '56%',
      dangerLevel: DangerLevel.low,
      size: '45'
  ),
  SmartBoot(
      name: 'Kill Bill',
      type: ShoeCategory.ai,
      description: 'Feel like the green man with this awesome footwear',
      imageAddress: 'assets/images/pic (5).jpg',
      price: '400',
      intelligence: '56%',
      dangerLevel: DangerLevel.low,
      size: '45'
  ),
  SmartBoot(
      name: 'The Pirate',
      type: ShoeCategory.alien,
      description: 'The perfect leg for that expedition. Complete with the deadly Pirate package',
      imageAddress: 'assets/images/pic (3).jpg',
      price: '800',
      intelligence: '56%',
      dangerLevel: DangerLevel.low,
      size: '45'
  ),
  SmartBoot(
      name: 'James Bond',
      type: ShoeCategory.alien,
      description: 'Feel like the Bond with this awesome footwear. Complete with the Bond mannerisms, reflexes and intelligience.'
          'You can never miss a step when you are the Bond himself. Explore the adventures waiting for you with this sleek and affordable boot.'
          'You can never miss a step when you are the Bond himself. Explore the adventures waiting for you with this sleek and affordable boot. ',
      imageAddress: 'assets/images/pic (7).jpg',
      price: '250',
      intelligence: '56%',
      dangerLevel: DangerLevel.low,
      size: '45'
  ),
];
final List<SmartBoot> orders = [];