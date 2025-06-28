
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, image-transport, zlib }:
buildRosPackage {
  pname = "ros-kilted-zstd-image-transport";
  version = "5.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/kilted/zstd_image_transport/5.0.2-2.tar.gz";
    name = "5.0.2-2.tar.gz";
    sha256 = "dde013bb217b9edbe3b119041de09867f6556dfa19f7864af19de9fcc079c812";
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
