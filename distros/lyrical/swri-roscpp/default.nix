
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, diagnostic-msgs, diagnostic-updater, gtest, marti-common-msgs, nav-msgs, rclcpp, ros-environment, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-swri-roscpp";
  version = "3.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/lyrical/swri_roscpp/3.8.7-3.tar.gz";
    name = "3.8.7-3.tar.gz";
    sha256 = "efedc8bde225570aca102477f91238c48620867b943479bc6b4e0c728c053a59";
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
