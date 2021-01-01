
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, eigen-conversions, libyamlcpp, op3-kinematics-dynamics, op3-walking-module-msgs, robotis-controller-msgs, robotis-device, robotis-framework-common, robotis-math, roscpp, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-walking-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_walking_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "e9c4ba310ba1bc8578c1afe440d4eebf7365e1e3008b30b328718ccc616d9dd3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen eigen-conversions libyamlcpp op3-kinematics-dynamics op3-walking-module-msgs robotis-controller-msgs robotis-device robotis-framework-common robotis-math roscpp roslib sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_walking_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
