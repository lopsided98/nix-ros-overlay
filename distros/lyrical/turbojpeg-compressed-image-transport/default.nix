
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, libjpeg_turbo }:
buildRosPackage {
  pname = "ros-lyrical-turbojpeg-compressed-image-transport";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turbojpeg_compressed_image_transport-release/archive/release/lyrical/turbojpeg_compressed_image_transport/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "13c49eda9ba416a0a88506bc8eadb4a0d1e0d2435f04601b68f74c5399c08e47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport libjpeg_turbo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG by turbojpeg.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
