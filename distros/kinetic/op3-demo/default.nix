
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, geometry-msgs, libyamlcpp, op3-action-module-msgs, op3-ball-detector, op3-camera-setting-tool, op3-manager, op3-walking-module-msgs, op3-web-setting-tool, robotis-controller-msgs, robotis-math, ros-madplay-player, roscpp, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-demo";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_demo-release/archive/release/kinetic/op3_demo/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "c82e1710ff94764048e06d5f4485f6e18b372d622c012079793321ab1263bae8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen geometry-msgs libyamlcpp op3-action-module-msgs op3-ball-detector op3-camera-setting-tool op3-manager op3-walking-module-msgs op3-web-setting-tool robotis-controller-msgs robotis-math ros-madplay-player roscpp roslib sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OP3 default demo
    It includes three demontrations(soccer demo, vision demo, action script demo)'';
    license = with lib.licenses; [ asl20 ];
  };
}
