
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, qt5, rcl-interfaces, rclcpp, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-swri-console";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/humble/swri_console/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "cb5ba18c68078ce2fdd5d94de12100bf94ecacdac5c79a9abc3abd12306bc48a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost qt5.qtbase rcl-interfaces rclcpp rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
