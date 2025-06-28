
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-kilted-compressed-image-transport";
  version = "5.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/kilted/compressed_image_transport/5.0.2-2.tar.gz";
    name = "5.0.2-2.tar.gz";
    sha256 = "377a95bb96d6ffdabd92e1601ff99b91f913ba61a315e19cf02b812992fa567e";
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
