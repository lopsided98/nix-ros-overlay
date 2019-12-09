
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-lifecycle, rcutils, rclcpp-components, launch, std-msgs, launch-testing, launch-ros, ament-lint-common, ament-cmake, ament-cmake-gtest, rcl-interfaces, ament-cmake-pytest, ament-cmake-gmock, fmilibrary-vendor, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-fmi-adapter";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/eloquent/fmi_adapter/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "8d1de4e0a2eb1c8a82d574c31e75f72518aeb1febf1479839d192e1195fa12a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle rclcpp-components std-msgs rcl-interfaces fmilibrary-vendor rclcpp ];
  checkInputs = [ rcutils launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-cmake-gmock ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle launch rclcpp-components std-msgs launch-ros rcl-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
