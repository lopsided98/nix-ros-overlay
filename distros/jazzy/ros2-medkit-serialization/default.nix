
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nlohmann_json, rclcpp, rcpputils, rcutils, ros2-medkit-cmake, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, sensor-msgs, std-msgs, std-srvs, test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-serialization";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_serialization/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "a109b84f5df024ff4b28c94ecec441ae1c6a1ef41b0880ed74caea1d9114d8a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs sensor-msgs std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ nlohmann_json rclcpp rcpputils rcutils rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Runtime JSON to ROS 2 message serialization library";
    license = with lib.licenses; [ asl20 ];
  };
}
