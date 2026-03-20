
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-lint-cmake, ament-index-cpp, ament-lint, backward-ros, data-tamer-cpp, data-tamer-msgs, foxglove-sdk-vendor, geographic-msgs, mcap-vendor, nlohmann_json, protobuf, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-data-tamer-tools";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer_tools-release/archive/release/jazzy/data_tamer_tools/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "211f66f625fa87a6946083a6d3eec605009f19a8284121ac6df4357437fe0c01";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-cmake-lint-cmake ament-index-cpp ament-lint ];
  propagatedBuildInputs = [ backward-ros data-tamer-cpp data-tamer-msgs foxglove-sdk-vendor geographic-msgs mcap-vendor nlohmann_json protobuf rcl-interfaces rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Set of tools for using Foxglove with data tamer";
    license = with lib.licenses; [ mit ];
  };
}
