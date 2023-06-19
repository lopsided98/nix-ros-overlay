
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, rcl, rcl-interfaces, rclcpp, rclcpp-components, rcpputils, rcutils, rmw, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-demo-nodes-cpp";
  version = "0.30.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/demo_nodes_cpp/0.30.0-1.tar.gz";
    name = "0.30.0-1.tar.gz";
    sha256 = "233e7d989286934a103d11e64b52da6de614c289ae2454d42ef8891aca0fbde3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ example-interfaces launch-ros launch-xml rcl rcl-interfaces rclcpp rclcpp-components rcpputils rcutils rmw std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
