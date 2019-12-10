
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-eloquent-compressed-image-transport";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/eloquent/compressed_image_transport/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "69abc7dd6d47bfbe21cd63b4dc033b0a0c4327785522164bd66c0bb11c9eb35c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
