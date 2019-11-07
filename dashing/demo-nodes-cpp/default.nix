
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, launch-ros, rmw-implementation-cmake, ament-lint-common, launch-testing, rcutils, launch, launch-testing-ament-cmake, example-interfaces, rclcpp, std-msgs, ament-lint-auto, launch-testing-ros, rmw }:
buildRosPackage {
  pname = "ros-dashing-demo-nodes-cpp";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/demo_nodes_cpp/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "537fbf25264d35b51c7a2f5b5d4526221ce7523dd7ce8d337b68d6e753f56a56";
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
