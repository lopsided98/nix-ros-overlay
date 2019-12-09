
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, rcutils, launch, rmw-implementation-cmake, std-msgs, launch-testing, launch-ros, ament-lint-common, ament-cmake, rmw, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-demo-nodes-cpp";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/demo_nodes_cpp/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "5def106eb042cfb5259c31fac8c3a80da34a4949ea5f731fd4907f3606df812f";
  };

  buildType = "ament_cmake";
  buildInputs = [ example-interfaces rcutils rmw-implementation-cmake std-msgs rmw rclcpp ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ example-interfaces rcutils std-msgs launch-ros rmw rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
