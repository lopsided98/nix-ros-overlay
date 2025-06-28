
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-rolling-compressed-image-transport";
  version = "5.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/compressed_image_transport/5.0.3-1.tar.gz";
    name = "5.0.3-1.tar.gz";
    sha256 = "83dccc10c92124f419c049ff18eb1c70be4bc964f867fd2424086140e3ba29c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
