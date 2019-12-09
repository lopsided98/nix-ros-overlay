
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, example-interfaces, rcutils, rclcpp-components, rmw-implementation-cmake, std-msgs, launch, launch-testing, launch-ros, ament-lint-common, ament-cmake, launch-testing-ament-cmake, rmw, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-demo-nodes-cpp";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/demo_nodes_cpp/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "85dccbfd4ea1ae763585ec384561ebaed38da2885b24d54f83ad1463b7884f32";
  };

  buildType = "ament_cmake";
  buildInputs = [ example-interfaces rcutils rclcpp-components rmw-implementation-cmake std-msgs rmw rclcpp ];
  checkInputs = [ launch-testing-ros launch launch-testing ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ example-interfaces rcutils rclcpp-components std-msgs launch-ros rmw rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
