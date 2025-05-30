
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-ros, message-filters, rclcpp, tf2, tf2-geometry-msgs, tf2-ros, turtlesim-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtle-tf2-cpp";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/rolling/turtle_tf2_cpp/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "870dd8c1a90fd2793f072a5b4ac0f0a1ecfed086bfc2b3654dfdb64edd5e5e3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros message-filters rclcpp tf2 tf2-geometry-msgs tf2-ros turtlesim-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "turtle_tf2_cpp demonstrates how to write a ROS2 C++ tf2 broadcaster and listener with the turtlesim. The turtle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.";
    license = with lib.licenses; [ asl20 ];
  };
}
