
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-soem";
  version = "1.3.0";

  src = fetchurl {
    url = https://github.com/smits/soem-gbp/archive/release/kinetic/soem/1.3.0-0.tar.gz;
    sha256 = "a28a315984ad334a4fe3899dd463570993ca632f3943eb0511daf4734d13d535";
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
