
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, geometry-msgs, nlohmann_json, rcl-interfaces, rclcpp, rclcpp-components, rcpputils, rcutils, resource-retriever, ros-environment, rosgraph-msgs, rosidl-typesupport-introspection-cpp, rosx-introspection, sensor-msgs, service-msgs, std-msgs, std-srvs, test-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-lyrical-foxglove-bridge";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/lyrical/foxglove_bridge/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "efe892d9d3086bf16b5eacb5e4d70f7c3d0b45bdf1c5a675d2d730082b62539a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake geometry-msgs ros-environment sensor-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto asio nlohmann_json std-msgs std-srvs test-msgs websocketpp ];
  propagatedBuildInputs = [ ament-index-cpp rcl-interfaces rclcpp rclcpp-components rcpputils rcutils resource-retriever rosgraph-msgs rosidl-typesupport-introspection-cpp rosx-introspection service-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Foxglove Bridge";
    license = with lib.licenses; [ mit ];
  };
}
