
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-rolling-compressed-depth-image-transport";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/compressed_depth_image_transport/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "38681c47a3185df05d28bc4f6002d2a6d227e198358f5f018701d6e4e3788532";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
