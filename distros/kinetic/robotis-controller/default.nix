
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamixel-sdk, libyamlcpp, robotis-controller-msgs, robotis-device, robotis-framework-common, roscpp, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robotis-controller";
  version = "0.2.9";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-Framework-release/archive/release/kinetic/robotis_controller/0.2.9-0.tar.gz";
    name = "0.2.9-0.tar.gz";
    sha256 = "cf475cd7288d5291ed7fb5e01739bc964e2f984d7315581c534b4f2ef3847a6e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules dynamixel-sdk libyamlcpp robotis-controller-msgs robotis-device robotis-framework-common roscpp roslib sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''robotis_controller package for ROBOTIS's platform like Manipulator-H, THORMANG and OP series'';
    license = with lib.licenses; [ asl20 ];
  };
}
