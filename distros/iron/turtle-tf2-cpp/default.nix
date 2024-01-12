
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-ros, message-filters, rclcpp, tf2, tf2-geometry-msgs, tf2-ros, turtlesim }:
buildRosPackage {
  pname = "ros-iron-turtle-tf2-cpp";
  version = "0.3.6-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/iron/turtle_tf2_cpp/0.3.6-4.tar.gz";
    name = "0.3.6-4.tar.gz";
    sha256 = "97508c59ad1861d953d88c5d17b6001c58e7c23694ef6ef57219b8cf6ee1b7c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros message-filters rclcpp tf2 tf2-geometry-msgs tf2-ros turtlesim ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''turtle_tf2_cpp demonstrates how to write a ROS2 C++ tf2 broadcaster and listener with the turtlesim. The turtle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
