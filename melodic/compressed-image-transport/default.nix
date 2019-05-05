
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, catkin, cv-bridge, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-compressed-image-transport";
  version = "1.9.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_transport_plugins-release/archive/release/melodic/compressed_image_transport/1.9.5-0.tar.gz;
    sha256 = "b3f07ada5ec4f1e8335c95ded17dc75ba399b98d21c1a043fde96c3f974ba64d";
  };

  buildInputs = [ image-transport cv-bridge dynamic-reconfigure ];
  propagatedBuildInputs = [ image-transport cv-bridge dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
