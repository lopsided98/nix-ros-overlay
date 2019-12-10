
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, fmilibrary-vendor, launch, launch-ros, launch-testing, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-fmi-adapter";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/eloquent/fmi_adapter/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "8d1de4e0a2eb1c8a82d574c31e75f72518aeb1febf1479839d192e1195fa12a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ fmilibrary-vendor ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing rcutils ];
  propagatedBuildInputs = [ launch launch-ros rcl-interfaces rclcpp rclcpp-components rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
