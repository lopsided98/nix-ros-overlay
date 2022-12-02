
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, asio, nlohmann_json, openssl, rclcpp, websocketpp }:
buildRosPackage {
  pname = "ros-humble-foxglove-bridge";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/humble/foxglove_bridge/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "f037427a3fb9f79cb8560fbec8ee716bfa51ae13f384111202c0343a1042239c";
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
