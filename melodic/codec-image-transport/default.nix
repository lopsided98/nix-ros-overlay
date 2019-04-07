
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, image-transport, sensor-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-codec-image-transport";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/yoshito-n-students/codec_image_transport-release/archive/release/melodic/codec_image_transport/0.0.2-0.tar.gz;
    sha256 = "c3b9715488a681cdf76d351b888be38da5e5934d11342ce2f9e2ea9b09eafc34";
  };

  buildInputs = [ image-transport sensor-msgs roscpp pluginlib ];
  propagatedBuildInputs = [ image-transport sensor-msgs roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The codec_image_transport package'';
    #license = lib.licenses.MIT;
  };
}
