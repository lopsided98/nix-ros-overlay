
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, example-interfaces, rcutils, launch, rclcpp-components, std-msgs, rmw-implementation-cmake, launch-testing, launch-ros, ament-lint-common, ament-cmake, launch-testing-ament-cmake, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-composition";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/composition/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "8a57963cb1120106efcdeff32fdd633767814ce86997bd9896fac762efd4b340";
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
