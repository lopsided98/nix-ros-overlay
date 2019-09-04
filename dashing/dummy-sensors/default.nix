
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, sensor-msgs, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-dummy-sensors";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/dashing/dummy_sensors/0.7.8-1.tar.gz;
    sha256 = "711bbfae6e6077889f1d2cd3bfdbb73b9e995ff6cdfe737c9904ad4ae222de79";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy sensor nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
