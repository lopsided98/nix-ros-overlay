
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, gst_all_1, catkin, pythonPackages, roscpp, message-generation, actionlib, message-runtime, rospy, diagnostic-msgs, roslib, audio-common-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sound-play";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/sound_play/0.3.3-0.tar.gz;
    sha256 = "182a0f446970c2e323961eae582b99115c65d0254639fafe1dd4c79304fe1278";
  };

  buildInputs = [ actionlib-msgs roslib message-generation actionlib diagnostic-msgs roscpp audio-common-msgs ];
  propagatedBuildInputs = [ actionlib-msgs gst_all_1.gst-plugins-ugly gst_all_1.gstreamer roslib pythonPackages.pygobject3 message-runtime rospy diagnostic-msgs gst_all_1.gst-plugins-base roscpp audio-common-msgs gst_all_1.gst-plugins-good ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''sound_play provides a ROS node that translates commands on a ROS topic (<tt>robotsound</tt>) into sounds. The node supports built-in sounds, playing OGG/WAV files, and doing speech synthesis via festival. C++ and Python bindings allow this node to be used without understanding the details of the message format, allowing faster development and resilience to message format changes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
