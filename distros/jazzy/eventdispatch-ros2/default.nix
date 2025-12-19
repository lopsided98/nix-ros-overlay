
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, eventdispatch-python, eventdispatch-ros2-interfaces, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-eventdispatch-ros2";
  version = "0.2.26-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/jazzy/eventdispatch_ros2/0.2.26-1.tar.gz";
    name = "0.2.26-1.tar.gz";
    sha256 = "f646a6f9637228b58fbaead78d9131cb32f37f6b9f94ca4fb80be293de73c326";
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
