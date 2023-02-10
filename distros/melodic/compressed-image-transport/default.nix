
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport, libjpeg_turbo }:
buildRosPackage {
  pname = "ros-melodic-compressed-image-transport";
  version = "1.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/melodic/compressed_image_transport/1.9.6-1.tar.gz";
    name = "1.9.6-1.tar.gz";
    sha256 = "fe3ff17c99e2a26500d70767d69fe555da00b8cd03e3800624c0ad1137d49284";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport libjpeg_turbo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
