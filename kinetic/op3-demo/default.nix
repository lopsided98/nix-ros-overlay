
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-web-setting-tool, op3-manager, op3-camera-setting-tool, op3-walking-module-msgs, robotis-controller-msgs, geometry-msgs, boost, roslib, catkin, op3-action-module-msgs, robotis-math, std-msgs, roscpp, cmake-modules, libyamlcpp, sensor-msgs, ros-madplay-player, op3-ball-detector, eigen }:
buildRosPackage {
  pname = "ros-kinetic-op3-demo";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_demo-release/archive/release/kinetic/op3_demo/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "c82e1710ff94764048e06d5f4485f6e18b372d622c012079793321ab1263bae8";
  };

  buildType = "catkin";
  buildInputs = [ boost cmake-modules libyamlcpp sensor-msgs op3-walking-module-msgs roscpp op3-ball-detector op3-action-module-msgs roslib robotis-math eigen std-msgs robotis-controller-msgs geometry-msgs ];
  propagatedBuildInputs = [ op3-web-setting-tool cmake-modules boost op3-manager libyamlcpp op3-camera-setting-tool sensor-msgs op3-walking-module-msgs roscpp ros-madplay-player op3-ball-detector op3-action-module-msgs roslib robotis-math eigen std-msgs robotis-controller-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OP3 default demo
    It includes three demontrations(soccer demo, vision demo, action script demo)'';
    license = with lib.licenses; [ asl20 ];
  };
}
