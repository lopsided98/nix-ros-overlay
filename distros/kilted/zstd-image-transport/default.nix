
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, image-transport, zlib }:
buildRosPackage {
  pname = "ros-kilted-zstd-image-transport";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/kilted/zstd_image_transport/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "d6071e6e93d6999afd6b9e9dc94a748f989e3e5676d74fc16d0ca74c323e7958";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ image-transport zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "zstd_image_transport provides a plugin to image_transport for transparently sending images
    encoded as zstd blobs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
