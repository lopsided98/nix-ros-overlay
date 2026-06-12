
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, cv-bridge, opencv, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-video-to-image-msg-publisher";
  version = "0.9.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/video_to_image_msg_publisher-release/archive/release/lyrical/video_to_image_msg_publisher/0.9.5-2.tar.gz";
    name = "0.9.5-2.tar.gz";
    sha256 = "e78aa47a121976e0856dec11121ff2162eb648bb24c8de3ab2471dc298044ab7";
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
