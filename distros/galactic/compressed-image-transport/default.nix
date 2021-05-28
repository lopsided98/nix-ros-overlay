
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-galactic-compressed-image-transport";
  version = "2.3.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/galactic/compressed_image_transport/2.3.0-5.tar.gz";
    name = "2.3.0-5.tar.gz";
    sha256 = "0a728a4f31448127f9ec7a4faa119f7676d9ffc2b287af9253ca07db298eaa27";
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
