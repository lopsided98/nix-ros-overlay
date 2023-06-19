
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, nlohmann_json, openssl, rclcpp, rclcpp-components, ros-environment, rosgraph-msgs, std-msgs, std-srvs, websocketpp, zlib }:
buildRosPackage {
  pname = "ros-iron-foxglove-bridge";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/iron/foxglove_bridge/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "b2d705766a7fef5cab173d3bdd962bb6236eea1783ed6c6f9314f314ac08d42d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio nlohmann_json ros-environment websocketpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto std-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-cpp openssl rclcpp rclcpp-components rosgraph-msgs zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS Foxglove Bridge'';
    license = with lib.licenses; [ mit ];
  };
}
