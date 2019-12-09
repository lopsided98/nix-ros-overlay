
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, sensor-msgs, std-msgs, cmake-modules, roslib, robotis-device, catkin, libyamlcpp, robotis-framework-common, roscpp, dynamixel-sdk }:
buildRosPackage {
  pname = "ros-kinetic-robotis-controller";
  version = "0.2.9";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-Framework-release/archive/release/kinetic/robotis_controller/0.2.9-0.tar.gz";
    name = "0.2.9-0.tar.gz";
    sha256 = "cf475cd7288d5291ed7fb5e01739bc964e2f984d7315581c534b4f2ef3847a6e";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs sensor-msgs std-msgs cmake-modules roslib robotis-device libyamlcpp robotis-framework-common roscpp dynamixel-sdk ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs std-msgs cmake-modules roslib robotis-device libyamlcpp robotis-framework-common roscpp dynamixel-sdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''robotis_controller package for ROBOTIS's platform like Manipulator-H, THORMANG and OP series'';
    license = with lib.licenses; [ asl20 ];
  };
}
