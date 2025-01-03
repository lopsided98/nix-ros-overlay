
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, grid-map-cmake-helpers, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "7300ceef7acc86ae2a304182bfdca9944c90a46f914920e2e9d46162a21fbc64";
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
