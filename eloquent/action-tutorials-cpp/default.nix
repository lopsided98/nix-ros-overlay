
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rclcpp-components }:
buildRosPackage {
  pname = "ros-eloquent-action-tutorials-cpp";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/action_tutorials_cpp/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "b89e23b0c5fb860275c26600d91f5a3ce5bb2b833083374b2092a7c7009081e4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclcpp rclcpp-action rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ action tutorial cpp code'';
    license = with lib.licenses; [ asl20 ];
  };
}
