
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mp2p-icp, mrpt-msgs, mrpt-nav-interfaces, mrpt2, nav-msgs, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-iron-mrpt-map-server";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/iron/mrpt_map_server/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "bec2672c70562571129c83c11e775b5d0a53975ac721963dfcf63028382a7f50";
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
