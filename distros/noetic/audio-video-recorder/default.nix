
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, message-filters, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-audio-video-recorder";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/audio_video_recorder/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "e5d81483f8363b44f037d1bb399a315c5aab9a60e23a2c9815670c1ff1c67c43";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer message-filters roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for recording image and audio synchronously'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
