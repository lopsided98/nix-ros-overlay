
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, example-interfaces, httplib, nlohmann_json, openssl, rcl-interfaces, rclcpp, rclcpp-action, ros2-medkit-cmake, ros2-medkit-msgs, ros2-medkit-serialization, rosidl-parser, rosidl-runtime-py, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, sensor-msgs, sqlite, std-msgs, std-srvs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-gateway";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_gateway/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "e269a6055a4178b5d8f2ea882eb95764f11f9d426e1aa77500fb437b303a8d6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common example-interfaces rclcpp-action ];
  propagatedBuildInputs = [ action-msgs ament-index-cpp httplib nlohmann_json openssl rcl-interfaces rclcpp ros2-medkit-msgs ros2-medkit-serialization rosidl-parser rosidl-runtime-py rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp sensor-msgs sqlite std-msgs std-srvs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "HTTP gateway for ros2_medkit diagnostics system";
    license = with lib.licenses; [ asl20 ];
  };
}
