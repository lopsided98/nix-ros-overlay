
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, rmw-implementation-cmake, ament-lint-common, launch-ros, ament-cmake, launch-testing, rcutils, launch, launch-testing-ament-cmake, example-interfaces, rclcpp, launch-testing-ros, std-msgs, ament-lint-auto, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-dashing-composition";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/composition/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "0219ae0aa14de453f99a41d5d92b752f96606d7234ee638a54d27d5b52510e37";
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
