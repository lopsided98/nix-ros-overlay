
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_festival, action-msgs, ament-cmake, ament-cmake-python, ament-index-python, boost, gst_all_1, launch-xml, python3Packages, rclpy, sound-play-msgs }:
buildRosPackage {
  pname = "ros-rolling-sound-play";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/rolling/sound_play/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "4a102379e1f60885b5f39be8fed26e4a1d388d946f45221d692e377e09a14bbc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python boost python3Packages.setuptools ];
  propagatedBuildInputs = [ _unresolved_festival action-msgs ament-index-python gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer launch-xml python3Packages.pygobject3 rclpy sound-play-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python3Packages.setuptools ];

  meta = {
    description = "sound_play provides a ROS node that translates commands on a ROS topic (<tt>robotsound</tt>) into sounds. The node supports built-in sounds, playing OGG/WAV files, and doing speech synthesis via festival. C++ and Python bindings allow this node to be used without understanding the details of the message format, allowing faster development and resilience to message format changes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
