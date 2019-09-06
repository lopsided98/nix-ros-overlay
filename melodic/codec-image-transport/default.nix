
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, image-transport, sensor-msgs, catkin, ffmpeg, roscpp }:
buildRosPackage {
  pname = "ros-melodic-codec-image-transport";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/codec_image_transport-release/archive/release/melodic/codec_image_transport/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "13bb8181da621d6d7bff7f97900b2bc744a93a4e2c8f5e92030a3e50da2a578c";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib image-transport sensor-msgs ffmpeg roscpp ];
  propagatedBuildInputs = [ pluginlib image-transport sensor-msgs ffmpeg roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The codec_image_transport package'';
    license = with lib.licenses; [ mit ];
  };
}
