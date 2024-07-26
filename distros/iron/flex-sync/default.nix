
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-flex-sync";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flex_sync-release/archive/release/iron/flex_sync/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "5d1217686a3e7caea7713a1bee6de24525abcf840548aad1c6fae5713ec5f78e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs std-msgs ];
  propagatedBuildInputs = [ ament-cmake-clang-format rclcpp rclcpp-components rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2 package for syncing variable number of topics";
    license = with lib.licenses; [ asl20 ];
  };
}
