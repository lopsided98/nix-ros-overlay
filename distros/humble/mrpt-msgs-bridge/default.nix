
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-libros-bridge, mrpt-msgs, mrpt-obs, rclcpp, ros-environment, tf2 }:
buildRosPackage {
  pname = "ros-humble-mrpt-msgs-bridge";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/humble/mrpt_msgs_bridge/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "a3e9eb03dd68d735d6424c403f778c006cd1d05b3f6ff5ccc25bbf8e6f6ed7ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto geometry-msgs mrpt-libros-bridge mrpt-msgs mrpt-obs rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ library to convert between custom mrpt_msgs messages and native MRPT classes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
