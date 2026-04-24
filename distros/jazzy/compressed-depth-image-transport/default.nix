
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-jazzy-compressed-depth-image-transport";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/jazzy/compressed_depth_image_transport/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "996f2084769522a204460ca01454822e3a710e4e8169a7cb06f79056ad04e067";
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
