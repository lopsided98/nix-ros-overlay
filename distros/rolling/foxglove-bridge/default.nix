
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, nlohmann_json, openssl, rclcpp, rclcpp-components, ros-environment, rosgraph-msgs, std-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-rolling-foxglove-bridge";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/rolling/foxglove_bridge/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "37fe52a6e74d8736d3a6d33a8d6e66a70c5bbcb962cf9dc38c0f15842edb0e74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio nlohmann_json ros-environment websocketpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp openssl rclcpp rclcpp-components rosgraph-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS Foxglove Bridge'';
    license = with lib.licenses; [ mit ];
  };
}
