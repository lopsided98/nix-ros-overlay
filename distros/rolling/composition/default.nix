
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rcutils, rmw-implementation-cmake, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-composition";
  version = "0.37.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/composition/0.37.0-1.tar.gz";
    name = "0.37.0-1.tar.gz";
    sha256 = "1d21062f19fb0ef1691d74a2c838e7ccd1953784ff8c6756b70daf7b5f6018c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ example-interfaces launch-ros rclcpp rclcpp-components rcutils std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples for composing multiple nodes in a single process.";
    license = with lib.licenses; [ asl20 ];
  };
}
