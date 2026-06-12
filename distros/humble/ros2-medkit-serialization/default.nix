
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nlohmann_json, rclcpp, rcpputils, rcutils, ros2-medkit-cmake, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, sensor-msgs, std-msgs, std-srvs, test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-serialization";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_serialization/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "0e1061f920ff04dae014d66d006ef09bcebee8a6877bf946a3fb5a89b1eb9988";
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
