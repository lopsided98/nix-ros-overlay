
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-black, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, event-camera-codecs, event-camera-msgs, fibar-lib, image-transport, opencv, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-transport, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-event-image-reconstruction-fibar";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_image_reconstruction_fibar-release/archive/release/humble/event_image_reconstruction_fibar/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "7cfac9b5795a98fbcb31b290c361ee648fd0e9b1e3db1c89e514a05530989638";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];
  checkInputs = [ ament-cmake-black ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge event-camera-codecs event-camera-msgs fibar-lib image-transport opencv opencv.cxxdev rclcpp rclcpp-components rosbag2-cpp rosbag2-transport sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = "ROS package for synchronized image reconstruction from event frames";
    license = with lib.licenses; [ asl20 ];
  };
}
