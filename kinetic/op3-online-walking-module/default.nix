
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, robotis-controller-msgs, boost, geometry-msgs, sensor-msgs, op3-online-walking-module-msgs, std-msgs, catkin, cmake-modules, roslib, robotis-device, libyamlcpp, eigen, robotis-framework-common, roscpp, op3-balance-control, robotis-math }:
buildRosPackage {
  pname = "ros-kinetic-op3-online-walking-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_online_walking_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "8e2853fb3cd997ed6aa52c1732a1b3314182de7af22ce80e4ae422cb9a91245e";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost orocos-kdl geometry-msgs sensor-msgs op3-online-walking-module-msgs std-msgs cmake-modules roslib robotis-device libyamlcpp eigen robotis-framework-common roscpp op3-balance-control robotis-math ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs boost geometry-msgs orocos-kdl op3-online-walking-module-msgs std-msgs cmake-modules roslib robotis-device libyamlcpp eigen robotis-framework-common roscpp op3-balance-control robotis-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_online_walking_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
