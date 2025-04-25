
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, image-transport, rclcpp, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-fkie-message-filters";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fkie_message_filters-release/archive/release/rolling/fkie_message_filters/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "c66f884da122324e314d6bb252974b921b1a4eb553f6974e20820ff7af0e465a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros std-msgs ];
  propagatedBuildInputs = [ image-transport rclcpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Improved ROS message filters";
    license = with lib.licenses; [ asl20 ];
  };
}
