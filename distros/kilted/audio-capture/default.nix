
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, diagnostic-updater, gst_all_1, launch-xml, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-audio-capture";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/kilted/audio_capture/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "2cd217b7c9fdd37827d3b44630f0db1e5ab8ade86182c10aa720bd1be91526af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost ];
  propagatedBuildInputs = [ audio-common-msgs diagnostic-updater gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer launch-xml rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Transports audio from a source to a destination. Audio sources can come
      from a microphone or file. The destination can play the audio or save it
      to an mp3 file.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
