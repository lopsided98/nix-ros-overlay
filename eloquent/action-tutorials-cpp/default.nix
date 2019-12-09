
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-action, rclcpp-components, ament-lint-common, ament-cmake, action-tutorials-interfaces, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-action-tutorials-cpp";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/action_tutorials_cpp/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "b89e23b0c5fb860275c26600d91f5a3ce5bb2b833083374b2092a7c7009081e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action rclcpp action-tutorials-interfaces rclcpp-components ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-action rclcpp action-tutorials-interfaces rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ action tutorial cpp code'';
    license = with lib.licenses; [ asl20 ];
  };
}
