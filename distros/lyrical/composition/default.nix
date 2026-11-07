
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rcutils, rmw-implementation-cmake }:
buildRosPackage {
  pname = "ros-lyrical-composition";
  version = "0.37.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/composition/0.37.10-1.tar.gz";
    name = "0.37.10-1.tar.gz";
    sha256 = "76d9b7a070a99cf43069c547bbf2773e782e4f3ad2fe620585f011425cd6d8ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ example-interfaces launch-ros rclcpp rclcpp-components rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples for composing multiple nodes in a single process.";
    license = with lib.licenses; [ asl20 ];
  };
}
