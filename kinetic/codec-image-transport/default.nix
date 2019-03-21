
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, image-transport, sensor-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-codec-image-transport";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/yoshito-n-students/codec_image_transport-release/archive/release/kinetic/codec_image_transport/0.0.1-0.tar.gz;
    sha256 = "62549411b9b43d514fce30f5faede59a192a4da1380cded086e3ef5d1e2e0e53";
  };

  propagatedBuildInputs = [ image-transport sensor-msgs roscpp pluginlib ];
  nativeBuildInputs = [ catkin pluginlib image-transport sensor-msgs roscpp ];

  meta = {
    description = ''The codec_image_transport package'';
    #license = lib.licenses.MIT;
  };
}
