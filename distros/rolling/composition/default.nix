
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rcutils, rmw-implementation-cmake }:
buildRosPackage {
  pname = "ros-rolling-composition";
  version = "0.38.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/composition/0.38.1-1.tar.gz";
    name = "0.38.1-1.tar.gz";
    sha256 = "1944aa08e8b090702e13061131d64877fddfce21a09cb56f66855e3722f61096";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ example-interfaces launch-ros rclcpp rclcpp-components rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Examples for composing multiple nodes in a single process.";
    license = with lib.licenses; [ asl20 ];
  };
}
