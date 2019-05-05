
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, catkin, cv-bridge, message-runtime, imagezero-ros }:
buildRosPackage {
  pname = "ros-lunar-imagezero-image-transport";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/lunar/imagezero_image_transport/0.2.4-0.tar.gz;
    sha256 = "97a6c6e703cbf0a22de2bd84dcab37eeecf8ec2ba661af09643f4ff682b2d816";
  };

  buildInputs = [ image-transport sensor-msgs cv-bridge message-runtime imagezero-ros ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge message-runtime imagezero-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A plugin to image_transport for transparently sending images encoded with ImageZero.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
