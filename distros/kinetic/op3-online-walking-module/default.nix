
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, geometry-msgs, libyamlcpp, op3-balance-control, op3-online-walking-module-msgs, orocos-kdl, robotis-controller-msgs, robotis-device, robotis-framework-common, robotis-math, roscpp, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-online-walking-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_online_walking_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "8e2853fb3cd997ed6aa52c1732a1b3314182de7af22ce80e4ae422cb9a91245e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen geometry-msgs libyamlcpp op3-balance-control op3-online-walking-module-msgs orocos-kdl robotis-controller-msgs robotis-device robotis-framework-common robotis-math roscpp roslib sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_online_walking_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
