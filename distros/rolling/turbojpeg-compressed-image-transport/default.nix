
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, libjpeg_turbo }:
buildRosPackage {
  pname = "ros-rolling-turbojpeg-compressed-image-transport";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turbojpeg_compressed_image_transport-release/archive/release/rolling/turbojpeg_compressed_image_transport/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "76910dd5a5243046ff913c54500d4e180062a318e4361952c4e7fdc8570d1379";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport libjpeg_turbo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG by turbojpeg.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
