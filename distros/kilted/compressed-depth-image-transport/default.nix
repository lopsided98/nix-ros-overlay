
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-kilted-compressed-depth-image-transport";
  version = "5.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/kilted/compressed_depth_image_transport/5.0.2-2.tar.gz";
    name = "5.0.2-2.tar.gz";
    sha256 = "beb63fea36b99e6fc45db0c59134030d104b6e624cb88d153543d1aff01aeda9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.";
    license = with lib.licenses; [ bsdOriginal mit ];
  };
}
