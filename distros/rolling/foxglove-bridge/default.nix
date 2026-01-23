
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, nlohmann_json, openssl, rclcpp, rclcpp-components, resource-retriever, ros-environment, rosgraph-msgs, rosx-introspection, std-msgs, std-srvs, websocketpp }:
buildRosPackage {
  pname = "ros-rolling-foxglove-bridge";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/rolling/foxglove_bridge/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "eb6c9c03b33b55c0276d2cd2387ed00fae87bfd380994b36ba7f271ef6f145b8";
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
