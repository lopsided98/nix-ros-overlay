
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, rcl-interfaces, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, std-msgs }:
buildRosPackage {
  pname = "ros-iron-demo-nodes-cpp";
  version = "0.27.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/demo_nodes_cpp/0.27.2-1.tar.gz";
    name = "0.27.2-1.tar.gz";
    sha256 = "74095f26423034106cfc228bdb9bef5fc86a11bb41cc39e89722d974d3ef55f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ example-interfaces launch-ros launch-xml rcl-interfaces rclcpp rclcpp-components rcutils rmw std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
