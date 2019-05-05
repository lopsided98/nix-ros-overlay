
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, catkin, cv-bridge, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-compressed-image-transport";
  version = "1.9.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_transport_plugins-release/archive/release/lunar/compressed_image_transport/1.9.5-0.tar.gz;
    sha256 = "c7bd9bebcf0fa8d306943a42b059bf92bb3d6fef9dea895fd8110a2b7c40947c";
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
