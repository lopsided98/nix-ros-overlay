
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-soem";
  version = "1.3.0";

  src = fetchurl {
    url = https://github.com/smits/soem-gbp/archive/release/lunar/soem/1.3.0-0.tar.gz;
    sha256 = "ef8fcaec2c21afc0d51aceba3a3218313092f6150f127595bc01698b0b279029";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SOEM is an open source EtherCAT master library written in c. Its
     primary target is Linux but can be adapted to other OS and
     embedded systems. (http://developer.berlios.de/projects/soem/)

     This package contains the original soem c code provided by the Technische Universiteit Eindhoven.'';
    #license = lib.licenses.GPL+linking exception;
  };
}
