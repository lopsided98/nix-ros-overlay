
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libcpp-httplib-dev, action-msgs, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, nlohmann_json, openssl, rcl-interfaces, rclcpp, ros2-medkit-msgs, ros2-medkit-serialization, rosidl-parser, rosidl-runtime-py, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, sensor-msgs, std-msgs, std-srvs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-gateway";
  version = "0.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_gateway/0.3.0-4.tar.gz";
    name = "0.3.0-4.tar.gz";
    sha256 = "e8b64e6b67d1439cdb91ef1b9f00ae53f61807594e7b59319670be36e65054d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_libcpp-httplib-dev action-msgs ament-index-cpp nlohmann_json openssl rcl-interfaces rclcpp ros2-medkit-msgs ros2-medkit-serialization rosidl-parser rosidl-runtime-py rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp sensor-msgs std-msgs std-srvs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "HTTP gateway for ros2_medkit diagnostics system";
    license = with lib.licenses; [ asl20 ];
  };
}
