
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, fmilibrary-vendor, launch, launch-ros, launch-testing, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-fmi-adapter";
  version = "0.1.7-r2";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/eloquent/fmi_adapter/0.1.7-2.tar.gz";
    name = "0.1.7-2.tar.gz";
    sha256 = "a5107a3807736f1460f26bc6f9f6836fd118e408af1db09d59a49e792026a7aa";
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
