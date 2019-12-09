
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-lifecycle, launch, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, ament-cmake-pytest, nav2-util, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-dynamic-params";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_dynamic_params/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "84abb0203dd823fd4abfc486ab140fc6134459d2ae7286e28995dbb208ef0068";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-util rclcpp-lifecycle rclcpp nav2-common ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a validation class for ROS2 parameters with validation based on parameter
    type and defined bounds. Support for custom validation callbacks is also provided. Some useful
    convenience functions for event callbacks are also provided'';
    license = with lib.licenses; [ asl20 ];
  };
}
