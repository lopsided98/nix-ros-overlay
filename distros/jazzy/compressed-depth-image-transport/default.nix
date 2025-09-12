
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-jazzy-compressed-depth-image-transport";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/jazzy/compressed_depth_image_transport/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "516d96ecaa8245c124aeb484fa66419f436840bd38e1352e1bbe527689238355";
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
