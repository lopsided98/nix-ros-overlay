
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, fmilibrary-vendor, launch, launch-ros, launch-testing, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-fmi-adapter";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/jazzy/fmi_adapter/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "6dbf3449d2d428c1964a39e1ade00f23937adedc72d2d4eb30b37399d658d025";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake fmilibrary-vendor ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing rcutils ];
  propagatedBuildInputs = [ launch launch-ros rcl-interfaces rclcpp rclcpp-components rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wraps FMUs for co-simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
