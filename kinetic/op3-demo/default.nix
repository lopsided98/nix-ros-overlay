
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, geometry-msgs, op3-camera-setting-tool, op3-action-module-msgs, eigen, robotis-math, sensor-msgs, cmake-modules, roslib, libyamlcpp, op3-walking-module-msgs, std-msgs, catkin, roscpp, op3-ball-detector, boost, op3-manager, ros-madplay-player, op3-web-setting-tool }:
buildRosPackage {
  pname = "ros-kinetic-op3-demo";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_demo-release/archive/release/kinetic/op3_demo/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "c82e1710ff94764048e06d5f4485f6e18b372d622c012079793321ab1263bae8";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost sensor-msgs geometry-msgs std-msgs cmake-modules roslib libyamlcpp op3-walking-module-msgs op3-action-module-msgs eigen roscpp robotis-math op3-ball-detector ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs boost geometry-msgs op3-manager ros-madplay-player op3-camera-setting-tool std-msgs op3-web-setting-tool cmake-modules roslib libyamlcpp op3-walking-module-msgs eigen op3-action-module-msgs roscpp robotis-math op3-ball-detector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OP3 default demo
    It includes three demontrations(soccer demo, vision demo, action script demo)'';
    license = with lib.licenses; [ asl20 ];
  };
}
