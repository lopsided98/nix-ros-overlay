
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, libjpeg_turbo }:
buildRosPackage {
  pname = "ros-rolling-turbojpeg-compressed-image-transport";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turbojpeg_compressed_image_transport-release/archive/release/rolling/turbojpeg_compressed_image_transport/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "9a7b57d259cdc07818c669af5de471b764d7f3f2828b84f0669cd05ce3c0f065";
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
