
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-cpp";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_cpp/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "db53e3fc46184980d5b10652d081d68ddd0b59cb21d265e806bed06b0b232184";
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
