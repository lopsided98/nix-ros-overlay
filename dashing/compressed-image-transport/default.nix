
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, cv-bridge, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-compressed-image-transport";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/dashing/compressed_image_transport/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "79ef003db68b668dda0427c98553c2e7fa791061f279b0b46682b5042ba04960";
  };

  buildType = "ament_cmake";
  buildInputs = [ image-transport cv-bridge ];
  propagatedBuildInputs = [ image-transport cv-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
