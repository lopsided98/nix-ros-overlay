
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-common, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-dynamic-params";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_dynamic_params/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "cbbeef8e4ffda61c9d7e6506541ccf10dd35653caaea585afe636dd39a9ae463";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a validation class for ROS2 parameters with validation based on parameter
    type and defined bounds. Support for custom validation callbacks is also provided. Some useful
    convenience functions for event callbacks are also provided'';
    license = with lib.licenses; [ asl20 ];
  };
}
