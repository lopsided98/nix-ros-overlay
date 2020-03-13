
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libreflexxestype2, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ros-reflexxes";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/kinetic/ros_reflexxes/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "b676048654ee5d484a00965b86059a8127498f44f69fba40ab7a8e77e469ab41";
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
