
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, geometry-msgs, nlohmann_json, rcl-interfaces, rclcpp, rclcpp-components, rcpputils, rcutils, resource-retriever, ros-environment, rosgraph-msgs, rosidl-typesupport-introspection-cpp, rosx-introspection, sensor-msgs, service-msgs, std-msgs, std-srvs, test-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-rolling-foxglove-bridge";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/rolling/foxglove_bridge/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "e9e4d6cdfadcbc659f3d6e84d2c8910713dfa0e38e676fb9348df97abe33b071";
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
