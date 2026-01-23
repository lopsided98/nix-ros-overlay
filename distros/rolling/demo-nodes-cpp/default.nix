
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, rcl, rcl-interfaces, rclcpp, rclcpp-components, rcpputils, rcutils, rmw, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-demo-nodes-cpp";
  version = "0.37.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/demo_nodes_cpp/0.37.5-1.tar.gz";
    name = "0.37.5-1.tar.gz";
    sha256 = "979f278cca919a5b68ccc1f05c11e06b62b0ac683bafd23274b465731db68a4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ example-interfaces launch-ros launch-xml rcl rcl-interfaces rclcpp rclcpp-components rcpputils rcutils rmw std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
