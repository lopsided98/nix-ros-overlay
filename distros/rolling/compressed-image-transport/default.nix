
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-rolling-compressed-image-transport";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/compressed_image_transport/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "16589b06f945a7b52596633b515aabc74fe6ea3b07664d06a2e2e4ae43b2b8bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
