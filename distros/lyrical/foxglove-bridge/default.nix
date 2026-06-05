
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, geometry-msgs, nlohmann_json, rcl-interfaces, rclcpp, rclcpp-components, rcpputils, rcutils, resource-retriever, ros-environment, rosgraph-msgs, rosidl-typesupport-introspection-cpp, rosx-introspection, sensor-msgs, std-msgs, std-srvs, websocketpp }:
buildRosPackage {
  pname = "ros-lyrical-foxglove-bridge";
  version = "3.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/lyrical/foxglove_bridge/3.4.1-1.tar.gz";
    name = "3.4.1-1.tar.gz";
    sha256 = "273d46c1ec95cfd84ef28234d88e13278d205bec569bcbd6d12c229cfdc7a702";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake geometry-msgs ros-environment sensor-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto asio nlohmann_json std-msgs std-srvs websocketpp ];
  propagatedBuildInputs = [ ament-index-cpp rcl-interfaces rclcpp rclcpp-components rcpputils rcutils resource-retriever rosgraph-msgs rosidl-typesupport-introspection-cpp rosx-introspection std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Foxglove Bridge";
    license = with lib.licenses; [ mit ];
  };
}
