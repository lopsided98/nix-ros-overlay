
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-cpp";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_cpp/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "8e97595f960ecdce8bced533c16c846321cbbe5f49798270c7f16b01c6c1e634";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclcpp rclcpp-action rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ action tutorial cpp code'';
    license = with lib.licenses; [ asl20 ];
  };
}
