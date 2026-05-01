
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-ros, message-filters, rclcpp, tf2, tf2-geometry-msgs, tf2-ros, turtlesim-msgs }:
buildRosPackage {
  pname = "ros-lyrical-turtle-tf2-cpp";
  version = "0.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/lyrical/turtle_tf2_cpp/0.7.0-3.tar.gz";
    name = "0.7.0-3.tar.gz";
    sha256 = "c755e06c9df18a968c50ae5d768d88cae37e30abcc9be26b3daae6fcd4b2a497";
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
