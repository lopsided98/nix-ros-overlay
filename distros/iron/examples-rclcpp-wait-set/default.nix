
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-iron-examples-rclcpp-wait-set";
  version = "0.18.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/iron/examples_rclcpp_wait_set/0.18.0-2.tar.gz";
    name = "0.18.0-2.tar.gz";
    sha256 = "e982b20de90474412453e322279ca742d4ca7f59469f814e1d20c6de3d9aac08";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example of how to use the rclcpp::WaitSet directly.'';
    license = with lib.licenses; [ asl20 ];
  };
}
