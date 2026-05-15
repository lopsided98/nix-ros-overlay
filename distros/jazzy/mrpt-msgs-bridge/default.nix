
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-libobs, mrpt-libros-bridge, mrpt-msgs, rclcpp, ros-environment, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-msgs-bridge";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_msgs_bridge/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "f4ec7cfae73cff70bcc77638d06cdef4691d04b6710a529fd846311d3ff2f3b1";
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
