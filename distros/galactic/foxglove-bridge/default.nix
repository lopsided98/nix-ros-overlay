
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, asio, nlohmann_json, openssl, rclcpp, websocketpp }:
buildRosPackage {
  pname = "ros-galactic-foxglove-bridge";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/galactic/foxglove_bridge/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "77c1467814bb7a0af2d3ba10dd7510f3b5cebc3fbe5d102c58e784f1ca632a9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio nlohmann_json websocketpp ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp openssl rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS Foxglove Bridge'';
    license = with lib.licenses; [ mit ];
  };
}
