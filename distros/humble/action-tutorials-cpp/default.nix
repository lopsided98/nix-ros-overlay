
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-action-tutorials-cpp";
  version = "0.20.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/action_tutorials_cpp/0.20.8-1.tar.gz";
    name = "0.20.8-1.tar.gz";
    sha256 = "9607b90fdbcaf321568287d1c2090c9b28701de6c11130820667e72df9e048ae";
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
