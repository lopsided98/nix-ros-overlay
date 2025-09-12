
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-kilted-compressed-depth-image-transport";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/kilted/compressed_depth_image_transport/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "e2770fca37cc62d3f61339574c2233284cf6e689214194535aba37167a87da40";
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
