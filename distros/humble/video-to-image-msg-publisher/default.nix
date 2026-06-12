
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, cv-bridge, opencv, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-video-to-image-msg-publisher";
  version = "0.9.5-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/video_to_image_msg_publisher-release/archive/release/humble/video_to_image_msg_publisher/0.9.5-8.tar.gz";
    name = "0.9.5-8.tar.gz";
    sha256 = "0e0cff67387694919b659b735db71818581dfb5b123935d3b3fc1fafd5b567e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge opencv opencv.cxxdev rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = "A simple node that publishes sensor_msgs/Image messages from a specified video file";
    license = with lib.licenses; [ gpl2 ];
  };
}
