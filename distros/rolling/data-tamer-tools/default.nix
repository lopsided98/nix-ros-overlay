
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-lint-cmake, ament-index-cpp, ament-lint, data-tamer-cpp, data-tamer-msgs, foxglove-sdk-vendor, geographic-msgs, geometry-msgs, mcap-vendor, nlohmann_json, protobuf, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, sensor-msgs, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-data-tamer-tools";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer_tools-release/archive/release/rolling/data_tamer_tools/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "47bc9d81d6df8607410bdbf00b054872602bc91da3d77768ac58133bb032db5d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-cmake-lint-cmake ament-index-cpp ament-lint ];
  propagatedBuildInputs = [ data-tamer-cpp data-tamer-msgs foxglove-sdk-vendor geographic-msgs geometry-msgs mcap-vendor nlohmann_json protobuf rcl-interfaces rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs tf2-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Set of tools for using Foxglove with data tamer";
    license = with lib.licenses; [ mit ];
  };
}
