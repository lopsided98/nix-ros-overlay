
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, image-transport, zlib }:
buildRosPackage {
  pname = "ros-kilted-zstd-image-transport";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/kilted/zstd_image_transport/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "2e84fb8e8203ff09427637be7829e6cfa3e5d31fa060efe388df063dbfa67683";
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
