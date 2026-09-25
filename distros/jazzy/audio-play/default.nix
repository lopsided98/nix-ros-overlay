
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, gst_all_1, launch-xml, pkg-config, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-audio-play";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/jazzy/audio_play/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "cf282acaafd2d70322fc25e2b5e43cb1880c5ab07b001e0e34521b6dc6af8d1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost pkg-config ];
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer launch-xml rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Outputs audio to a speaker from a source node.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
