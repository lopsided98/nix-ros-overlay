
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-cpp";
  version = "0.37.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_cpp/0.37.1-1.tar.gz";
    name = "0.37.1-1.tar.gz";
    sha256 = "0a7368904482278da13e92b166f2db2765959dc3d9e7363f5245208b09ecff54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-action rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ action tutorial cpp code";
    license = with lib.licenses; [ asl20 ];
  };
}
