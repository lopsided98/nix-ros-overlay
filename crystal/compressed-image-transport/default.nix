
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-crystal-compressed-image-transport";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/crystal/compressed_image_transport/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "aa631582dbcb9af820c40dd48c116d705b020b0f9fe5d49e660ba3bb078d87de";
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
