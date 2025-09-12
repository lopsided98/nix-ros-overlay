
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-humble-compressed-image-transport";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/humble/compressed_image_transport/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "e25838caaf802588c7e9ef9c69bbda85bc8745390fd22952cd96f35d2b8850f2";
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
