
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, image-transport, zlib }:
buildRosPackage {
  pname = "ros-rolling-zstd-image-transport";
  version = "6.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/zstd_image_transport/6.2.4-1.tar.gz";
    name = "6.2.4-1.tar.gz";
    sha256 = "fb3764e7bf1a175e529b8775b4963feffe4d1976f7b3c78ba268eefa1706afa9";
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
