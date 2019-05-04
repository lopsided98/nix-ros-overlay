
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, catkin, cv-bridge, message-runtime, imagezero-ros }:
buildRosPackage {
  pname = "ros-kinetic-imagezero-image-transport";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/kinetic/imagezero_image_transport/0.2.4-0.tar.gz;
    sha256 = "9ed895b2065c4d0a608fb421cdd510e5b6d75f657ce93f6f08858271ce69a66e";
  };

  buildInputs = [ image-transport sensor-msgs cv-bridge message-runtime imagezero-ros ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge message-runtime imagezero-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A plugin to image_transport for transparently sending images encoded with ImageZero.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
