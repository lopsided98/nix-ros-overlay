
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-lifecycle, rcutils, launch, std-msgs, launch-testing, launch-ros, ament-lint-common, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-gmock, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-fmi-adapter";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/crystal/fmi_adapter/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "25baebf9675f26c246a6a7608f48ac92f323bdbe129809007ad98f52191aec77";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp-lifecycle rclcpp ];
  checkInputs = [ rcutils launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-cmake-gmock ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle launch std-msgs launch-ros rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
