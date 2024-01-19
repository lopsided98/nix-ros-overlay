
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport }:
buildRosPackage {
  pname = "ros-noetic-compressed-image-transport";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_transport_plugins-release/archive/release/noetic/compressed_image_transport/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "e6e3ada1e7da3d37a2b3d73c9bad5c9c6acc1535ba0f24916f8de15fad7d85d1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
