
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, cv-bridge, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-compressed-depth-image-transport";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/crystal/compressed_depth_image_transport/2.0.0-0.tar.gz;
    sha256 = "f4f1b34f97b7804c465ba8e3521c4040dad59873354b378db59b025aa5e54a1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ image-transport cv-bridge ];
  propagatedBuildInputs = [ image-transport cv-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
