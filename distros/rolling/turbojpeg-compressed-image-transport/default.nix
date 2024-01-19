
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, libjpeg_turbo }:
buildRosPackage {
  pname = "ros-rolling-turbojpeg-compressed-image-transport";
  version = "0.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turbojpeg_compressed_image_transport-release/archive/release/rolling/turbojpeg_compressed_image_transport/0.2.1-3.tar.gz";
    name = "0.2.1-3.tar.gz";
    sha256 = "5afc9073dda0386f397f14b09ba5063bb65c57e8a2a7930756709cb599f8f982";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport libjpeg_turbo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG by turbojpeg.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
