
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-black, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, event-camera-codecs, event-camera-msgs, fibar-lib, image-transport, opencv, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-transport, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-event-image-reconstruction-fibar";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_image_reconstruction_fibar-release/archive/release/lyrical/event_image_reconstruction_fibar/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "6e65003e803db5d8c250bd8e5c8a7f4237264211ad4071bc56343a1c1fb7f7ed";
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
