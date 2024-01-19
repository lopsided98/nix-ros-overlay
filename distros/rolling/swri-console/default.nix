
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, qt5, rcl-interfaces, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-swri-console";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/rolling/swri_console/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "510f9ec0a58ae02f0b30fb07a2cdb31e6996854178cd458c3ee3ae44a3c270eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ boost qt5.qtbase rcl-interfaces rclcpp rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
