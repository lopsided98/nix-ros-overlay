
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, example-interfaces, httplib, launch, launch-ros, lifecycle-msgs, nlohmann_json, openssl, rcl-interfaces, rclcpp, rclcpp-action, ros2-medkit-action-status-bridge, ros2-medkit-cmake, ros2-medkit-diagnostic-bridge, ros2-medkit-fault-detection, ros2-medkit-fault-manager, ros2-medkit-log-bridge, ros2-medkit-msgs, ros2-medkit-serialization, rosidl-parser, rosidl-runtime-py, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, sensor-msgs, sqlite, std-msgs, std-srvs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-gateway";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_gateway/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "94114060cb472bf98dff7f385b474e7f51c371ad636c744642017c043e0c7cee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common example-interfaces rclcpp-action ];
  propagatedBuildInputs = [ action-msgs ament-index-cpp ament-index-python httplib launch launch-ros lifecycle-msgs nlohmann_json openssl rcl-interfaces rclcpp ros2-medkit-action-status-bridge ros2-medkit-diagnostic-bridge ros2-medkit-fault-detection ros2-medkit-fault-manager ros2-medkit-log-bridge ros2-medkit-msgs ros2-medkit-serialization rosidl-parser rosidl-runtime-py rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp sensor-msgs sqlite std-msgs std-srvs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "HTTP gateway for ros2_medkit diagnostics system";
    license = with lib.licenses; [ asl20 ];
  };
}
