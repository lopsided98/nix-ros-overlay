
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, eventdispatch-python, eventdispatch-ros2-interfaces, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-rolling-eventdispatch-ros2";
  version = "0.2.31-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/rolling/eventdispatch_ros2/0.2.31-1.tar.gz";
    name = "0.2.31-1.tar.gz";
    sha256 = "e899439ba03a6776f27d92f60bac17dc626505315e4e59d0c1a410ec6610ecad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python eventdispatch-python eventdispatch-ros2-interfaces ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS2 wrapper for python-eventdispatch";
    license = with lib.licenses; [ asl20 ];
  };
}
