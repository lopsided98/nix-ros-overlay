
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, libjpeg_turbo }:
buildRosPackage {
  pname = "ros-kilted-turbojpeg-compressed-image-transport";
  version = "0.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turbojpeg_compressed_image_transport-release/archive/release/kilted/turbojpeg_compressed_image_transport/0.2.1-5.tar.gz";
    name = "0.2.1-5.tar.gz";
    sha256 = "e179a714a0adef0c39245a9514517ab0757ab4af5ee9262ede88d57089410be7";
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
