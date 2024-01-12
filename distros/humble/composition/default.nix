
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-components, rcutils, rmw-implementation-cmake, std-msgs }:
buildRosPackage {
  pname = "ros-humble-composition";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/composition/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "935755d4a4bcbbd9e452d453301bef6778f1ceebb65008a18378573f550c6453";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ example-interfaces launch-ros rclcpp rclcpp-components rcutils std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples for composing multiple nodes in a single process.'';
    license = with lib.licenses; [ asl20 ];
  };
}
