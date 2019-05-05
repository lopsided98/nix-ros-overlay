
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-soem";
  version = "1.3.0";

  src = fetchurl {
    url = https://github.com/mgruhler/soem-gbp/archive/release/melodic/soem/1.3.0-0.tar.gz;
    sha256 = "79cdd2124448cb591bcccded0b04a2bc74e0a44c030c84187b1e9aaa6a1ea7cb";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SOEM is an open source EtherCAT master library written in c. Its
     primary target is Linux but can be adapted to other OS and
     embedded systems. (http://developer.berlios.de/projects/soem/)

     This package contains the original soem c code provided by the Technische Universiteit Eindhoven.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
