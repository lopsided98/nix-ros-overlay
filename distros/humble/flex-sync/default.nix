
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-flex-sync";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flex_sync-release/archive/release/humble/flex_sync/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "5559a35ff0b91dd71ae40805d0914bd5433c540e263dc65859dfd6ca46c15421";
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
