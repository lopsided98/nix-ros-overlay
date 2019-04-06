
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, image-transport, sensor-msgs, catkin, ffmpeg, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-codec-image-transport";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/yoshito-n-students/codec_image_transport-release/archive/release/kinetic/codec_image_transport/0.0.3-0.tar.gz;
    sha256 = "7f61900f36d1a74800ed7c89d1be308d31aeac291fc8449563d0c895737b295b";
  };

  propagatedBuildInputs = [ pluginlib image-transport sensor-msgs roscpp ffmpeg ];
  nativeBuildInputs = [ catkin pluginlib image-transport sensor-msgs roscpp ffmpeg ];

  meta = {
    description = ''The codec_image_transport package'';
    #license = lib.licenses.MIT;
  };
}
