
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, eigen, geometry-msgs, mrpt-graphs, mrpt-libros-bridge, mrpt-msgs, mrpt-obs, rclcpp, ros-environment, tf2 }:
buildRosPackage {
  pname = "ros-kilted-mrpt-msgs-bridge";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_msgs_bridge/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "da9a41b7753eeaeee4fa3551d068488c83399b4a339953b53465196adb995a78";
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
