
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-libobs, mrpt-libros-bridge, mrpt-msgs, rclcpp, ros-environment, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-msgs-bridge";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/lyrical/mrpt_msgs_bridge/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "907dda0e9dcd1738a9a3f063c7a3448161732f0d92e48da8f812296397b78a41";
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
