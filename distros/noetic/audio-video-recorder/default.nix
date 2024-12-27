
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, message-filters, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-audio-video-recorder";
  version = "2.2.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/audio_video_recorder/2.2.15-4.tar.gz";
    name = "2.2.15-4.tar.gz";
    sha256 = "d79e55ec00e36553449590990af29692e5cd4ac33ce5068f87e4c8ac1d917612";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer message-filters roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS package for recording image and audio synchronously";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
