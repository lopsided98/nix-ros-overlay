
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rcutils, rmw-implementation-cmake, std-msgs }:
buildRosPackage {
  pname = "ros-humble-composition";
  version = "0.20.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/composition/0.20.5-1.tar.gz";
    name = "0.20.5-1.tar.gz";
    sha256 = "68e9cbbecb1ca5f517893d5a541779c5d831b6f42d3b0d8c89744aab88e6d01b";
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
