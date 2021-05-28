
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, fmilibrary-vendor, launch, launch-ros, launch-testing, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-fmi-adapter";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/galactic/fmi_adapter/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "99610aff9628eb0f51e6bb2395c039c78efb2a30ccf51c47641538cad9e50234";
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
