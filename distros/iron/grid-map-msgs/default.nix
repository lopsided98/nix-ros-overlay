
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, grid-map-cmake-helpers, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-iron-grid-map-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/iron/grid_map_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "60bea7a2750915dba04ca2c86154ea55bf8d3d790d5aca6124c85ac1ec0f4c1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Definition of the multi-layered grid map message type.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
