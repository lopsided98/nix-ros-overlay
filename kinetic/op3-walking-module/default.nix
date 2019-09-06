
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, libyamlcpp, sensor-msgs, catkin, op3-walking-module-msgs, eigen-conversions, roscpp, roslib, robotis-math, op3-kinematics-dynamics, eigen, std-msgs, robotis-device, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-op3-walking-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_walking_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "e9c4ba310ba1bc8578c1afe440d4eebf7365e1e3008b30b328718ccc616d9dd3";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules boost libyamlcpp sensor-msgs eigen-conversions op3-walking-module-msgs roscpp roslib robotis-math op3-kinematics-dynamics eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  propagatedBuildInputs = [ cmake-modules boost libyamlcpp sensor-msgs op3-walking-module-msgs eigen-conversions robotis-controller-msgs roslib robotis-math op3-kinematics-dynamics eigen std-msgs robotis-device roscpp robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_walking_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
