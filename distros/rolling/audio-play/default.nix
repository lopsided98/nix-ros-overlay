
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, gst_all_1, launch-xml, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-audio-play";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/rolling/audio_play/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "a4090e7cc51a75435b08369a3c7e8dc5246c64a0123445d448b3b02d0b9d0ea4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost ];
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer launch-xml rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Outputs audio to a speaker from a source node.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
