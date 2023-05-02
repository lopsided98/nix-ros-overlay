
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, rcl-interfaces, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-demo-nodes-cpp";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/demo_nodes_cpp/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "3633c41c348d95e4e1415f10293a1d9e04cada27f1e87de12cdfa8c34c9066e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ example-interfaces launch-ros launch-xml rcl-interfaces rclcpp rclcpp-components rcutils rmw std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
