
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, nlohmann_json, openssl, rclcpp, rclcpp-components, resource-retriever, ros-environment, rosgraph-msgs, rosx-introspection, std-msgs, std-srvs, websocketpp }:
buildRosPackage {
  pname = "ros-jazzy-foxglove-bridge";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/jazzy/foxglove_bridge/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "eaf20c2e255f1e905adb4e9727a46f2c7e0b1d804cad3d78b979f9ba9648a6e0";
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
