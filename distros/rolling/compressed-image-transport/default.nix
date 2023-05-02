
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-rolling-compressed-image-transport";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/compressed_image_transport/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "2a7e7ec58602d0c545c5a5cf845a8edc177fa7002dcc9098400d6bc082f4bf65";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
