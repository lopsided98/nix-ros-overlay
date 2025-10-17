
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, grid-map-cmake-helpers, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-msgs";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_msgs/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "077c458fed6acbab7c6db40b5862ed6d0c2e35f70ef4137312f28a5afee497df";
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
