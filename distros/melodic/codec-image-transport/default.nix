
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ffmpeg, image-transport, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-codec-image-transport";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/codec_image_transport-release/archive/release/melodic/codec_image_transport/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "13bb8181da621d6d7bff7f97900b2bc744a93a4e2c8f5e92030a3e50da2a578c";
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
