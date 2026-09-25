
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, diagnostic-updater, gst_all_1, launch-xml, pkg-config, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-audio-capture";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/humble/audio_capture/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "81ca7b8f3d269c018671e57f43122e9f20e168fee1afb34949c97b8f1a8f5553";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost pkg-config ];
  propagatedBuildInputs = [ audio-common-msgs diagnostic-updater gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer launch-xml rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Transports audio from a source to a destination. Audio sources can come
      from a microphone or file. The destination can play the audio or save it
      to an mp3 file.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
