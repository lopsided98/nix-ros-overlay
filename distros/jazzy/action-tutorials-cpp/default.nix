
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-action-tutorials-cpp";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/action_tutorials_cpp/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "6a6585a338bc433cdd83a0f42f17f55d7f8fe1fb3ea76704b35af06f0593c1bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclcpp rclcpp-action rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ action tutorial cpp code";
    license = with lib.licenses; [ asl20 ];
  };
}
