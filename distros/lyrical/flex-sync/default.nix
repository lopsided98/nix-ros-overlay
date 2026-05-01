
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-flex-sync";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flex_sync-release/archive/release/lyrical/flex_sync/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "61fe4c734461da49a7a9a5d6018ddfa0c89fe8bff1e87cedba63beb9ba534aa2";
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
