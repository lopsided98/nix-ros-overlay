
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, launch-ros, rmw-implementation-cmake, ament-lint-common, launch-testing, rcutils, launch, launch-testing-ament-cmake, example-interfaces, rclcpp, std-msgs, ament-lint-auto, launch-testing-ros, rmw }:
buildRosPackage rec {
  pname = "ros-dashing-demo-nodes-cpp";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/demo_nodes_cpp/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "eb4b2b2d78e0aae880bbc3ad2d1c27f0760d7a21ef18a4a09be255ac97cccda9";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw-implementation-cmake example-interfaces rclcpp std-msgs rcutils rmw ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing launch launch-testing-ament-cmake ament-lint-auto launch-testing-ros ];
  propagatedBuildInputs = [ launch-ros example-interfaces rclcpp std-msgs rcutils rmw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
