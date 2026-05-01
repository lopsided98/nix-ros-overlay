
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-lint-cmake, ament-index-cpp, ament-lint, backward-ros, data-tamer-cpp, data-tamer-msgs, foxglove-sdk-vendor, geographic-msgs, mcap-vendor, nlohmann_json, protobuf, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-data-tamer-tools";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer_tools-release/archive/release/lyrical/data_tamer_tools/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "424dcad2663023345dc94f5bfdcc4cffb029023d33ef5106942a6113a7c7bfbc";
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
