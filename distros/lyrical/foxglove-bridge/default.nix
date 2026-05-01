
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, geometry-msgs, nlohmann_json, openssl, rclcpp, rclcpp-components, resource-retriever, ros-environment, rosgraph-msgs, rosx-introspection, sensor-msgs, std-msgs, std-srvs, websocketpp }:
buildRosPackage {
  pname = "ros-lyrical-foxglove-bridge";
  version = "3.2.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/lyrical/foxglove_bridge/3.2.6-3.tar.gz";
    name = "3.2.6-3.tar.gz";
    sha256 = "8015ed8b65e1c415a8aa69455ec34f810947c5acf7bd06ccbedb62819148c9c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio geometry-msgs nlohmann_json ros-environment sensor-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto openssl std-msgs std-srvs websocketpp ];
  propagatedBuildInputs = [ ament-index-cpp rclcpp rclcpp-components resource-retriever rosgraph-msgs rosx-introspection std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Foxglove Bridge";
    license = with lib.licenses; [ mit ];
  };
}
