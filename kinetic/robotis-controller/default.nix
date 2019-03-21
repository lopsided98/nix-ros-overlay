
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-sdk, cmake-modules, libyamlcpp, sensor-msgs, catkin, roscpp, roslib, std-msgs, robotis-device, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-robotis-controller";
  version = "0.2.9";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-Framework-release/archive/release/kinetic/robotis_controller/0.2.9-0.tar.gz;
    sha256 = "cf475cd7288d5291ed7fb5e01739bc964e2f984d7315581c534b4f2ef3847a6e";
  };

  propagatedBuildInputs = [ dynamixel-sdk cmake-modules libyamlcpp sensor-msgs roscpp roslib std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ dynamixel-sdk cmake-modules libyamlcpp sensor-msgs catkin roscpp roslib std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];

  meta = {
    description = ''robotis_controller package for ROBOTIS's platform like Manipulator-H, THORMANG and OP series'';
    #license = lib.licenses.Apache 2.0;
  };
}
