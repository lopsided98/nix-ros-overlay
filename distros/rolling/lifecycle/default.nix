
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, example-interfaces, launch-testing-ros, lifecycle-msgs, rclcpp, rclcpp-lifecycle, ros-testing }:
buildRosPackage {
  pname = "ros-rolling-lifecycle";
  version = "0.38.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle/0.38.1-1.tar.gz";
    name = "0.38.1-1.tar.gz";
    sha256 = "cdcc22a0c567140e0f2157e9e6302cbe940320724bc26cdca9919adbf4e66f91";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ros ros-testing ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Package containing demos for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
