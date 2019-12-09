
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, example-interfaces, rcutils, launch, rmw-implementation-cmake, std-msgs, launch-testing, launch-ros, ament-lint-common, ament-cmake, launch-testing-ament-cmake, rmw, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-demo-nodes-cpp";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/demo_nodes_cpp/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "537fbf25264d35b51c7a2f5b5d4526221ce7523dd7ce8d337b68d6e753f56a56";
  };

  buildType = "ament_cmake";
  buildInputs = [ example-interfaces rcutils rmw-implementation-cmake std-msgs rmw rclcpp ];
  checkInputs = [ launch-testing-ros launch launch-testing ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ example-interfaces rcutils std-msgs launch-ros rmw rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
