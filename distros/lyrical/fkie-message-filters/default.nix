
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, image-transport, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-fkie-message-filters";
  version = "3.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fkie_message_filters-release/archive/release/lyrical/fkie_message_filters/3.3.0-3.tar.gz";
    name = "3.3.0-3.tar.gz";
    sha256 = "5d67cc6cb76cbc11bd03acebeac0224586341e543c7e58c7ac04ab947dd8e0aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros rclcpp-lifecycle std-msgs ];
  propagatedBuildInputs = [ image-transport rclcpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Improved ROS message filters";
    license = with lib.licenses; [ asl20 ];
  };
}
