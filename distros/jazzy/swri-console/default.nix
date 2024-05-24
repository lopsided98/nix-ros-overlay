
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, qt5, rcl-interfaces, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-swri-console";
  version = "2.0.4-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/jazzy/swri_console/2.0.4-7.tar.gz";
    name = "2.0.4-7.tar.gz";
    sha256 = "5606f5a8de957b2a2026d9e6671cc582751bfd8482b6b88660f6583e54655afd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ boost qt5.qtbase rcl-interfaces rclcpp rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
