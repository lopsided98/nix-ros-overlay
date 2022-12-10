
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, nlohmann_json, openssl, rclcpp, rclcpp-components, ros-environment, rosgraph-msgs, std-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-galactic-foxglove-bridge";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/galactic/foxglove_bridge/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "474c6625e5f90388d685934504f1d946e5bf80de06bf8b03179947141685bdfc";
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
