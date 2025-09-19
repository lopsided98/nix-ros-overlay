
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, grid-map-cmake-helpers, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-grid-map-msgs";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/kilted/grid_map_msgs/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "297d5dc494f59feacfd6241b74a473081279211deaca8fd7f4b7f9f840e413a6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Definition of the multi-layered grid map message type.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
