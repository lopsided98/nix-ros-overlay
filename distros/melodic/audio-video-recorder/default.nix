
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, message-filters, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-audio-video-recorder";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/audio_video_recorder/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "40d2a21e729bf8d97a9126d03e1120ffaf62f2053d48a9eaa4390f193c243ecf";
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
