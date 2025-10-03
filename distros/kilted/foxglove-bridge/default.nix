
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, nlohmann_json, openssl, rclcpp, rclcpp-components, resource-retriever, ros-environment, rosgraph-msgs, rosx-introspection, std-msgs, std-srvs, websocketpp }:
buildRosPackage {
  pname = "ros-kilted-foxglove-bridge";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/kilted/foxglove_bridge/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "9fd577c56a56493435c8581bfbd00cef85c038b7bf2e7073f985f76ac6037ba5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio nlohmann_json ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto openssl std-msgs std-srvs websocketpp ];
  propagatedBuildInputs = [ ament-index-cpp rclcpp rclcpp-components resource-retriever rosgraph-msgs rosx-introspection ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Foxglove Bridge";
    license = with lib.licenses; [ mit ];
  };
}
