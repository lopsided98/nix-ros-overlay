
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-jazzy-compressed-image-transport";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/jazzy/compressed_image_transport/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "526df62f674964aadabf7d2e91e908b16ee5e40f5205a8a4899e60399a202329";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
