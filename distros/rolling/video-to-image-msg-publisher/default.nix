
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, cv-bridge, opencv, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-video-to-image-msg-publisher";
  version = "0.9.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/video_to_image_msg_publisher-release/archive/release/rolling/video_to_image_msg_publisher/0.9.5-2.tar.gz";
    name = "0.9.5-2.tar.gz";
    sha256 = "df31ec925c8612b6c609e286e8b0d1530d8baec5f3af12747054cb3e06c04641";
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
