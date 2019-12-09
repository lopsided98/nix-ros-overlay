
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, example-interfaces, rcutils, launch, rclcpp-components, std-msgs, rmw-implementation-cmake, launch-testing, launch-ros, ament-lint-common, ament-cmake, launch-testing-ament-cmake, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-composition";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/composition/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "ea7814e6544b1acbabd03760d29e9d7e47a6868daa0715cddb694f360cc03030";
  };

  buildType = "ament_cmake";
  buildInputs = [ example-interfaces rcutils rclcpp-components std-msgs rclcpp ];
  checkInputs = [ launch-testing-ros launch rmw-implementation-cmake launch-testing ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ example-interfaces rcutils rclcpp-components std-msgs launch-ros rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples for composing multiple nodes in a single process.'';
    license = with lib.licenses; [ asl20 ];
  };
}
