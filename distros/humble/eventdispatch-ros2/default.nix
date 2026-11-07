
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, eventdispatch-python, eventdispatch-ros2-interfaces, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-humble-eventdispatch-ros2";
  version = "0.2.32-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/humble/eventdispatch_ros2/0.2.32-1.tar.gz";
    name = "0.2.32-1.tar.gz";
    sha256 = "f90916ba8324e321a6bdeb66f7b15d2e48ca8eef40efa75b02249d8643aea8d4";
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
