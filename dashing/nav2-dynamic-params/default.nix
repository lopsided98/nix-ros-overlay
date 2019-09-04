
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, rclcpp-lifecycle, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-util, nav2-common, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-dynamic-params";
  version = "0.2.3-r1";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_dynamic_params/0.2.3-1.tar.gz;
    sha256 = "73f5d3ebf6ec6c70816596da7bdd3076bd7ef1b0af3123fdf8feee663a0bf7f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp nav2-util rclcpp-lifecycle nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a validation class for ROS2 parameters with validation based on parameter
    type and defined bounds. Support for custom validation callbacks is also provided. Some useful
    convenience functions for event callbacks are also provided'';
    license = with lib.licenses; [ asl20 ];
  };
}
