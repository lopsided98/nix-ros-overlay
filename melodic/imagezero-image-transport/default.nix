
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, imagezero-ros, catkin, image-transport, cv-bridge, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-imagezero-image-transport";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/melodic/imagezero_image_transport/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "4c9fbc7c319b30bb24174343cc8e901e9908725890f11cdca4866fbd4f4550ed";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs imagezero-ros image-transport cv-bridge message-runtime ];
  propagatedBuildInputs = [ sensor-msgs imagezero-ros image-transport cv-bridge message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A plugin to image_transport for transparently sending images encoded with ImageZero.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
