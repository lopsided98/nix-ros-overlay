
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, gst_all_1, jsk-ros1-ros2-compat, message-filters, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-audio-video-recorder";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/audio_video_recorder/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "6280baeefd183aabda9871121320df28136b6f62883da3a5182b807cba0f852d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ audio-common-msgs boost gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer jsk-ros1-ros2-compat message-filters rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS package for recording image and audio synchronously";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
