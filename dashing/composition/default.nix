
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, rmw-implementation-cmake, ament-lint-common, launch-ros, ament-cmake, launch-testing, rcutils, launch, launch-testing-ament-cmake, example-interfaces, rclcpp, launch-testing-ros, std-msgs, ament-lint-auto, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-composition";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/composition/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "8a57963cb1120106efcdeff32fdd633767814ce86997bd9896fac762efd4b340";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils example-interfaces rclcpp std-msgs rclcpp-components ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch launch-testing-ament-cmake ament-lint-auto launch-testing-ros ];
  propagatedBuildInputs = [ launch-ros rcutils example-interfaces rclcpp std-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples for composing multiple nodes in a single process.'';
    license = with lib.licenses; [ asl20 ];
  };
}
