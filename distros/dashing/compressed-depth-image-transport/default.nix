
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-dashing-compressed-depth-image-transport";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/dashing/compressed_depth_image_transport/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "57f39c573f31d88c9eecf3509e7d20b628ae109d8b5d06dd17f6da08862e271c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
