
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, nlohmann_json, openssl, rclcpp, rclcpp-components, resource-retriever, ros-environment, rosgraph-msgs, std-msgs, std-srvs, websocketpp, zlib }:
buildRosPackage {
  pname = "ros-jazzy-foxglove-bridge";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/jazzy/foxglove_bridge/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "fd82fe43c308393dd31121acbea08e0f6d7de3a9c0fd9a9b0725a03b042e268c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio nlohmann_json ros-environment websocketpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto std-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-cpp openssl rclcpp rclcpp-components resource-retriever rosgraph-msgs zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Foxglove Bridge";
    license = with lib.licenses; [ mit ];
  };
}
