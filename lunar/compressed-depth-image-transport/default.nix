
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, catkin, cv-bridge, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-compressed-depth-image-transport";
  version = "1.9.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_transport_plugins-release/archive/release/lunar/compressed_depth_image_transport/1.9.5-0.tar.gz;
    sha256 = "181a4b08caa3dc050c32b7d54e39756653c4b893a0bd8019735e598866b74c66";
  };

  buildInputs = [ image-transport cv-bridge dynamic-reconfigure ];
  propagatedBuildInputs = [ image-transport cv-bridge dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.'';
    #license = lib.licenses.BSD;
  };
}
