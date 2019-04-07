
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, catkin, cv-bridge, message-runtime, imagezero-ros }:
buildRosPackage {
  pname = "ros-melodic-imagezero-image-transport";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/melodic/imagezero_image_transport/0.2.4-0.tar.gz;
    sha256 = "4c9fbc7c319b30bb24174343cc8e901e9908725890f11cdca4866fbd4f4550ed";
  };

  buildInputs = [ message-runtime image-transport sensor-msgs cv-bridge imagezero-ros ];
  propagatedBuildInputs = [ message-runtime image-transport sensor-msgs cv-bridge imagezero-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A plugin to image_transport for transparently sending images encoded with ImageZero.'';
    #license = lib.licenses.BSD;
  };
}
