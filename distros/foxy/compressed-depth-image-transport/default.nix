
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-foxy-compressed-depth-image-transport";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/foxy/compressed_depth_image_transport/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "e1bf6334b75ef1ecbfdd8e386ac7b2b9e48ba135ce101c8fc4a0c66d09e4acb1";
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
