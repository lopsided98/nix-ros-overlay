
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, launch-testing-ros, lifecycle-msgs, rclcpp, rclcpp-lifecycle, ros-testing }:
buildRosPackage {
  pname = "ros-lyrical-lifecycle";
  version = "0.37.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/lifecycle/0.37.10-1.tar.gz";
    name = "0.37.10-1.tar.gz";
    sha256 = "3ea1029c58dd8893cabe946e22b01362af9025451250e9837d4ddb6e5405721b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ros ros-testing ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing demos for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
