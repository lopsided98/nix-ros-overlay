
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, launch, launch-testing-ament-cmake, rclcpp, std-msgs, rmw-fastrtps-cpp, ament-lint-auto, launch-testing-ros }:
buildRosPackage rec {
  pname = "ros-dashing-demo-nodes-cpp-native";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/demo_nodes_cpp_native/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "49fa73cdfddb59ac03fc0dd9360a57df5a4026a6bd4769cfbf5c5a4610013d08";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rmw-fastrtps-cpp rclcpp ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing launch launch-testing-ament-cmake ament-lint-auto launch-testing-ros ];
  propagatedBuildInputs = [ std-msgs rmw-fastrtps-cpp rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ nodes which access the native handles of the rmw implemenation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
