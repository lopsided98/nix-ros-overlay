
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, lifecycle-msgs, rclcpp, rclcpp-lifecycle, ros-testing }:
buildRosPackage {
  pname = "ros-lyrical-lifecycle";
  version = "0.37.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/lifecycle/0.37.9-1.tar.gz";
    name = "0.37.9-1.tar.gz";
    sha256 = "ccb6b1a17489f3d97dd7a88101e39bd0fd432412e4c1d482b19792c0ef7d115b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ros-testing ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing demos for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
