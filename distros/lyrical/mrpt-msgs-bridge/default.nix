
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, eigen, geometry-msgs, mrpt-graphs, mrpt-libros-bridge, mrpt-msgs, mrpt-obs, rclcpp, ros-environment, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-msgs-bridge";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/lyrical/mrpt_msgs_bridge/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "29647af616c59ddb0ef3e8cbf7d3062a47bcbc39600ef0045da32e20c2584468";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto eigen geometry-msgs mrpt-graphs mrpt-libros-bridge mrpt-msgs mrpt-obs rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ library to convert between custom mrpt_msgs messages and native MRPT classes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
