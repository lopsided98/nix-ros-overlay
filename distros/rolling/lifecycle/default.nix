
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp, rclcpp-lifecycle, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lifecycle";
  version = "0.34.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle/0.34.1-1.tar.gz";
    name = "0.34.1-1.tar.gz";
    sha256 = "2b908fcfff16e3cfcaa3fa17143ad085dce189e66d774817c2916b9f20539fb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing demos for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
