
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp, rclcpp-lifecycle, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lifecycle";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "018e687bbdb435c92f183d905fb003d7b031c149486ff248b9e9941a7fe3d979";
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
