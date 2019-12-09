
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ffmpeg, pluginlib, catkin, image-transport, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-codec-image-transport";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/codec_image_transport-release/archive/release/kinetic/codec_image_transport/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "7f61900f36d1a74800ed7c89d1be308d31aeac291fc8449563d0c895737b295b";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs ffmpeg pluginlib image-transport roscpp ];
  propagatedBuildInputs = [ sensor-msgs ffmpeg pluginlib image-transport roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The codec_image_transport package'';
    license = with lib.licenses; [ mit ];
  };
}
