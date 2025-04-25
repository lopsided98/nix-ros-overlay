
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, image-transport, rclcpp, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-fkie-message-filters";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fkie_message_filters-release/archive/release/humble/fkie_message_filters/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "cff15258ff2af067320e31ed1a12f4a99fa409313daec451cc7e8e206dc3c20b";
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
