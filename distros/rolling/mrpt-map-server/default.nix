
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mp2p-icp, mrpt-libmaps, mrpt-libobs, mrpt-libros-bridge, mrpt-msgs, mrpt-nav-interfaces, rclcpp-components, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mrpt-map-server";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/rolling/mrpt_map_server/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "1ebccb634948707f21b43096ea700acd21e9ec41cf43fd71865e2c3c197de247";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mp2p-icp mrpt-libmaps mrpt-libobs mrpt-libros-bridge mrpt-msgs mrpt-nav-interfaces rclcpp-components tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides a ROS 2 node that publishes a static map for other nodes to use it. Unlike classic ROS 1 ``map_server``, this node can publish a range of different metric maps, not only occupancy grids.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
