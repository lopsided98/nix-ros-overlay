
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action, rclcpp-components }:
buildRosPackage {
  pname = "ros-lyrical-action-tutorials-cpp";
  version = "0.37.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/action_tutorials_cpp/0.37.9-1.tar.gz";
    name = "0.37.9-1.tar.gz";
    sha256 = "a455623359d02f818bfaa347c4b4d08a46c8979a6f76c528a455f80a04555193";
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
