
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, gst_all_1, launch-xml, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-audio-play";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/humble/audio_play/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "1d8c8076496c36fd9e43fd16451075b9d6926731e2fddaee46bcd7c1d6f23c50";
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
