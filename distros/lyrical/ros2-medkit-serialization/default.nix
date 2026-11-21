
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nlohmann_json, rclcpp, rcpputils, rcutils, ros2-medkit-cmake, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, sensor-msgs, std-msgs, std-srvs, test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-serialization";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_serialization/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "6f6d21a939b37eb71708438120e11ec7c9d4680a47927f6f0d005b60a02c98bc";
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
