
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport }:
buildRosPackage {
  pname = "ros-noetic-compressed-depth-image-transport";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/noetic/compressed_depth_image_transport/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "10dcb5522b1bfb2a308e76a676c64dd46622fcc1e223d86bbc8faf0a5c7953ac";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
