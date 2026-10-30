
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, gst_all_1, jsk-ros1-ros2-compat, message-filters, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-audio-video-recorder";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/lyrical/audio_video_recorder/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "6999a03242e94ad7dcc260af980632c26f6a252858aa35884c286e498ed6efc1";
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
