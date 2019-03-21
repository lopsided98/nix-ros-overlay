
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2, catkin, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-tools";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_tools/0.6.5-0.tar.gz;
    sha256 = "c474f792ecac52bec866f11bb705444141ea38f2e9f23fc1513307a4681ef724";
  };

  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ tf2 catkin tf2-msgs tf2-ros ];

  meta = {
    description = ''tf2_tools'';
    #license = lib.licenses.BSD;
  };
}
