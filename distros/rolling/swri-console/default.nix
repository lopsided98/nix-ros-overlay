
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, qt5, rcl-interfaces, rclcpp, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-swri-console";
  version = "2.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/rolling/swri_console/2.0.3-2.tar.gz";
    name = "2.0.3-2.tar.gz";
    sha256 = "3fb2155cda7106737f7c884db0710c2d6e53e4dca6ea8cd34ebee67ab0200306";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ boost qt5.qtbase rcl-interfaces rclcpp rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
