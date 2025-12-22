
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_foxglove_sdk_vendor, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-lint-cmake, ament-index-cpp, ament-lint, backward-ros, data-tamer-cpp, data-tamer-msgs, mcap-vendor, nlohmann_json, protobuf, rcl-interfaces, rclcpp, rclcpp-components, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-data-tamer-tools";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/jlack1987/data_tamer_tools-release/archive/release/jazzy/data_tamer_tools/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "3fc793761c26e7d111ef12c1f20e58322bd657c2557a82409349ec068d745568";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-cmake-lint-cmake ament-index-cpp ament-lint ];
  propagatedBuildInputs = [ _unresolved_foxglove_sdk_vendor backward-ros data-tamer-cpp data-tamer-msgs mcap-vendor nlohmann_json protobuf rcl-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Set of tools for using Foxglove with data tamer";
    license = with lib.licenses; [ mit ];
  };
}
