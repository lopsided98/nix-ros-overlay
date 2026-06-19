
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, gst_all_1, launch-xml, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-audio-play";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/jazzy/audio_play/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "4412b12a36ded3f07575bbd5cc1a165521c1bc27aac107a6c480220e168b45e1";
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
