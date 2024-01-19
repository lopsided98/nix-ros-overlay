
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ffmpeg, image-transport, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-codec-image-transport";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/codec_image_transport-release/archive/release/noetic/codec_image_transport/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "23b6eb7c711c21a9d58cbfb8b6e10d19b47429e40bd6035a405f3eaa05ae448b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ffmpeg image-transport pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The codec_image_transport package'';
    license = with lib.licenses; [ mit ];
  };
}
