
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, fmilibrary-vendor, launch, launch-ros, launch-testing, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-fmi-adapter";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/rolling/fmi_adapter/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "30d5e67b57b0f9e2ac61d69602fc730a6cd1f0a49d900af7666aa31cd8be1444";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake fmilibrary-vendor ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing rcutils ];
  propagatedBuildInputs = [ launch launch-ros rcl-interfaces rclcpp rclcpp-components rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
