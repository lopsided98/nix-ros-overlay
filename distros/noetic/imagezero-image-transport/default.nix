
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, imagezero-ros, message-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-imagezero-image-transport";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/noetic/imagezero_image_transport/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "cb5d9bc2228f6cf412da2aa371a0b5bf02c4f9b0ecc4ba4bb69f7a8e644a820a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-transport imagezero-ros message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A plugin to image_transport for transparently sending images encoded with ImageZero.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
