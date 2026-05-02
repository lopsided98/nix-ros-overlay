
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, diagnostic-msgs, diagnostic-updater, gtest, marti-common-msgs, nav-msgs, rclcpp, ros-environment, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-swri-roscpp";
  version = "3.8.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_roscpp/3.8.7-2.tar.gz";
    name = "3.8.7-2.tar.gz";
    sha256 = "57d123ff306e852d2d29cdbf37495fa1e13fe4768f52d91461999ee0b0bd2dcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest gtest ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater marti-common-msgs nav-msgs rclcpp rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package that extends rclcpp with some commonly used functionality to reduce boilerplate code.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
