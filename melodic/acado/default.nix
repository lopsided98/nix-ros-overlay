
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, boost }:
buildRosPackage {
  pname = "ros-melodic-acado";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://github.com/tud-cor/acado-release/archive/release/melodic/acado/1.2.2-1.tar.gz;
    sha256 = "bfb8864f764eb70aa712553524ee677d50512954cc87bb0a126c2e65bac5dac8";
  };

  propagatedBuildInputs = [ catkin boost ];
  nativeBuildInputs = [ cmake boost ];

  meta = {
    description = ''ACADO Toolkit'';
    #license = lib.licenses.LGPL3;
  };
}
