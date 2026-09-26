
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, diagnostic-updater, gst_all_1, launch-xml, pkg-config, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-audio-capture";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/jazzy/audio_capture/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "839553a243070f35c24dee48a7481eb88bb6fa1264e4956e7e8c65f24d0ac796";
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
