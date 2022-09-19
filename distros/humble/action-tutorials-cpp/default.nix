
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-action-tutorials-cpp";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/action_tutorials_cpp/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "eb08d60baebd3f44a85e85f7ffc96ce502ad898c06db719a41e5ff1cb3e81fbc";
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
