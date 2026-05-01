
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, rcl, rcl-interfaces, rclcpp, rclcpp-components, rcpputils, rcutils, rmw }:
buildRosPackage {
  pname = "ros-lyrical-demo-nodes-cpp";
  version = "0.37.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/demo_nodes_cpp/0.37.8-3.tar.gz";
    name = "0.37.8-3.tar.gz";
    sha256 = "27555218c394237acb2bd7e5dbc857145001e82453e2924fd83b2e1a51d30202";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ example-interfaces launch-ros launch-xml rcl rcl-interfaces rclcpp rclcpp-components rcpputils rcutils rmw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
