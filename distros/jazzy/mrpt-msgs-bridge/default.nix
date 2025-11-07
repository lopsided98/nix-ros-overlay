
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-libobs, mrpt-libros-bridge, mrpt-msgs, rclcpp, ros-environment, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-msgs-bridge";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_msgs_bridge/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "9b3e76b635affa90e67b6fe87b0fd78249a7dd98ca42f4a41a11cd776b1b3b02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto geometry-msgs mrpt-libobs mrpt-libros-bridge mrpt-msgs rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ library to convert between custom mrpt_msgs messages and native MRPT classes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
