# Configure users
class user::users {

  user { 'dds':
    comment => 'Diomidis Spinellis',
    shell   => '/bin/bash',
    home    => '/home/dds',
    groups  => [
      'sudo',
      'repo',
      'balab',
    ],
  }

  user { 'louridas':
    comment => 'Panagiotis Louridas',
    shell   => '/bin/bash',
    home    => '/home/louridas',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'dimitro':
    comment => 'Dimitris Mitropoulos',
    shell   => '/bin/bash',
    home    => '/home/dimitro',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'kravvaritis':
    comment => 'Konstantinos Kravvaritis',
    shell   => '/bin/bash',
    home    => '/home/kravvaritis',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'tushar':
    comment => 'Tushar Sharma',
    shell   => '/bin/bash',
    home    => '/home/tushar',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'antonis':
    comment => 'Antonis Gkortzis',
    shell   => '/bin/bash',
    home    => '/home/antonis',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'mfg':
    comment => 'Marios Fragkoulis',
    shell   => '/bin/bash',
    home    => '/home/mfg',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'vitsalis':
    comment => 'Vitalis Salis',
    shell   => '/bin/bash',
    home    => '/home/vitsalis',
    groups  => [
      'repo',
      'balab',
    ],
  }

user { 'maria':
    comment => 'Maria Kehagia',
    shell   => '/bin/bash',
    home    => '/home/maria',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'sgeorgiou':
    comment => 'Stefanos Georgiou',
    shell   => '/bin/bash',
    home    => '/home/sgeorgiou',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'vasiliki':
    comment => 'Vasiliki Efstathiou',
    shell   => '/bin/bash',
    home    => '/home/vasiliki',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'dritsakon':
    comment => 'Konstantins Dritsa',
    shell   => '/bin/bash',
    home    => '/home/dritsakon',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'theosotr':
    comment => 'Thodoris Sotiropoulos',
    shell   => '/bin/bash',
    home    => '/home/theosotr',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'schaliasos':
    comment => 'Stefanos Chaliasos',
    shell   => '/bin/bash',
    home    => '/home/schaliasos',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'marios':
    comment => 'Marios Papachristou',
    shell   => '/bin/bash',
    home    => '/home/marios',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'estathoula':
    comment => 'Stathoula Chioteli',
    shell   => '/bin/bash',
    home    => '/home/estathoula',
    groups  => [
      'repo',
      'balab',
    ],
  }

  user { 'gbatas':
    comment => 'Giannis Batas',
    shell   => '/bin/bash',
    home    => '/home/gbatas',
    groups  => [
      'repo',
      'balab',
    ],
  }

}
