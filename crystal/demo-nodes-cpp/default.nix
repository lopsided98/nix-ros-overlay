
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, launch-ros, rmw-implementation-cmake, ament-lint-common, launch-testing, launch, example-interfaces, rclcpp, std-msgs, ament-lint-auto, rcutils, rmw }:
buildRosPackage {
  pname = "ros-crystal-demo-nodes-cpp";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/crystal/demo_nodes_cpp/0.6.2-0.tar.gz;
    sha256 = "5def106eb042cfb5259c31fac8c3a80da34a4949ea5f731fd4907f3606df812f";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw-implementation-cmake example-interfaces rclcpp std-msgs rcutils rmw ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing launch ament-lint-auto ];
  propagatedBuildInputs = [ launch-ros example-interfaces rclcpp std-msgs rcutils rmw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
