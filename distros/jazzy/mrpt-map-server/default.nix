
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mp2p-icp, mrpt-msgs, mrpt-nav-interfaces, mrpt2, nav-msgs, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-map-server";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_map_server/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "ff6a92888855061296d6a79df2f9e1a137d265931fb64486b179c06a1545bc9b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mp2p-icp mrpt-msgs mrpt-nav-interfaces mrpt2 nav-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides a ROS 2 node that publishes a static map for other nodes to use it. Unlike classic ROS 1 ``map_server``, this node can publish a range of different metric maps, not only occupancy grids.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
