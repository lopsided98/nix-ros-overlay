
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, catkin, cv-bridge, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-compressed-depth-image-transport";
  version = "1.9.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_transport_plugins-release/archive/release/kinetic/compressed_depth_image_transport/1.9.5-0.tar.gz;
    sha256 = "a26d3b115242594feb41805e4ff27582307961b64a464f1f170c9e271a456794";
  };

  propagatedBuildInputs = [ image-transport cv-bridge dynamic-reconfigure ];
  nativeBuildInputs = [ image-transport catkin cv-bridge dynamic-reconfigure ];

  meta = {
    description = ''Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.'';
    #license = lib.licenses.BSD;
  };
}
