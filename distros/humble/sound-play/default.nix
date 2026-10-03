
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-python, ament-index-python, boost, festival-stub, gst_all_1, launch-xml, python3Packages, rclcpp, rclpy, sound-play-msgs }:
buildRosPackage {
  pname = "ros-humble-sound-play";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/audio_common-release/archive/release/humble/sound_play/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "cf5bbfe96d3bb77c81b5d60118b581e8ebc7692815ab2fcbc9f31f959210c770";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python boost python3Packages.setuptools ];
  checkInputs = [ ament-cmake-gtest rclcpp sound-play-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-python festival-stub gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer launch-xml python3Packages.pygobject3 rclcpp rclpy sound-play-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python python3Packages.setuptools ];

  meta = {
    description = "sound_play provides a ROS node that translates commands on a ROS topic (<tt>robotsound</tt>) into sounds. The node supports built-in sounds, playing OGG/WAV files, and doing speech synthesis via festival. C++ and Python bindings allow this node to be used without understanding the details of the message format, allowing faster development and resilience to message format changes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
