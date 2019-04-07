
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-online-walking-module-msgs, orocos-kdl, boost, cmake-modules, libyamlcpp, sensor-msgs, catkin, robotis-framework-common, op3-balance-control, robotis-controller-msgs, roslib, robotis-math, eigen, std-msgs, robotis-device, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-online-walking-module";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_online_walking_module/0.2.1-0.tar.gz;
    sha256 = "8e2853fb3cd997ed6aa52c1732a1b3314182de7af22ce80e4ae422cb9a91245e";
  };

  buildInputs = [ op3-online-walking-module-msgs orocos-kdl boost cmake-modules libyamlcpp geometry-msgs sensor-msgs op3-balance-control roscpp roslib robotis-math eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  propagatedBuildInputs = [ op3-online-walking-module-msgs orocos-kdl boost cmake-modules libyamlcpp geometry-msgs sensor-msgs op3-balance-control roscpp roslib robotis-math eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_online_walking_module package'';
    #license = lib.licenses.Apache 2.0;
  };
}
