
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libreflexxestype2, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ros-reflexxes";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/ros_reflexxes/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "c06bc668e6c5108f1b2bfb8b0422144ba633892237ed063350579b25b53d3e72";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ libreflexxestype2 pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_reflexxes package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
